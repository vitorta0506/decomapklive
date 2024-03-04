package com.tencent.ugc;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import java.nio.ByteBuffer;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class MP4Writer {
    private static final String TAG = "MP4Writer";
    private volatile long mNativePtr = 0;
    private MP4WriterListener mListener = null;
    private boolean mHasVideo = false;
    private boolean mHasAudio = false;
    private String mPath = "";

    /* loaded from: classes4.dex */
    public interface MP4WriterListener {
        void onComplete(long j10);

        void onError(String str);
    }

    private static native long nativeCreate(MP4Writer mP4Writer);

    private static native void nativeDestroy(long j10);

    private static native void nativeSetHasAudio(long j10, boolean z10);

    private static native void nativeSetHasVideo(long j10, boolean z10);

    private static native void nativeStart(long j10, String str);

    private static native void nativeStop(long j10);

    private static native void nativeWriteAudioFrame(long j10, int i9, int i10, long j11, int i11, ByteBuffer byteBuffer);

    private static native void nativeWriteVideoFrame(long j10, int i9, int i10, int i11, int i12, long j11, long j12, ByteBuffer byteBuffer);

    protected void finalize() {
        LiteavLog.i(TAG, "finalize");
        stop();
    }

    @CalledByNative
    public void onComplete(long j10) {
        LiteavLog.i(TAG, "onComplete,durationMs=".concat(String.valueOf(j10)));
        MP4WriterListener mP4WriterListener = this.mListener;
        if (mP4WriterListener == null) {
            return;
        }
        mP4WriterListener.onComplete(j10);
    }

    @CalledByNative
    public void onError(String str) {
        LiteavLog.i(TAG, "onError,info=".concat(String.valueOf(str)));
        MP4WriterListener mP4WriterListener = this.mListener;
        if (mP4WriterListener == null) {
            return;
        }
        mP4WriterListener.onError(str);
    }

    public void setHasAudio(boolean z10) {
        LiteavLog.i(TAG, "setHasAudio,hasAudio=".concat(String.valueOf(z10)));
        this.mHasAudio = z10;
    }

    public void setHasVideo(boolean z10) {
        LiteavLog.i(TAG, "setHasVideo,hasVideo=".concat(String.valueOf(z10)));
        this.mHasVideo = z10;
    }

    public void setListener(MP4WriterListener mP4WriterListener) {
        this.mListener = mP4WriterListener;
    }

    public void setPath(String str) {
        LiteavLog.i(TAG, "path=".concat(String.valueOf(str)));
        this.mPath = str;
    }

    public void start() {
        LiteavLog.i(TAG, "start");
        if (this.mNativePtr != 0) {
            LiteavLog.w(TAG, "it is already started.");
            return;
        }
        this.mNativePtr = nativeCreate(this);
        if (this.mNativePtr == 0) {
            LiteavLog.i(TAG, "create native mp4 writer fail.");
            return;
        }
        nativeSetHasVideo(this.mNativePtr, this.mHasVideo);
        nativeSetHasAudio(this.mNativePtr, this.mHasAudio);
        nativeStart(this.mNativePtr, this.mPath);
    }

    public void stop() {
        LiteavLog.i(TAG, "stop");
        if (this.mNativePtr == 0) {
            return;
        }
        nativeStop(this.mNativePtr);
        nativeDestroy(this.mNativePtr);
        this.mNativePtr = 0L;
    }

    public void writeAudioFrame(AudioFrame audioFrame) {
        if (this.mNativePtr != 0 && audioFrame != null) {
            nativeWriteAudioFrame(this.mNativePtr, audioFrame.getSampleRate(), audioFrame.getChannelCount(), audioFrame.getTimestamp(), audioFrame.getCodecFormat().getValue(), audioFrame.getData());
        } else {
            LiteavLog.w(TAG, "writeAudioFrame, mNativePtr or frame is null.");
        }
    }

    public void writeVideoFrame(EncodedVideoFrame encodedVideoFrame) {
        if (this.mNativePtr != 0 && encodedVideoFrame != null) {
            nativeWriteVideoFrame(this.mNativePtr, encodedVideoFrame.width, encodedVideoFrame.height, encodedVideoFrame.nalType.mValue, encodedVideoFrame.codecType.mValue, encodedVideoFrame.pts, encodedVideoFrame.dts, encodedVideoFrame.data);
        } else {
            LiteavLog.w(TAG, "writeVideoFrame, mNativePtr or frame is null.");
        }
    }
}
