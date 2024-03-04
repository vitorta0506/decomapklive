package com.tencent.ugc;

import com.facebook.internal.AnalyticsEvents;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.ugc.AudioFrame;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCAVSyncer;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class UGCAudioProcessor {
    private static final String TAG = "UGCAudioProcessor";
    private UGCAVSyncer mAVSyncer;
    private long mNativeProcessor;
    private UGCMediaListSource mVideoSource;
    private AudioProgressListener mProgressListener = null;
    private AudioEncodedFrameListener mEncodeListener = null;
    private UGCMediaListSource mBGMSource = null;
    private final Object mBGMLock = new Object();

    /* loaded from: classes4.dex */
    public interface AudioEncodedFrameListener {
        void onAudioEncodingCompleted();

        void onAudioEncodingStarted();

        void onAudioFrameEncoded(AudioFrame audioFrame);
    }

    /* loaded from: classes4.dex */
    public interface AudioProgressListener {
        void onComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult);

        void onProgress(long j10);
    }

    public UGCAudioProcessor(UGCAVSyncer uGCAVSyncer, UGCMediaListSource uGCMediaListSource) {
        this.mNativeProcessor = 0L;
        this.mVideoSource = uGCMediaListSource;
        this.mAVSyncer = uGCAVSyncer;
        this.mNativeProcessor = nativeCreateProcessor(this);
    }

    private void destroyBGMSource() {
        synchronized (this.mBGMLock) {
            UGCMediaListSource uGCMediaListSource = this.mBGMSource;
            if (uGCMediaListSource != null) {
                uGCMediaListSource.uninitialize();
                this.mBGMSource = null;
            }
        }
    }

    private static native long nativeCreateProcessor(UGCAudioProcessor uGCAudioProcessor);

    private static native void nativeDestroyProcessor(long j10);

    private static native void nativeEnableBGM(long j10, boolean z10);

    private static native void nativeInitialize(long j10);

    private static native void nativeSetBGMAtVideoTime(long j10, long j11);

    private static native void nativeSetBGMLoop(long j10, boolean z10);

    private static native void nativeSetBGMStartTime(long j10, long j11, long j12);

    private static native void nativeSetBGMVolume(long j10, float f10);

    private static native void nativeSetEncodeParams(long j10, int i9, int i10, int i11, int i12);

    private static native void nativeSetFadeInOutDuration(long j10, long j11, long j12);

    private static native void nativeSetSpeedList(long j10, int[] iArr, long[] jArr, long[] jArr2);

    private static native void nativeSetVideoVolume(long j10, float f10);

    private static native void nativeSetVideoVolumes(long j10, float[] fArr);

    private static native void nativeStart(long j10, boolean z10);

    private static native void nativeStop(long j10);

    private static native void nativeUnInitialize(long j10);

    private AudioFrame[] readNextAudioFrame(boolean z10) {
        synchronized (this.mBGMLock) {
            UGCMediaListSource uGCMediaListSource = z10 ? this.mBGMSource : this.mVideoSource;
            if (uGCMediaListSource == null) {
                StringBuilder sb2 = new StringBuilder("readNextAudioFrame failed for ");
                sb2.append(z10 ? "BGM" : AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
                Log.w(TAG, sb2.toString(), new Object[0]);
                return null;
            }
            List<AudioFrame> readNextAudioFrame = uGCMediaListSource.readNextAudioFrame();
            if (readNextAudioFrame != null && !readNextAudioFrame.isEmpty()) {
                return (AudioFrame[]) readNextAudioFrame.toArray(new AudioFrame[0]);
            }
            StringBuilder sb3 = new StringBuilder("readNextAudioFrame eos for ");
            sb3.append(z10 ? "BGM" : AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            Log.i(TAG, sb3.toString(), new Object[0]);
            return null;
        }
    }

    @CalledByNative
    public AudioFrame createAudioFrameFromNative(int i9, int i10, long j10, int i11, int i12) {
        AudioFrame audioFrame = new AudioFrame();
        audioFrame.setSampleRate(i9);
        audioFrame.setChannelCount(i10);
        audioFrame.setData(ByteBuffer.allocateDirect(i12));
        audioFrame.setTimestamp(j10);
        AudioFrame.AudioCodecFormat audioCodecFormat = AudioFrame.AudioCodecFormat.AAC;
        if (i11 != audioCodecFormat.getValue()) {
            audioCodecFormat = AudioFrame.AudioCodecFormat.PCM;
        }
        audioFrame.setCodecFormat(audioCodecFormat);
        return audioFrame;
    }

    public void destroy() {
        destroyBGMSource();
        nativeDestroyProcessor(this.mNativeProcessor);
    }

    public void initialize() {
        nativeInitialize(this.mNativeProcessor);
    }

    @CalledByNative
    public void notifyEncodedDataFromNative(AudioFrame audioFrame) {
        AudioEncodedFrameListener audioEncodedFrameListener = this.mEncodeListener;
        if (audioEncodedFrameListener != null) {
            audioEncodedFrameListener.onAudioFrameEncoded(audioFrame);
        }
    }

    @CalledByNative
    public void notifyEncodingCompletedFromNative() {
        AudioEncodedFrameListener audioEncodedFrameListener = this.mEncodeListener;
        if (audioEncodedFrameListener != null) {
            audioEncodedFrameListener.onAudioEncodingCompleted();
        }
        UGCAVSyncer uGCAVSyncer = this.mAVSyncer;
        if (uGCAVSyncer != null) {
            uGCAVSyncer.setAudioEos();
        }
    }

    @CalledByNative
    public void notifyEncodingStartedFromNative() {
        AudioEncodedFrameListener audioEncodedFrameListener = this.mEncodeListener;
        if (audioEncodedFrameListener != null) {
            audioEncodedFrameListener.onAudioEncodingStarted();
        }
    }

    @CalledByNative
    public void notifyPlayoutCompletedFromNative(int i9, String str) {
        if (this.mProgressListener != null) {
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
            tXGenerateResult.retCode = i9;
            tXGenerateResult.descMsg = str;
            this.mProgressListener.onComplete(tXGenerateResult);
        }
        UGCAVSyncer uGCAVSyncer = this.mAVSyncer;
        if (uGCAVSyncer != null) {
            uGCAVSyncer.setAudioEos();
        }
    }

    @CalledByNative
    public void notifyProgressFromNative(long j10) {
        AudioProgressListener audioProgressListener = this.mProgressListener;
        if (audioProgressListener != null) {
            audioProgressListener.onProgress(j10);
        }
    }

    @CalledByNative
    public AudioFrame[] requestAudioDataFromNative() {
        return readNextAudioFrame(false);
    }

    @CalledByNative
    public AudioFrame[] requestBGMDataFromNative() {
        return readNextAudioFrame(true);
    }

    @CalledByNative
    public boolean requestBGMSeekFromNative(long j10) {
        synchronized (this.mBGMLock) {
            UGCMediaListSource uGCMediaListSource = this.mBGMSource;
            if (uGCMediaListSource != null && uGCMediaListSource.hasAudioData() && this.mBGMSource.getDuration() >= j10) {
                this.mBGMSource.seekTo(j10);
                return true;
            }
            return false;
        }
    }

    public void setAudioEncodedFrameListener(AudioEncodedFrameListener audioEncodedFrameListener) {
        this.mEncodeListener = audioEncodedFrameListener;
    }

    public void setBGM(String str) {
        long duration;
        if (str == null) {
            destroyBGMSource();
            nativeEnableBGM(this.mNativeProcessor, false);
            return;
        }
        synchronized (this.mBGMLock) {
            destroyBGMSource();
            UGCMediaListSource uGCMediaListSource = new UGCMediaListSource();
            this.mBGMSource = uGCMediaListSource;
            uGCMediaListSource.initialize();
            this.mBGMSource.setVideoSources(Collections.singletonList(str));
            duration = this.mBGMSource.getDuration();
        }
        nativeEnableBGM(this.mNativeProcessor, true);
        if (duration > 0) {
            setBGMStartTime(0L, duration);
        }
    }

    public void setBGMAtVideoTime(long j10) {
        nativeSetBGMAtVideoTime(this.mNativeProcessor, j10);
    }

    public void setBGMLoop(boolean z10) {
        nativeSetBGMLoop(this.mNativeProcessor, z10);
    }

    public void setBGMStartTime(long j10, long j11) {
        nativeSetBGMStartTime(this.mNativeProcessor, j10, j11);
    }

    public void setBGMVolume(float f10) {
        nativeSetBGMVolume(this.mNativeProcessor, f10);
    }

    public void setEncodeParams(AudioEncodeParams audioEncodeParams) {
        nativeSetEncodeParams(this.mNativeProcessor, audioEncodeParams.getSampleRate(), audioEncodeParams.getChannels(), audioEncodeParams.getBitsPerChannel(), audioEncodeParams.getBitrate());
    }

    public void setFadeInOutDuration(long j10, long j11) {
        nativeSetFadeInOutDuration(this.mNativeProcessor, j10, j11);
    }

    public void setMediaListSource(UGCMediaListSource uGCMediaListSource) {
        this.mVideoSource = uGCMediaListSource;
    }

    public void setProgressListener(AudioProgressListener audioProgressListener) {
        this.mProgressListener = audioProgressListener;
    }

    public void setSpeedList(List<TXVideoEditConstants.TXSpeed> list) {
        long[] jArr;
        long[] jArr2;
        int[] iArr = null;
        if (list == null || list.isEmpty()) {
            jArr = null;
            jArr2 = null;
        } else {
            iArr = new int[list.size()];
            jArr = new long[list.size()];
            jArr2 = new long[list.size()];
            for (int i9 = 0; i9 < list.size(); i9++) {
                TXVideoEditConstants.TXSpeed tXSpeed = list.get(i9);
                iArr[i9] = tXSpeed.speedLevel;
                jArr[i9] = tXSpeed.startTime;
                jArr2[i9] = tXSpeed.endTime;
            }
        }
        nativeSetSpeedList(this.mNativeProcessor, iArr, jArr, jArr2);
    }

    public void setVideoVolume(float f10) {
        nativeSetVideoVolume(this.mNativeProcessor, f10);
    }

    public void setVideoVolumes(float[] fArr) {
        nativeSetVideoVolumes(this.mNativeProcessor, fArr);
    }

    public void start(boolean z10) {
        nativeStart(this.mNativeProcessor, z10);
    }

    public void stop() {
        nativeStop(this.mNativeProcessor);
    }

    @CalledByNative
    public int syncAudioFromNative(long j10) {
        UGCAVSyncer uGCAVSyncer = this.mAVSyncer;
        if (uGCAVSyncer != null) {
            return uGCAVSyncer.syncAudio(j10).getNativeValue();
        }
        return UGCAVSyncer.SkipMode.NOOP.getNativeValue();
    }

    public void unInitialize() {
        nativeUnInitialize(this.mNativeProcessor);
    }
}
