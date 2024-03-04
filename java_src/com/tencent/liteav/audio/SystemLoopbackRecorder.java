package com.tencent.liteav.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioPlaybackCaptureConfiguration;
import android.media.AudioRecord;
import android.media.projection.MediaProjection;
import android.os.Process;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
public class SystemLoopbackRecorder {
    private static final String TAG = "SystemLoopbackRecorder";

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f30748a = 0;
    private static final Object mLock = new Object();
    private static final List<SystemLoopbackRecorder> sListeners = new LinkedList();
    private volatile long mNativeSystemLoopbackRecorder;

    @CalledByNative
    public SystemLoopbackRecorder(long j10) {
        this.mNativeSystemLoopbackRecorder = j10;
    }

    private static native void nativeSetMediaProjectionSession(long j10, MediaProjection mediaProjection);

    public static void notifyMediaProjectionState(MediaProjection mediaProjection) {
        StringBuilder sb2 = new StringBuilder("Received MediaProjection state ");
        sb2.append(mediaProjection != null);
        Log.i(TAG, sb2.toString(), new Object[0]);
        synchronized (mLock) {
            for (SystemLoopbackRecorder systemLoopbackRecorder : sListeners) {
                systemLoopbackRecorder.setMediaProjectionSession(mediaProjection);
            }
        }
    }

    @CalledByNative
    public void registerMediaProjectionListener() {
        synchronized (mLock) {
            sListeners.add(this);
        }
    }

    public void setMediaProjectionSession(MediaProjection mediaProjection) {
        if (this.mNativeSystemLoopbackRecorder != 0) {
            nativeSetMediaProjectionSession(this.mNativeSystemLoopbackRecorder, mediaProjection);
        }
    }

    @CalledByNative
    public void unregisterMediaProjectionListener() {
        synchronized (mLock) {
            sListeners.remove(this);
        }
    }

    /* loaded from: classes4.dex */
    static class Recorder {

        /* renamed from: a  reason: collision with root package name */
        private AudioRecord f30749a;

        /* renamed from: b  reason: collision with root package name */
        private AudioManager f30750b;

        @CalledByNative("Recorder")
        public Recorder() {
            Context applicationContext = ContextUtils.getApplicationContext();
            ContextUtils.getApplicationContext();
            this.f30750b = (AudioManager) applicationContext.getSystemService("audio");
        }

        private static AudioRecord a(MediaProjection mediaProjection, int i9, int i10, int i11) {
            AudioPlaybackCaptureConfiguration.Builder builder = new AudioPlaybackCaptureConfiguration.Builder(mediaProjection);
            builder.addMatchingUsage(1);
            builder.addMatchingUsage(14);
            AudioPlaybackCaptureConfiguration build = builder.build();
            if (build == null) {
                return null;
            }
            int i12 = i10 == 1 ? 16 : 12;
            AudioFormat build2 = new AudioFormat.Builder().setEncoding(2).setSampleRate(i9).setChannelMask(i12).build();
            int minBufferSize = AudioRecord.getMinBufferSize(i9, i12, 2);
            AudioRecord audioRecord = null;
            for (int i13 = 1; i13 <= 2 && audioRecord == null; i13++) {
                int i14 = minBufferSize * i13;
                if (i14 >= i11 * 4 || i13 >= 2) {
                    audioRecord = new AudioRecord.Builder().setAudioFormat(build2).setBufferSizeInBytes(i14).setAudioPlaybackCaptureConfig(build).build();
                    if (audioRecord.getState() != 1) {
                        Log.e(SystemLoopbackRecorder.TAG, "Audio record state error", new Object[0]);
                        a(audioRecord);
                        audioRecord = null;
                    } else {
                        audioRecord.startRecording();
                        Log.i(SystemLoopbackRecorder.TAG, "Create audio record success", new Object[0]);
                    }
                }
            }
            return audioRecord;
        }

        @CalledByNative("Recorder")
        public int read(ByteBuffer byteBuffer, int i9) {
            if (this.f30749a == null) {
                return -1;
            }
            byteBuffer.position(0);
            int read = this.f30749a.read(byteBuffer, i9);
            if (read <= 0) {
                Log.e(SystemLoopbackRecorder.TAG, "Read failed ".concat(String.valueOf(read)), new Object[0]);
                return -1;
            }
            return read;
        }

        @CalledByNative("Recorder")
        public int startRecording(MediaProjection mediaProjection, int i9, int i10, int i11) {
            try {
                AudioManager audioManager = this.f30750b;
                if (audioManager != null) {
                    audioManager.setAllowedCapturePolicy(3);
                }
            } catch (Throwable th2) {
                Log.e(SystemLoopbackRecorder.TAG, "ForbidCaptureAudioFromCurrentApp error " + th2.getMessage(), new Object[0]);
            }
            AudioManager audioManager2 = this.f30750b;
            int mode = audioManager2 != null ? audioManager2.getMode() : 0;
            a(0);
            this.f30749a = a(mediaProjection, i9, i10, i11);
            a(mode);
            if (this.f30749a == null) {
                return -1;
            }
            Process.setThreadPriority(-19);
            return 0;
        }

        @CalledByNative("Recorder")
        public void stopRecording() {
            a(this.f30749a);
            this.f30749a = null;
        }

        private static void a(AudioRecord audioRecord) {
            if (audioRecord == null) {
                return;
            }
            try {
                if (audioRecord.getRecordingState() == 3) {
                    audioRecord.stop();
                }
                audioRecord.release();
            } catch (Throwable th2) {
                Log.e(SystemLoopbackRecorder.TAG, "Destroy AudioRecord failed." + th2.getMessage(), new Object[0]);
            }
        }

        private void a(int i9) {
            try {
                AudioManager audioManager = this.f30750b;
                if (audioManager != null) {
                    audioManager.setMode(i9);
                }
            } catch (Throwable th2) {
                Log.e(SystemLoopbackRecorder.TAG, "Set audio mode exception " + th2.getMessage(), new Object[0]);
            }
        }
    }
}
