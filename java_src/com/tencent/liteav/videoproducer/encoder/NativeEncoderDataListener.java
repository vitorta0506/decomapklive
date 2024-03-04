package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaFormat;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import java.nio.ByteBuffer;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeEncoderDataListener implements VideoEncoderDef.VideoEncoderDataListener {
    public static final String TAG = "NativeEncoderDataListener";
    private long mNativeVideoEncodeDataListener;
    private int mStreamType;

    @CalledByNative
    public NativeEncoderDataListener(long j10, int i9) {
        this.mNativeVideoEncodeDataListener = j10;
        this.mStreamType = i9;
    }

    private native void nativeOnEncodedFail(long j10, int i9, int i10);

    private native void nativeOnEncodedNAL(long j10, int i9, EncodedVideoFrame encodedVideoFrame, ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, long j11, long j12, long j13, long j14, long j15, long j16, int i14, int i15, boolean z10, int i16);

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public synchronized void onEncodedFail(h.a aVar) {
        long j10 = this.mNativeVideoEncodeDataListener;
        if (j10 != 0) {
            nativeOnEncodedFail(j10, this.mStreamType, com.tencent.liteav.videobase.videobase.h.a(aVar));
        } else {
            LiteavLog.i(TAG, "onEncodedFail nativeclient is zero.");
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public synchronized void onEncodedNAL(EncodedVideoFrame encodedVideoFrame, boolean z10) {
        long j10 = this.mNativeVideoEncodeDataListener;
        if (j10 != 0 && !z10) {
            int i9 = this.mStreamType;
            ByteBuffer byteBuffer = encodedVideoFrame.data;
            int i10 = encodedVideoFrame.nalType.mValue;
            int i11 = encodedVideoFrame.profileType.mValue;
            int i12 = encodedVideoFrame.codecType.mValue;
            int i13 = encodedVideoFrame.rotation;
            long j11 = encodedVideoFrame.dts;
            long j12 = encodedVideoFrame.pts;
            long j13 = encodedVideoFrame.gopIndex;
            long j14 = encodedVideoFrame.gopFrameIndex;
            long j15 = encodedVideoFrame.frameIndex;
            long j16 = encodedVideoFrame.refFrameIndex;
            int i14 = encodedVideoFrame.width;
            int i15 = encodedVideoFrame.height;
            Integer num = encodedVideoFrame.svcInfo;
            nativeOnEncodedNAL(j10, i9, encodedVideoFrame, byteBuffer, i10, i11, i12, i13, j11, j12, j13, j14, j15, j16, i14, i15, num != null, num == null ? 0 : num.intValue());
            return;
        }
        LiteavLog.d(TAG, "onEncodedNAL mNativeVideoEncodeDataListener=%d,isEos=%b", Long.valueOf(j10), Boolean.valueOf(z10));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public synchronized void onOutputFormatChanged(MediaFormat mediaFormat) {
    }

    @CalledByNative
    public synchronized void reset() {
        this.mNativeVideoEncodeDataListener = 0L;
    }
}
