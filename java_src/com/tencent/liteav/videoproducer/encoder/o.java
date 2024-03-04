package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.encoder.be;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
public final class o implements be, be.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f32935a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final IVideoReporter f32936b;

    /* renamed from: d  reason: collision with root package name */
    private final w f32938d;

    /* renamed from: f  reason: collision with root package name */
    private Surface f32940f;

    /* renamed from: g  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.e f32941g;

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f32942h;

    /* renamed from: i  reason: collision with root package name */
    private VideoEncodeParams f32943i;

    /* renamed from: k  reason: collision with root package name */
    private volatile Handler f32945k;

    /* renamed from: l  reason: collision with root package name */
    private volatile be.a f32946l;

    /* renamed from: m  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.c f32947m;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f32937c = new com.tencent.liteav.base.util.q(0, 0);

    /* renamed from: e  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f32939e = new com.tencent.liteav.base.b.b();

    /* renamed from: j  reason: collision with root package name */
    private long f32944j = 0;

    /* renamed from: n  reason: collision with root package name */
    private final com.tencent.liteav.videobase.utils.k f32948n = new com.tencent.liteav.videobase.utils.k("hwEn" + hashCode());

    public o(Bundle bundle, @NonNull IVideoReporter iVideoReporter, VideoProducerDef.StreamType streamType) {
        this.f32938d = new w(bundle, iVideoReporter, streamType);
        this.f32936b = iVideoReporter;
        this.f32935a = "HardwareVideoEncoder_" + streamType + "_" + hashCode();
    }

    private boolean a(Object obj, Surface surface) {
        if (surface == null) {
            LiteavLog.w(this.f32939e.a("SurfaceNull"), this.f32935a, "init opengl: surface is null.", new Object[0]);
            return false;
        }
        LiteavLog.d(this.f32939e.a("initGL"), this.f32935a, "initOpenGLComponents", new Object[0]);
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.f32941g = eVar;
        try {
            com.tencent.liteav.base.util.q qVar = this.f32937c;
            eVar.a(obj, surface, qVar.f31029a, qVar.f31030b);
            this.f32948n.a((com.tencent.liteav.videobase.frame.e) null);
            com.tencent.liteav.videobase.utils.k kVar = this.f32948n;
            com.tencent.liteav.base.util.q qVar2 = this.f32937c;
            kVar.a(qVar2.f31029a, qVar2.f31030b);
            com.tencent.liteav.base.util.q qVar3 = this.f32937c;
            this.f32942h = new com.tencent.liteav.videobase.frame.j(qVar3.f31029a, qVar3.f31030b);
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            IVideoReporter iVideoReporter = this.f32936b;
            h.c cVar = h.c.WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED;
            iVideoReporter.notifyWarning(cVar, "VideoEncode: create EGLCore failed, EGLCode:" + e10.mErrorCode + " message:" + e10.getMessage(), new Object[0]);
            this.f32938d.a(e10.getMessage());
            LiteavLog.e(this.f32939e.a("initError"), this.f32935a, "create EGLCore failed.", e10);
            this.f32941g = null;
            return false;
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void ackRPSRecvFrameIndex(int i9, int i10) {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0073 A[Catch: g -> 0x00c9, TryCatch #0 {g -> 0x00c9, blocks: (B:18:0x0032, B:20:0x0044, B:23:0x004d, B:27:0x0056, B:33:0x0066, B:35:0x0073, B:36:0x0079, B:38:0x008c, B:39:0x00ae, B:28:0x005a, B:32:0x0063), top: B:44:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008c A[Catch: g -> 0x00c9, TryCatch #0 {g -> 0x00c9, blocks: (B:18:0x0032, B:20:0x0044, B:23:0x004d, B:27:0x0056, B:33:0x0066, B:35:0x0073, B:36:0x0079, B:38:0x008c, B:39:0x00ae, B:28:0x005a, B:32:0x0063), top: B:44:0x0032 }] */
    @Override // com.tencent.liteav.videoproducer.encoder.be
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void encodeFrame(com.tencent.liteav.videobase.frame.PixelFrame r8) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.encoder.o.encodeFrame(com.tencent.liteav.videobase.frame.PixelFrame):void");
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final VideoEncodeParams getEncodeParams() {
        return new VideoEncodeParams(this.f32943i);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final VideoEncoderDef.a getEncoderType() {
        return VideoEncoderDef.a.HARDWARE;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void initialize() {
        LiteavLog.d(this.f32935a, "initialize");
        this.f32945k = new Handler(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f32947m = new com.tencent.liteav.videobase.b.c(this.f32945k.getLooper());
        this.f32938d.a();
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public final void onEncodeError(String str) {
        a(q.a(this, str));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public final void onEncodedFail(h.a aVar) {
        a(t.a(this, aVar));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public final void onEncodedNAL(EncodedVideoFrame encodedVideoFrame, boolean z10) {
        a(s.a(this, encodedVideoFrame, z10));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public final void onOutputFormatChanged(MediaFormat mediaFormat) {
        a(r.a(this, mediaFormat));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public final void onRequestRestart() {
        a(p.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public final void onRpsFrameRateChanged(boolean z10, int i9) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void restartIDRFrame() {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void setBitrate(int i9) {
        LiteavLog.i(this.f32935a, "SetBitrate ".concat(String.valueOf(i9)));
        VideoEncodeParams videoEncodeParams = this.f32943i;
        if (videoEncodeParams != null) {
            videoEncodeParams.bitrate = i9;
        }
        this.f32938d.a(i9);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void setFps(int i9) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void setRPSIFrameFPS(int i9) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void setRPSNearestREFSize(int i9) {
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void setServerConfig(ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32938d.a(serverVideoProducerConfig);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void signalEndOfStream() {
        this.f32938d.b();
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final boolean start(VideoEncodeParams videoEncodeParams, be.a aVar) {
        if (this.f32940f != null) {
            LiteavLog.e(this.f32935a, "Encoder has started");
            return false;
        }
        LiteavLog.i(this.f32935a, "Start hw video encoder. %s", videoEncodeParams);
        this.f32946l = aVar;
        Pair<Surface, com.tencent.liteav.base.util.q> a10 = this.f32938d.a(videoEncodeParams, this);
        this.f32940f = (Surface) a10.first;
        this.f32937c.a((com.tencent.liteav.base.util.q) a10.second);
        this.f32943i = new VideoEncodeParams(videoEncodeParams);
        return this.f32940f != null;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void stop() {
        LiteavLog.d(this.f32935a, "stop");
        a();
        Surface surface = this.f32940f;
        if (surface != null) {
            surface.release();
            this.f32940f = null;
        }
        this.f32938d.c();
        this.f32946l = null;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void takeSnapshot(TakeSnapshotListener takeSnapshotListener) {
        this.f32948n.f31904a = takeSnapshotListener;
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be
    public final void uninitialize() {
        LiteavLog.d(this.f32935a, "uninitialize");
        this.f32938d.d();
        com.tencent.liteav.videobase.b.c cVar = this.f32947m;
        cVar.f31715a.post(com.tencent.liteav.videobase.b.d.a(cVar));
        this.f32945k = null;
    }

    private void a() {
        if (this.f32941g == null) {
            return;
        }
        LiteavLog.d(this.f32939e.a("uninitGL"), this.f32935a, "uninitOpenGLComponents", new Object[0]);
        try {
            this.f32941g.a();
            com.tencent.liteav.videobase.frame.j jVar = this.f32942h;
            if (jVar != null) {
                jVar.a();
                this.f32942h = null;
            }
            this.f32948n.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32939e.a("uninitError"), this.f32935a, "makeCurrent failed.", e10);
        }
        com.tencent.liteav.videobase.b.e.a(this.f32941g);
        this.f32941g = null;
    }

    private void a(Runnable runnable) {
        Handler handler = this.f32945k;
        if (handler != null) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(o oVar) {
        be.a aVar = oVar.f32946l;
        if (aVar != null) {
            aVar.onRequestRestart();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(o oVar, String str) {
        be.a aVar = oVar.f32946l;
        if (aVar != null) {
            aVar.onEncodeError(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(o oVar, MediaFormat mediaFormat) {
        be.a aVar = oVar.f32946l;
        if (aVar != null) {
            aVar.onOutputFormatChanged(mediaFormat);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(o oVar, EncodedVideoFrame encodedVideoFrame, boolean z10) {
        be.a aVar = oVar.f32946l;
        if (aVar != null) {
            aVar.onEncodedNAL(encodedVideoFrame, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(o oVar, h.a aVar) {
        be.a aVar2 = oVar.f32946l;
        if (aVar2 != null) {
            aVar2.onEncodedFail(aVar);
        }
    }
}
