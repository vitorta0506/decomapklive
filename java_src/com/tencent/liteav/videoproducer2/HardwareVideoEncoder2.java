package com.tencent.liteav.videoproducer2;

import android.media.MediaFormat;
import android.os.Bundle;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.b.b;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.b.e;
import com.tencent.liteav.videobase.b.g;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.j;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.encoder.be;
import com.tencent.liteav.videoproducer.encoder.w;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class HardwareVideoEncoder2 implements be.a {
    private e mEGLCore;
    private Surface mInputSurface;
    private long mNativeHandler;
    private final VideoEncodeParams mParams;
    private j mPixelFrameRenderer;
    private HWEncoderServerConfig mServerConfig;
    private Object mSharedContext;
    private w mSurfaceInputVideoEncoder;
    @NonNull
    private final q mSurfaceSize = new q(0, 0);
    private final AtomicBoolean mNeedRestart = new AtomicBoolean(false);
    private final Bundle mSessionStates = new Bundle();
    private final b mThrottlers = new b();
    private long mPreFrameTimeStamp = 0;
    private final String mTAG = "HardwareVideoEncoder2_" + hashCode();

    @CalledByNative
    public HardwareVideoEncoder2(long j10, VideoEncodeParams videoEncodeParams) {
        this.mNativeHandler = j10;
        this.mParams = videoEncodeParams;
    }

    private ServerVideoProducerConfig getServerVideoProducerConfig(HWEncoderServerConfig hWEncoderServerConfig) {
        ServerVideoProducerConfig serverVideoProducerConfig = new ServerVideoProducerConfig();
        serverVideoProducerConfig.setHardwareEncodeType(hWEncoderServerConfig.getHardwareEncodeType());
        serverVideoProducerConfig.setHardwareEncoderHighProfileEnable(hWEncoderServerConfig.getHardwareEncoderHighProfileEnable());
        serverVideoProducerConfig.setHardwareEncoderHighProfileSupport(hWEncoderServerConfig.getHardwareEncoderHighProfileSupport());
        Boolean isHardwareEncoderBitrateModeCBRSupported = hWEncoderServerConfig.isHardwareEncoderBitrateModeCBRSupported();
        if (isHardwareEncoderBitrateModeCBRSupported != null) {
            serverVideoProducerConfig.setHardwareEncoderBitrateModeCBRSupported(isHardwareEncoderBitrateModeCBRSupported.booleanValue());
        }
        return serverVideoProducerConfig;
    }

    private boolean initOpenGLComponents(Object obj, Surface surface) {
        if (surface == null) {
            LiteavLog.w(this.mThrottlers.a("NoSurface"), this.mTAG, "init opengl: surface is null.", new Object[0]);
            return false;
        }
        LiteavLog.d(this.mThrottlers.a("initGL"), this.mTAG, "initOpenGLComponents", new Object[0]);
        e eVar = new e();
        this.mEGLCore = eVar;
        try {
            q qVar = this.mSurfaceSize;
            eVar.a(obj, surface, qVar.f31029a, qVar.f31030b);
            this.mSharedContext = obj;
            q qVar2 = this.mSurfaceSize;
            this.mPixelFrameRenderer = new j(qVar2.f31029a, qVar2.f31030b);
            return true;
        } catch (g e10) {
            LiteavLog.e(this.mThrottlers.a("initGLError"), this.mTAG, "create EGLCore failed. error = ".concat(String.valueOf("VideoEncode: create EGLCore failed, EGLCode:" + e10.mErrorCode + " message:" + e10.getMessage())), e10);
            notifyStartEncodedFail();
            this.mEGLCore = null;
            return false;
        }
    }

    private native void nativeOnEncodedFail(long j10);

    private native void nativeOnEncodedNAL(long j10, EncodedVideoFrame encodedVideoFrame, ByteBuffer byteBuffer, int i9, int i10, int i11, int i12, long j11, long j12, long j13, long j14, long j15, long j16, int i13, int i14, boolean z10, int i15);

    private native void nativeOnStartEncodedFail(long j10);

    private boolean restart() {
        LiteavLog.d(this.mTAG, "reStart");
        stop();
        return start();
    }

    private boolean start() {
        if (this.mSurfaceInputVideoEncoder != null) {
            return this.mInputSurface != null;
        }
        LiteavLog.i(this.mTAG, "Start hw video encoder. %s", this.mParams);
        w wVar = new w(this.mSessionStates, new com.tencent.liteav.videobase.videobase.e(), VideoProducerDef.StreamType.STREAM_TYPE_BIG_VIDEO);
        this.mSurfaceInputVideoEncoder = wVar;
        wVar.a();
        this.mSurfaceInputVideoEncoder.a(getServerVideoProducerConfig(this.mServerConfig));
        Pair<Surface, q> a10 = this.mSurfaceInputVideoEncoder.a(this.mParams, this);
        this.mInputSurface = (Surface) a10.first;
        this.mSurfaceSize.a((q) a10.second);
        if (this.mInputSurface == null) {
            notifyStartEncodedFail();
            return false;
        }
        return true;
    }

    private void stop() {
        uninitOpenGLComponents();
        Surface surface = this.mInputSurface;
        if (surface != null) {
            surface.release();
            this.mInputSurface = null;
        }
        w wVar = this.mSurfaceInputVideoEncoder;
        if (wVar != null) {
            wVar.c();
            this.mSurfaceInputVideoEncoder.d();
            this.mSurfaceInputVideoEncoder = null;
        }
    }

    private void uninitOpenGLComponents() {
        if (this.mEGLCore == null) {
            return;
        }
        LiteavLog.d(this.mThrottlers.a("uninitGL"), this.mTAG, "uninitOpenGLComponents", new Object[0]);
        try {
            this.mEGLCore.a();
            j jVar = this.mPixelFrameRenderer;
            if (jVar != null) {
                jVar.a();
                this.mPixelFrameRenderer = null;
            }
        } catch (g e10) {
            LiteavLog.e(this.mThrottlers.a("unintGLError"), this.mTAG, "makeCurrent failed.", e10);
        }
        e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x007e A[Catch: g -> 0x00d4, TryCatch #0 {g -> 0x00d4, blocks: (B:23:0x0042, B:25:0x004f, B:28:0x0058, B:32:0x0061, B:38:0x0071, B:40:0x007e, B:41:0x0084, B:43:0x0097, B:44:0x00b9, B:33:0x0065, B:37:0x006e), top: B:49:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0097 A[Catch: g -> 0x00d4, TryCatch #0 {g -> 0x00d4, blocks: (B:23:0x0042, B:25:0x004f, B:28:0x0058, B:32:0x0061, B:38:0x0071, B:40:0x007e, B:41:0x0084, B:43:0x0097, B:44:0x00b9, B:33:0x0065, B:37:0x006e), top: B:49:0x0042 }] */
    @com.tencent.liteav.base.annotations.CalledByNative
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void encodeFrame(com.tencent.liteav.videobase.frame.PixelFrame r8) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer2.HardwareVideoEncoder2.encodeFrame(com.tencent.liteav.videobase.frame.PixelFrame):void");
    }

    public synchronized void notifyEncodedFail() {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnEncodedFail(j10);
        }
    }

    public synchronized void notifyStartEncodedFail() {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnStartEncodedFail(j10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public void onEncodeError(String str) {
        LiteavLog.e(this.mTAG, "onEncodeError: ".concat(String.valueOf(str)));
        notifyEncodedFail();
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public void onEncodedFail(h.a aVar) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public synchronized void onEncodedNAL(EncodedVideoFrame encodedVideoFrame, boolean z10) {
        try {
            long j10 = this.mNativeHandler;
            if (j10 != 0 && !z10) {
                ByteBuffer byteBuffer = encodedVideoFrame.data;
                int i9 = encodedVideoFrame.nalType.mValue;
                int i10 = encodedVideoFrame.profileType.mValue;
                int i11 = encodedVideoFrame.codecType.mValue;
                int i12 = encodedVideoFrame.rotation;
                long j11 = encodedVideoFrame.dts;
                try {
                    long j12 = encodedVideoFrame.pts;
                    long j13 = encodedVideoFrame.gopIndex;
                    long j14 = encodedVideoFrame.gopFrameIndex;
                    long j15 = encodedVideoFrame.frameIndex;
                    long j16 = encodedVideoFrame.refFrameIndex;
                    int i13 = encodedVideoFrame.width;
                    int i14 = encodedVideoFrame.height;
                    Integer num = encodedVideoFrame.svcInfo;
                    nativeOnEncodedNAL(j10, encodedVideoFrame, byteBuffer, i9, i10, i11, i12, j11, j12, j13, j14, j15, j16, i13, i14, num != null, num == null ? 0 : num.intValue());
                    return;
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                try {
                    LiteavLog.d(this.mTAG, "onEncodedNAL mNativeHandler=%d,isEos=%b", Long.valueOf(j10), Boolean.valueOf(z10));
                    return;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
        throw th;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public void onOutputFormatChanged(MediaFormat mediaFormat) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public void onRequestRestart() {
        this.mNeedRestart.set(true);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public void onRpsFrameRateChanged(boolean z10, int i9) {
    }

    @CalledByNative
    public synchronized void release() {
        LiteavLog.d(this.mTAG, "release");
        this.mNativeHandler = 0L;
        stop();
    }

    @CalledByNative
    public void setBitrate(int i9) {
        LiteavLog.i(this.mTAG, "SetBitrate ".concat(String.valueOf(i9)));
        w wVar = this.mSurfaceInputVideoEncoder;
        if (wVar == null) {
            this.mParams.bitrate = i9;
        } else {
            wVar.a(i9);
        }
    }

    @CalledByNative
    public void setHWEncoderServerConfig(@NonNull HWEncoderServerConfig hWEncoderServerConfig) {
        this.mServerConfig = hWEncoderServerConfig;
        w wVar = this.mSurfaceInputVideoEncoder;
        if (wVar != null) {
            wVar.a(getServerVideoProducerConfig(hWEncoderServerConfig));
        }
    }

    @CalledByNative
    public void signalEndOfStream() {
        w wVar = this.mSurfaceInputVideoEncoder;
        if (wVar != null) {
            wVar.b();
        }
    }
}
