package com.tencent.liteav.audio;

import android.media.AudioTrack;
import android.os.Process;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import java.nio.ByteBuffer;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
public class LiteavAudioTrack {
    private static final String TAG = "LiteavAudioTrack";
    private AudioTrack mAudioTrack;
    private byte[] mPlayBuffer;
    private int mBufferSize = 0;
    private int mSystemOSVersion = 0;

    private static AudioTrack createStartedAudioTrack(int i9, int i10, int i11, int i12) {
        AudioTrack audioTrack;
        try {
            audioTrack = new AudioTrack(i12, i9, i10, 2, i11, 1);
        } catch (Throwable unused) {
            audioTrack = null;
        }
        try {
            if (audioTrack.getState() == 1) {
                audioTrack.play();
                Log.i(TAG, "create AudioTrack success. sampleRate: %d, channelConfig: %d, bufferSize: %d, streamType: %s", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11), streamTypeToString(i12));
                return audioTrack;
            }
            throw new RuntimeException("AudioTrack is not initialized.");
        } catch (Throwable unused2) {
            Log.w(TAG, "create AudioTrack failed. sampleRate: %d, channelConfig: %d, bufferSize: %d, streamType: %s", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11), streamTypeToString(i12));
            destroyAudioTrack(audioTrack);
            return null;
        }
    }

    private static void destroyAudioTrack(AudioTrack audioTrack) {
        if (audioTrack == null) {
            return;
        }
        try {
            if (audioTrack.getPlayState() == 3) {
                audioTrack.stop();
                audioTrack.flush();
            }
            audioTrack.release();
        } catch (Exception e10) {
            Log.e(TAG, "stop AudioTrack failed.", e10);
        }
    }

    private static String streamTypeToString(int i9) {
        return i9 != 0 ? i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? i9 != 5 ? "STREAM_INVALID" : "STREAM_NOTIFICATION" : "STREAM_ALARM" : "STREAM_MUSIC" : "STREAM_RING" : "STREAM_SYSTEM" : "STREAM_VOICE_CALL";
    }

    @CalledByNative
    public int getBufferSize() {
        return this.mBufferSize;
    }

    @CalledByNative
    public int startPlayout(int i9, int i10, int i11, int i12) {
        int[] iArr = {i9, 0, 3, 1};
        int i13 = i11 == 1 ? 4 : 12;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i13, 2);
        if (minBufferSize <= 0) {
            Log.e(TAG, "AudioTrack.getMinBufferSize return error: ".concat(String.valueOf(minBufferSize)), new Object[0]);
            return -2;
        }
        for (int i14 = 0; i14 < 4 && this.mAudioTrack == null; i14++) {
            int i15 = iArr[i14];
            for (int i16 = 1; i16 <= 2 && this.mAudioTrack == null; i16++) {
                int i17 = minBufferSize * i16;
                this.mBufferSize = i17;
                if (i17 >= i12 * 4 || i16 >= 2) {
                    this.mAudioTrack = createStartedAudioTrack(i10, i13, i17, i15);
                }
            }
        }
        if (this.mAudioTrack == null) {
            return -1;
        }
        this.mSystemOSVersion = LiteavSystemInfo.getSystemOSVersionInt();
        Process.setThreadPriority(-19);
        return 0;
    }

    @CalledByNative
    public void stopPlayout() {
        destroyAudioTrack(this.mAudioTrack);
        this.mAudioTrack = null;
    }

    @CalledByNative
    public int write(ByteBuffer byteBuffer, int i9, int i10) {
        int write;
        if (this.mAudioTrack == null) {
            return -1;
        }
        byteBuffer.position(i9);
        if (this.mSystemOSVersion >= 21) {
            write = this.mAudioTrack.write(byteBuffer, i10, 0);
        } else {
            byte[] bArr = this.mPlayBuffer;
            if (bArr == null || bArr.length < i10) {
                this.mPlayBuffer = new byte[i10];
            }
            byteBuffer.get(this.mPlayBuffer, 0, i10);
            write = this.mAudioTrack.write(this.mPlayBuffer, 0, i10);
        }
        if (write <= 0) {
            Log.e(TAG, "write audio data to AudioTrack failed. ".concat(String.valueOf(write)), new Object[0]);
            return -1;
        }
        return write;
    }
}
