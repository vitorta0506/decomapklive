package com.tencent.liteav.videoproducer.encoder;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.c;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.encoder.be;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import java.nio.ByteBuffer;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class SoftwareVideoEncoder implements c.a, be {
    private com.tencent.liteav.videobase.b.e mEGLCore;
    private VideoEncodeParams mEncodeParams;
    private com.tencent.liteav.videobase.videobase.c mFrameConverter;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private be.a mListener;
    private com.tencent.liteav.videobase.frame.j mPixelFrameRenderer;
    private final String mTAG;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    private long mNativeEncodeWrapper = 0;
    private final com.tencent.liteav.videobase.utils.k mSnapshotTaker = new com.tencent.liteav.videobase.utils.k("softenc" + hashCode());

    public SoftwareVideoEncoder(@NonNull IVideoReporter iVideoReporter, VideoProducerDef.StreamType streamType) {
        this.mTAG = "SoftwareVideoEncoder_" + streamType + "_" + hashCode();
    }

    @CalledByNative
    private static EncodedVideoFrame createEncodedVideoFrameCallFromNative(ByteBuffer byteBuffer, int i9, int i10, int i11, long j10, long j11, long j12, int i12, int i13, long j13, long j14, long j15, boolean z10, int i14) {
        EncodedVideoFrame encodedVideoFrame = new EncodedVideoFrame();
        encodedVideoFrame.nalType = com.tencent.liteav.videobase.common.a.a(i9);
        encodedVideoFrame.profileType = com.tencent.liteav.videobase.common.b.a(i10);
        encodedVideoFrame.data = byteBuffer;
        encodedVideoFrame.dts = j10;
        encodedVideoFrame.pts = j11;
        encodedVideoFrame.rotation = i11;
        encodedVideoFrame.frameIndex = j13;
        encodedVideoFrame.gopFrameIndex = 0L;
        encodedVideoFrame.gopIndex = j14;
        encodedVideoFrame.refFrameIndex = j15;
        encodedVideoFrame.nativePtr = j12;
        encodedVideoFrame.width = i12;
        encodedVideoFrame.height = i13;
        if (z10) {
            encodedVideoFrame.svcInfo = Integer.valueOf(i14);
        } else {
            encodedVideoFrame.svcInfo = null;
        }
        return encodedVideoFrame;
    }

    private boolean initOpenGLComponents(Object obj) {
        if (this.mEncodeParams == null) {
            return false;
        }
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.mEGLCore = eVar;
        try {
            eVar.a(obj, null, 128, 128);
            this.mPixelFrameRenderer = new com.tencent.liteav.videobase.frame.j(this.mEncodeParams.getWidth(), this.mEncodeParams.getHeight());
            com.tencent.liteav.videobase.frame.e eVar2 = new com.tencent.liteav.videobase.frame.e();
            this.mGLTexturePool = eVar2;
            this.mSnapshotTaker.a(eVar2);
            this.mSnapshotTaker.a(this.mEncodeParams.getWidth(), this.mEncodeParams.getHeight());
            com.tencent.liteav.videobase.videobase.c cVar = new com.tencent.liteav.videobase.videobase.c();
            this.mFrameConverter = cVar;
            cVar.a(this.mGLTexturePool);
            this.mFrameConverter.a(new com.tencent.liteav.videobase.videobase.a(this.mEncodeParams.getWidth(), this.mEncodeParams.getHeight()), GLConstants.PixelBufferType.BYTE_ARRAY, GLConstants.PixelFormatType.I420, 0, this);
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            this.mEGLCore = null;
            LiteavLog.e(this.mThrottlers.a("initGL"), this.mTAG, "initializeEGL failed.", e10);
            return false;
        }
    }

    private static native long nativeCreate(SoftwareVideoEncoder softwareVideoEncoder);

    private static native void nativeDestroy(long j10);

    private static native int nativeEncodeFrame(long j10, byte[] bArr, int i9, int i10, long j11);

    private static native void nativeRestartIDR(long j10);

    private static native void nativeSetBitrate(long j10, int i9);

    private static native void nativeSetFps(long j10, int i9);

    private static native int nativeSetNearestRPS(long j10, int i9);

    private static native int nativeSetRPSRefBitmap(long j10, int i9, int i10);

    private static native void nativeSetRpsIdrFps(long j10, int i9);

    private static native int nativeStart(long j10, VideoEncodeParams videoEncodeParams);

    private static native int nativeStop(long j10);

    @CalledByNative
    private void onEncodedError(int i9) {
        be.a aVar = this.mListener;
        if (aVar != null) {
            aVar.onEncodeError(String.valueOf(i9));
        }
    }

    @CalledByNative
    private void onEncodedNAL(EncodedVideoFrame encodedVideoFrame) {
        be.a aVar = this.mListener;
        if (aVar != null) {
            aVar.onEncodedNAL(encodedVideoFrame, false);
        }
    }

    @CalledByNative
    private void onRpsFrameRateChanged(boolean z10, int i9) {
        be.a aVar = this.mListener;
        if (aVar != null) {
            aVar.onRpsFrameRateChanged(z10, i9);
        }
    }

    private void uninitializeOpenGLComponents() {
        if (this.mEGLCore == null) {
            return;
        }
        LiteavLog.i(this.mThrottlers.a("uninitGL"), this.mTAG, "uninitializeOpenGLComponents", new Object[0]);
        try {
            this.mEGLCore.a();
            this.mFrameConverter.a(0, this);
            this.mFrameConverter.a();
            this.mSnapshotTaker.a();
            com.tencent.liteav.videobase.frame.j jVar = this.mPixelFrameRenderer;
            if (jVar != null) {
                jVar.a();
                this.mPixelFrameRenderer = null;
            }
            com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
            if (eVar != null) {
                eVar.a();
                this.mGLTexturePool.b();
                this.mGLTexturePool = null;
            }
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("unintError"), this.mTAG, "makeCurrent failed.", e10);
        }
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void ackRPSRecvFrameIndex(int i9, int i10) {
        nativeSetRPSRefBitmap(this.mNativeEncodeWrapper, i9, i10);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void encodeFrame(PixelFrame pixelFrame) {
        if (pixelFrame == null) {
            return;
        }
        if (this.mEGLCore != null || initOpenGLComponents(pixelFrame.getGLContext())) {
            try {
                this.mEGLCore.a();
                com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(this.mEncodeParams.getWidth(), this.mEncodeParams.getHeight());
                OpenGlUtils.glViewport(0, 0, a10.b(), a10.c());
                this.mSnapshotTaker.a(pixelFrame);
                this.mPixelFrameRenderer.a(pixelFrame, GLConstants.GLScaleType.CENTER_CROP, a10);
                this.mFrameConverter.a(pixelFrame.getTimestamp(), a10);
                a10.release();
            } catch (com.tencent.liteav.videobase.b.g e10) {
                LiteavLog.e(this.mThrottlers.a("makeCurrentError"), this.mTAG, "makeCurrent failed.", e10);
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public VideoEncodeParams getEncodeParams() {
        return new VideoEncodeParams(this.mEncodeParams);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public VideoEncoderDef.a getEncoderType() {
        return VideoEncoderDef.a.SOFTWARE;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void initialize() {
        this.mNativeEncodeWrapper = nativeCreate(this);
        String str = this.mTAG;
        LiteavLog.i(str, "initialize " + this.mNativeEncodeWrapper);
    }

    @Override // com.tencent.liteav.videobase.videobase.c.a
    public void onFrameConverted(int i9, PixelFrame pixelFrame) {
        if (pixelFrame.getPixelFormatType() != GLConstants.PixelFormatType.I420 && pixelFrame.getPixelBufferType() != GLConstants.PixelBufferType.TEXTURE_2D) {
            LiteavLog.i(this.mTAG, "pixelFrame pixelFormat not I420 ");
            return;
        }
        long j10 = this.mNativeEncodeWrapper;
        if (j10 != 0) {
            nativeEncodeFrame(j10, pixelFrame.getData(), pixelFrame.getWidth(), pixelFrame.getHeight(), pixelFrame.getTimestamp());
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void restartIDRFrame() {
        LiteavLog.i(this.mTAG, "restartIDRFrame");
        nativeRestartIDR(this.mNativeEncodeWrapper);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void setBitrate(int i9) {
        LiteavLog.i(this.mTAG, "SetBitrate: ".concat(String.valueOf(i9)));
        nativeSetBitrate(this.mNativeEncodeWrapper, i9);
        this.mEncodeParams.setBitrate(i9);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void setFps(int i9) {
        LiteavLog.i(this.mTAG, "setFps: ".concat(String.valueOf(i9)));
        nativeSetFps(this.mNativeEncodeWrapper, i9);
        this.mEncodeParams.setFps(i9);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void setRPSIFrameFPS(int i9) {
        LiteavLog.i(this.mTAG, "setRPSIFrameFPS：fps= %d", Integer.valueOf(i9));
        nativeSetRpsIdrFps(this.mNativeEncodeWrapper, i9);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void setRPSNearestREFSize(int i9) {
        LiteavLog.i(this.mTAG, "setRPSNearestREFSize ".concat(String.valueOf(i9)));
        nativeSetNearestRPS(this.mNativeEncodeWrapper, i9);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void setServerConfig(ServerVideoProducerConfig serverVideoProducerConfig) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void signalEndOfStream() {
        LiteavLog.i(this.mTAG, "signalEndOfStream");
        if (this.mListener != null) {
            this.mListener.onEncodedNAL(new EncodedVideoFrame(), true);
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public boolean start(VideoEncodeParams videoEncodeParams, be.a aVar) {
        LiteavLog.i(this.mTAG, "Start: ".concat(String.valueOf(videoEncodeParams)));
        VideoEncodeParams videoEncodeParams2 = new VideoEncodeParams(videoEncodeParams);
        this.mEncodeParams = videoEncodeParams2;
        this.mListener = aVar;
        nativeStart(this.mNativeEncodeWrapper, videoEncodeParams2);
        return true;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void stop() {
        LiteavLog.i(this.mTAG, "Stop");
        this.mEncodeParams = null;
        nativeStop(this.mNativeEncodeWrapper);
        uninitializeOpenGLComponents();
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void takeSnapshot(TakeSnapshotListener takeSnapshotListener) {
        this.mSnapshotTaker.f31904a = takeSnapshotListener;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public void uninitialize() {
        LiteavLog.i(this.mTAG, "uninitialize ");
        nativeDestroy(this.mNativeEncodeWrapper);
    }
}
