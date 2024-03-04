package com.tencent.ugc;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.ugc.AudioFrame;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCFrameQueue;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class UGCSingleFileAudioFrameProvider implements UGCAudioFrameProvider, UGCFrameQueue.UGCFrameQueueListener {
    private static final int DEFAULT_CHANNEL_COUNT = 2;
    private static final int DEFAULT_SAMPLE_RATE = 48000;
    private static final int MAX_FRAME_SIZE = 5;
    private static final int MUTE_AUDIO_FRAME_DURATION = 20;
    public static final String MUTE_VIRTUAL_FILE_PATH = "mute_virtual_file_path";
    private static final String TAG = "UGCAudioFileProvider";
    private final Clip mClip;
    private long mNativeHandle;
    private final CustomHandler mWorkHandler;
    private long mCurrentTimestamp = 0;
    private long mEndPlayPts = Long.MAX_VALUE;
    private final UGCFrameQueue<List<AudioFrame>> mAudioFrameQueue = new UGCFrameQueue<>();

    public UGCSingleFileAudioFrameProvider(@NonNull Clip clip, @NonNull CustomHandler customHandler) {
        this.mClip = new Clip(clip);
        this.mWorkHandler = customHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DecodeOrAppendMuteFrame() {
        if (this.mAudioFrameQueue.size() >= 5) {
            return;
        }
        long j10 = this.mNativeHandle;
        if (j10 != 0) {
            nativeDecode(j10);
        } else {
            appendMuteFrame();
        }
        this.mWorkHandler.removeCallbacks(ev.a(this));
        this.mWorkHandler.post(ew.a(this));
    }

    private void appendMuteFrame() {
        Clip clip = this.mClip;
        if (this.mCurrentTimestamp >= clip.startInClipsTimeline + (clip.endInFileTime - clip.startInFileTime)) {
            this.mAudioFrameQueue.queue(UGCAudioFrameProvider.END_OF_STREAM);
            return;
        }
        AudioFrame audioFrame = new AudioFrame();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(3840);
        Arrays.fill(allocateDirect.array(), (byte) 0);
        audioFrame.setData(allocateDirect);
        audioFrame.setChannelCount(2);
        audioFrame.setSampleRate(48000);
        audioFrame.setCodecFormat(AudioFrame.AudioCodecFormat.PCM);
        long j10 = this.mCurrentTimestamp + 20;
        this.mCurrentTimestamp = j10;
        audioFrame.setTimestamp(j10);
        this.mAudioFrameQueue.queue(Collections.singletonList(audioFrame));
    }

    private long fileTimeToTimelineNoSpeed(long j10) {
        Clip clip = this.mClip;
        return clip.startTimelineNoSpeed + (j10 - clip.startInFileTime);
    }

    @CalledByNative
    private ByteBuffer getByteBufferFromAudioFrame(AudioFrame audioFrame) {
        return audioFrame.getData();
    }

    private float getTimeMultipleInSpeed(int i9) {
        return UGCMediaListSource.getSpeed(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initialize$0(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        if (uGCSingleFileAudioFrameProvider.mClip.path.equals(MUTE_VIRTUAL_FILE_PATH)) {
            uGCSingleFileAudioFrameProvider.mNativeHandle = 0L;
            return;
        }
        long nativeCreate = nativeCreate(uGCSingleFileAudioFrameProvider);
        uGCSingleFileAudioFrameProvider.mNativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            LiteavLog.e(TAG, "create native instance failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$seekTo$2(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider, long j10) {
        uGCSingleFileAudioFrameProvider.mCurrentTimestamp = j10;
        uGCSingleFileAudioFrameProvider.seekToInFileTime(uGCSingleFileAudioFrameProvider.timelineToFileTime(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$uninitialize$1(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        long j10 = uGCSingleFileAudioFrameProvider.mNativeHandle;
        if (j10 != 0) {
            nativeClose(j10);
            nativeDestroy(uGCSingleFileAudioFrameProvider.mNativeHandle);
            uGCSingleFileAudioFrameProvider.mNativeHandle = 0L;
        }
        uGCSingleFileAudioFrameProvider.mAudioFrameQueue.clear();
    }

    private static native void nativeClose(long j10);

    private static native long nativeCreate(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider);

    private static native void nativeDecode(long j10);

    private static native void nativeDestroy(long j10);

    private static native long nativeGetDuration(long j10);

    private static native int nativeOpen(long j10, String str);

    private static native int nativeSeekTo(long j10, long j11);

    @CalledByNative
    private AudioFrame obtainAudioFrame(int i9, int i10, long j10, int i11) {
        AudioFrame audioFrame = new AudioFrame();
        audioFrame.setSampleRate(i9);
        audioFrame.setChannelCount(i10);
        audioFrame.setTimestamp(j10);
        audioFrame.setData(ByteBuffer.allocateDirect(i11));
        return audioFrame;
    }

    @CalledByNative
    private void onDecodeEndOfFile() {
        LiteavLog.i(TAG, "onDecodeEndOfFile");
        this.mAudioFrameQueue.queue(UGCAudioFrameProvider.END_OF_STREAM);
    }

    @CalledByNative
    private void onDecodeError(String str) {
        LiteavLog.i(TAG, "onDecodeError reason = ".concat(String.valueOf(str)));
        this.mAudioFrameQueue.queue(UGCAudioFrameProvider.END_OF_STREAM);
    }

    @CalledByNative
    private void onDecodeFrame(AudioFrame audioFrame) {
        if (audioFrame.getTimestamp() < this.mClip.startInFileTime) {
            return;
        }
        if (audioFrame.getTimestamp() <= this.mClip.endInFileTime && audioFrame.getTimestamp() <= this.mEndPlayPts) {
            audioFrame.setTimestamp(fileTimeToTimelineNoSpeed(audioFrame.getTimestamp()));
            this.mAudioFrameQueue.queue(Collections.singletonList(audioFrame));
            return;
        }
        LiteavLog.i(TAG, "decode frame pts is bigger than end time");
        this.mAudioFrameQueue.queue(UGCAudioFrameProvider.END_OF_STREAM);
    }

    private void seekToInFileTime(long j10) {
        Clip clip = this.mClip;
        long a10 = com.tencent.liteav.base.util.g.a(j10, clip.startInFileTime, clip.endInFileTime);
        LiteavLog.i(TAG, "seekTo fileTime ".concat(String.valueOf(a10)));
        long j11 = this.mNativeHandle;
        if (j11 != 0 && nativeSeekTo(j11, a10) != 0) {
            LiteavLog.w(TAG, "nativeSeekTo fail");
        }
        this.mAudioFrameQueue.clear();
        this.mWorkHandler.a(eu.a(this), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInternal() {
        long j10 = this.mNativeHandle;
        if (j10 != 0 && nativeOpen(j10, this.mClip.path) != 0) {
            LiteavLog.e(TAG, "native AudioFileReaderFFmpeg open failed.");
            nativeClose(this.mNativeHandle);
            nativeDestroy(this.mNativeHandle);
            this.mNativeHandle = 0L;
        }
        this.mCurrentTimestamp = this.mClip.startInClipsTimeline;
        this.mAudioFrameQueue.setUGCFrameQueueListener(this);
        this.mAudioFrameQueue.clear();
        long j11 = this.mClip.startInFileTime;
        if (j11 != 0) {
            seekToInFileTime(j11);
        }
        DecodeOrAppendMuteFrame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal() {
        long j10 = this.mNativeHandle;
        if (j10 != 0) {
            nativeClose(j10);
        }
        this.mAudioFrameQueue.setUGCFrameQueueListener(null);
        this.mWorkHandler.removeCallbacks(es.a(this));
        this.mAudioFrameQueue.clear();
        this.mAudioFrameQueue.queue(UGCAudioFrameProvider.END_OF_STREAM);
    }

    private long timelineToFileTime(long j10) {
        Clip clip = this.mClip;
        List<TXVideoEditConstants.TXSpeed> list = clip.speedList;
        if (list == null) {
            return j10 + clip.startInFileTime;
        }
        long j11 = 0;
        for (TXVideoEditConstants.TXSpeed tXSpeed : list) {
            float timeMultipleInSpeed = 1.0f / getTimeMultipleInSpeed(tXSpeed.speedLevel);
            long j12 = tXSpeed.endTime;
            long j13 = tXSpeed.startTime;
            long j14 = ((float) (j12 - j13)) * timeMultipleInSpeed;
            j11 = (((float) j10) / timeMultipleInSpeed) + j13;
            if (j10 < j14) {
                break;
            }
            j10 -= j14;
        }
        return j11;
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public UGCFrameQueue<List<AudioFrame>> getFrameQueue() {
        return this.mAudioFrameQueue;
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void initialize() {
        LiteavLog.i(TAG, "initialize");
        this.mWorkHandler.a(en.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCFrameQueue.UGCFrameQueueListener
    public void onFrameDequeued() {
        this.mWorkHandler.a(eo.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void seekTo(long j10) {
        this.mWorkHandler.a(et.a(this, j10), 1000L);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void setPlayEndPts(long j10) {
        this.mEndPlayPts = j10;
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void start() {
        this.mWorkHandler.a(eq.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void stop() {
        this.mWorkHandler.a(er.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void uninitialize() {
        this.mWorkHandler.a(ep.a(this), 0);
    }
}
