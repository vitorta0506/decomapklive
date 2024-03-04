package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.utils.f;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.encoder.b;
import com.tencent.liteav.videoproducer.encoder.be;
import com.tencent.liteav.videoproducer.encoder.v;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4.dex */
public final class ah implements v.a, be.a {

    /* renamed from: b  reason: collision with root package name */
    private static final PixelFrame f32804b = new PixelFrame();

    /* renamed from: a  reason: collision with root package name */
    private final String f32805a;

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.liteav.videobase.utils.h f32806c;

    /* renamed from: d  reason: collision with root package name */
    private final Bundle f32807d = new Bundle();

    /* renamed from: e  reason: collision with root package name */
    private boolean f32808e = false;

    /* renamed from: f  reason: collision with root package name */
    private CustomHandler f32809f;

    /* renamed from: g  reason: collision with root package name */
    private com.tencent.liteav.base.util.v f32810g;

    /* renamed from: h  reason: collision with root package name */
    private be f32811h;

    /* renamed from: i  reason: collision with root package name */
    private VideoEncoderDef.VideoEncoderDataListener f32812i;

    /* renamed from: j  reason: collision with root package name */
    private Rotation f32813j;

    /* renamed from: k  reason: collision with root package name */
    private Rotation f32814k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f32815l;

    /* renamed from: m  reason: collision with root package name */
    private ServerVideoProducerConfig f32816m;

    /* renamed from: n  reason: collision with root package name */
    private long f32817n;

    /* renamed from: o  reason: collision with root package name */
    private long f32818o;

    /* renamed from: p  reason: collision with root package name */
    private long f32819p;

    /* renamed from: q  reason: collision with root package name */
    private long f32820q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f32821r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32822s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f32823t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    private final IVideoReporter f32824u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    private final b f32825v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    private final com.tencent.liteav.videobase.utils.f f32826w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    private final bd f32827x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    private final VideoProducerDef.StreamType f32828y;

    /* renamed from: z  reason: collision with root package name */
    private final boolean f32829z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.encoder.ah$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32831a;

        static {
            int[] iArr = new int[b.d.values().length];
            f32831a = iArr;
            try {
                iArr[b.d.CONTINUE_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32831a[b.d.RESTART_ENCODER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32831a[b.d.USE_HARDWARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32831a[b.d.USE_SOFTWARE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32831a[b.d.REPORT_ENCODE_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public ah(@NonNull IVideoReporter iVideoReporter, @NonNull VideoProducerDef.StreamType streamType, boolean z10) {
        Rotation rotation = Rotation.NORMAL;
        this.f32813j = rotation;
        this.f32814k = rotation;
        this.f32815l = false;
        this.f32820q = 0L;
        this.f32821r = false;
        this.f32822s = false;
        this.f32823t = false;
        this.f32805a = "VideoEncodeController_" + streamType + "_" + hashCode();
        this.f32824u = iVideoReporter;
        this.f32825v = new b(EncodeAbilityProvider.getInstance().isHWHevcEncodeSupport(), EncodeAbilityProvider.getInstance().isSWHevcEncodeSupport(), iVideoReporter, streamType);
        this.f32826w = new com.tencent.liteav.videobase.utils.f("VideoEncodeController", 2000, new f.a(this) { // from class: com.tencent.liteav.videoproducer.encoder.ai

            /* renamed from: a  reason: collision with root package name */
            private final ah f32832a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32832a = this;
            }

            @Override // com.tencent.liteav.videobase.utils.f.a
            public final void a(double d10) {
                LiteavLog.i(this.f32832a.f32805a, "encoder input fps: ".concat(String.valueOf(d10)));
            }
        });
        this.f32827x = new bd(iVideoReporter, streamType);
        this.f32828y = streamType;
        this.f32829z = z10;
        this.f32806c = z10 ? new com.tencent.liteav.videobase.utils.b() : new com.tencent.liteav.videobase.utils.j(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(ah ahVar) {
        if (!ahVar.f32821r) {
            LiteavLog.i(ahVar.f32805a, "encoder receive first frame");
            ahVar.f32820q = SystemClock.elapsedRealtime();
            if (ahVar.f()) {
                ahVar.m();
            }
            ahVar.f32821r = true;
        }
        ahVar.f32826w.a();
    }

    static /* synthetic */ boolean i(ah ahVar) {
        ahVar.f32823t = false;
        return false;
    }

    static /* synthetic */ CustomHandler j(ah ahVar) {
        ahVar.f32809f = null;
        return null;
    }

    private CodecType k() {
        be beVar = this.f32811h;
        if (beVar == null) {
            return null;
        }
        return beVar.getEncodeParams().codecType;
    }

    private VideoEncoderDef.ReferenceStrategy l() {
        be beVar = this.f32811h;
        if (beVar == null) {
            return null;
        }
        return beVar.getEncodeParams().referenceStrategy;
    }

    private void m() {
        CustomHandler customHandler;
        if (this.f32810g != null) {
            LiteavLog.i(this.f32805a, "timer is not null before start.");
            return;
        }
        synchronized (this) {
            customHandler = this.f32809f;
        }
        if (customHandler == null) {
            LiteavLog.i(this.f32805a, "startInternal handler is null.");
            return;
        }
        com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(customHandler.getLooper(), this);
        this.f32810g = vVar;
        vVar.a(0, 15);
        VideoEncodeParams a10 = this.f32825v.a();
        if (a10.fps != 0) {
            this.f32817n = SystemClock.elapsedRealtime() + (TimeUnit.SECONDS.toMillis(1L) / a10.fps);
        } else {
            this.f32817n = SystemClock.elapsedRealtime() + (TimeUnit.SECONDS.toMillis(1L) / 20);
        }
    }

    private void n() {
        com.tencent.liteav.base.util.v vVar = this.f32810g;
        if (vVar != null) {
            vVar.a();
            this.f32810g = null;
        }
    }

    public final void b() {
        a(new Runnable() { // from class: com.tencent.liteav.videoproducer.encoder.ah.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (this) {
                    if (!ah.this.f32823t) {
                        LiteavLog.i(ah.this.f32805a, "not initialized.");
                        return;
                    }
                    LiteavLog.d(ah.this.f32805a, "uninitialize");
                    CustomHandler customHandler = ah.this.f32809f;
                    ah.i(ah.this);
                    ah.j(ah.this);
                    if (customHandler != null) {
                        customHandler.a();
                    }
                }
            }
        }, "uninitialize");
    }

    public final void c() {
        this.f32808e = true;
        this.f32806c.a(f32804b);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public final void onEncodeError(String str) {
        a(ar.a(this, str), "onEncodeError");
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public final void onEncodedFail(h.a aVar) {
        a(av.a(this, aVar), "onEncodedFail");
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public final void onEncodedNAL(EncodedVideoFrame encodedVideoFrame, boolean z10) {
        if (encodedVideoFrame == null) {
            LiteavLog.d(this.f32805a, "onEncodedNAL encoded frame is null.");
            return;
        }
        synchronized (this) {
            if (!this.f32823t) {
                LiteavLog.d(this.f32805a, "onEncodedNAL called when uninitialized!");
            } else {
                a(au.a(this, z10, encodedVideoFrame), "");
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
    public final void onOutputFormatChanged(MediaFormat mediaFormat) {
        LiteavLog.i(this.f32805a, "onOutputFormatChanged: ".concat(String.valueOf(mediaFormat)));
        VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener = this.f32812i;
        if (videoEncoderDataListener != null) {
            videoEncoderDataListener.onOutputFormatChanged(mediaFormat);
        }
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public final void onRequestRestart() {
        LiteavLog.i(this.f32805a, "onRequestRestart");
        a(aq.a(this), "restartEncoder");
    }

    @Override // com.tencent.liteav.videoproducer.encoder.be.a
    public final void onRpsFrameRateChanged(boolean z10, int i9) {
        a(at.a(this, z10, i9), "onRpsFrameRateChanged");
    }

    @Override // com.tencent.liteav.base.util.v.a
    public final void onTimeout() {
        VideoEncodeParams a10;
        if (SystemClock.elapsedRealtime() < this.f32817n) {
            return;
        }
        if (this.f32825v.a().fps != 0) {
            this.f32817n += TimeUnit.SECONDS.toMillis(1L) / a10.fps;
            g();
            return;
        }
        LiteavLog.w(this.f32805a, "onTimeout: encode param is null.");
    }

    private void b(PixelFrame pixelFrame) {
        if (pixelFrame == f32804b) {
            be beVar = this.f32811h;
            if (beVar != null) {
                beVar.signalEndOfStream();
                return;
            }
            return;
        }
        be beVar2 = this.f32811h;
        if (beVar2 != null) {
            beVar2.encodeFrame(c(pixelFrame));
        }
        if (pixelFrame != null) {
            pixelFrame.release();
        }
    }

    private boolean f() {
        return !this.f32829z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        PixelFrame a10 = this.f32806c.a();
        if (a10 == null) {
            return;
        }
        bd bdVar = this.f32827x;
        if (bdVar.f32922f == null) {
            com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(Looper.myLooper(), bdVar);
            bdVar.f32922f = vVar;
            vVar.a(0, 1000);
        }
        if (bdVar.f32919c.containsKey(Long.valueOf(a10.getTimestamp()))) {
            String str = bdVar.f32917a;
            LiteavLog.i(str, "Duplicate timestamp!" + a10.getTimestamp());
        }
        bdVar.f32919c.put(Long.valueOf(a10.getTimestamp()), Long.valueOf(SystemClock.elapsedRealtime()));
        int i9 = AnonymousClass2.f32831a[this.f32825v.a(a10).ordinal()];
        if (i9 == 1) {
            b(a10);
        } else if (i9 == 2) {
            h();
            b(a10);
        } else if (i9 == 3) {
            a(VideoEncoderDef.a.HARDWARE);
            b(a10);
        } else if (i9 == 4) {
            a(VideoEncoderDef.a.SOFTWARE);
            b(a10);
        } else if (i9 != 5) {
            if (a10 != f32804b) {
                a10.release();
            }
            LiteavLog.i(this.f32805a, "encode ask instruction return default.");
        } else {
            if (a10 != f32804b) {
                bd bdVar2 = this.f32827x;
                if (bdVar2.f32919c.containsKey(Long.valueOf(a10.getTimestamp()))) {
                    bdVar2.f32919c.remove(Long.valueOf(a10.getTimestamp()));
                }
                a10.release();
            }
            onEncodedFail(h.a.ERR_VIDEO_ENCODE_FAIL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        VideoEncoderDef.a j10 = j();
        if (j10 != null) {
            a(j10);
        }
    }

    private void i() {
        be beVar = this.f32811h;
        if (beVar != null) {
            beVar.stop();
            this.f32811h.uninitialize();
            this.f32811h = null;
            this.f32824u.notifyEvent(h.b.EVT_VIDEO_ENCODE_STOP_SUCCESS, "stop encoder success", new Object[0]);
        }
    }

    private VideoEncoderDef.a j() {
        be beVar = this.f32811h;
        if (beVar == null) {
            return null;
        }
        return beVar.getEncoderType();
    }

    public final void a() {
        synchronized (this) {
            if (this.f32823t) {
                LiteavLog.i(this.f32805a, "already initialzied");
                return;
            }
            LiteavLog.i(this.f32805a, "initialzie");
            HandlerThread handlerThread = new HandlerThread("video-encoder");
            handlerThread.start();
            this.f32809f = new CustomHandler(handlerThread.getLooper());
            this.f32823t = true;
        }
    }

    public final void d() {
        a(ba.a(this), "Stop");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ah ahVar) {
        LiteavLog.d(ahVar.f32805a, "stop");
        ahVar.n();
        ahVar.i();
        ahVar.f32806c.b();
        ahVar.f32821r = false;
        ahVar.f32822s = false;
        ahVar.f32826w.b();
        b bVar = ahVar.f32825v;
        bVar.b();
        bVar.f32881o = null;
        bVar.f32882p = null;
        bVar.f32869c = 0L;
        bVar.f32870d = 0.0f;
        bVar.f32871e = 0.0f;
        bVar.f32872f = 0.0f;
        bVar.f32873g = 0.0d;
        bVar.f32874h = false;
        bVar.f32876j = VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE;
        bVar.f32875i = false;
        bVar.f32877k = null;
        bVar.f32878l = b.e.NONE;
        bVar.f32879m = 0;
        bVar.f32880n = 0;
        bVar.f32885s = false;
        bVar.f32886t = 0;
        bd bdVar = ahVar.f32827x;
        bdVar.f32919c.clear();
        bdVar.f32921e = 0L;
        bdVar.f32920d = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ah ahVar, Rotation rotation) {
        if (rotation == null || ahVar.f32813j == rotation) {
            return;
        }
        LiteavLog.i(ahVar.f32805a, "set camera rotation to: ".concat(String.valueOf(rotation)));
        ahVar.f32813j = rotation;
    }

    public final VideoEncodeParams e() {
        VideoEncodeParams a10;
        FutureTask futureTask = new FutureTask(ap.a(this));
        a(futureTask, "getEncodeParams");
        try {
            a10 = (VideoEncodeParams) futureTask.get(500L, TimeUnit.MILLISECONDS);
        } catch (Exception e10) {
            if (e10 instanceof TimeoutException) {
                LiteavLog.w(this.f32805a, "getEncodeParams future task timeout:".concat(String.valueOf(e10)));
            } else {
                LiteavLog.w(this.f32805a, "getEncodeParams future task error: ".concat(String.valueOf(e10)));
            }
            synchronized (this) {
                a10 = this.f32825v.a();
            }
        }
        if (a10 != null) {
            return new VideoEncodeParams(a10);
        }
        return null;
    }

    public final void b(Rotation rotation) {
        a(aj.a(this, rotation), "setEncodeRotation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, TakeSnapshotListener takeSnapshotListener) {
        be beVar = ahVar.f32811h;
        if (beVar != null) {
            beVar.takeSnapshot(takeSnapshotListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ah ahVar) {
        be beVar = ahVar.f32811h;
        if (beVar != null) {
            beVar.restartIDRFrame();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ah ahVar, int i9) {
        be beVar = ahVar.f32811h;
        if (beVar != null) {
            beVar.setRPSIFrameFPS(i9);
        }
    }

    public final void a(ServerVideoProducerConfig serverVideoProducerConfig) {
        a(aw.a(this, serverVideoProducerConfig), "setServerConfig");
    }

    public final void a(VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        a(ax.a(this, videoEncodeParams, videoEncoderDataListener), "Start");
    }

    public final void a(PixelFrame pixelFrame) {
        if (pixelFrame == null) {
            return;
        }
        if (pixelFrame.getGLContext() != null) {
            GLES20.glFinish();
        }
        a(ay.a(this), "");
        if (this.f32808e) {
            return;
        }
        this.f32806c.a(pixelFrame);
        if (f()) {
            return;
        }
        a(az.a(this), "encodeFrameInternal");
    }

    private void a(@NonNull VideoEncoderDef.a aVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        VideoEncoderDef.a j10 = j();
        CodecType k10 = k();
        VideoEncoderDef.ReferenceStrategy l10 = l();
        i();
        ServerVideoProducerConfig serverVideoProducerConfig = this.f32816m;
        if ((serverVideoProducerConfig == null || serverVideoProducerConfig.isHardwareEncoderAllowed()) && VideoEncoderDef.a.HARDWARE == aVar) {
            this.f32811h = new o(this.f32807d, this.f32824u, this.f32828y);
            LiteavLog.i(this.f32805a, "create HardwareVideoEncoder");
        } else {
            this.f32811h = new SoftwareVideoEncoder(this.f32824u, this.f32828y);
            LiteavLog.i(this.f32805a, "create SoftwareVideoEncoder");
        }
        this.f32811h.initialize();
        this.f32811h.setServerConfig(this.f32816m);
        VideoEncodeParams a10 = this.f32825v.a();
        a10.baseGopIndex = this.f32819p + 1;
        a10.baseFrameIndex = this.f32818o + 20;
        if (this.f32811h.start(a10, this)) {
            this.f32824u.notifyEvent(h.b.EVT_VIDEO_ENCODE_START_SUCCESS, "start encoder success.", new Object[0]);
        } else {
            this.f32825v.f32874h = true;
        }
        if (aVar != j10 || a10.codecType != k10 || a10.referenceStrategy != l10) {
            this.f32824u.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODER_TYPE, this.f32828y.mValue, new VideoEncoderDef.EncoderProperty(aVar, a10.isEnablesRps() ? VideoEncoderDef.ReferenceStrategy.RPS : VideoEncoderDef.ReferenceStrategy.FIX_GOP, a10.codecType));
        }
        String str = this.f32805a;
        LiteavLog.i(str, "open encoder cost time: " + (SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    private PixelFrame c(PixelFrame pixelFrame) {
        PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
        pixelFrame2.postRotate(this.f32813j);
        pixelFrame2.postRotate(this.f32814k);
        if (this.f32815l) {
            Rotation rotation = this.f32813j;
            if (rotation != Rotation.ROTATION_90 && rotation != Rotation.ROTATION_270) {
                pixelFrame2.setMirrorHorizontal(!pixelFrame2.isMirrorHorizontal());
            } else {
                pixelFrame2.setMirrorVertical(!pixelFrame2.isMirrorVertical());
            }
            return pixelFrame2;
        }
        return pixelFrame2;
    }

    public final void a(VideoEncoderDef.EncodeStrategy encodeStrategy) {
        a(bb.a(this, encodeStrategy), "setEncodeStrategy");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        if (encodeStrategy == null) {
            return;
        }
        b bVar = ahVar.f32825v;
        if (bVar.f32876j != encodeStrategy) {
            LiteavLog.i(bVar.f32867a, "strategy = ".concat(String.valueOf(encodeStrategy)));
            bVar.f32876j = encodeStrategy;
            bVar.f32877k = null;
            EncodeAbilityProvider.getInstance().setRPSEncodeSupported(encodeStrategy != VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY);
            bVar.f32883q.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODER_ABILITY, bVar.f32884r.mValue, EncodeAbilityProvider.getInstance().getEncodeAbility());
        }
    }

    public final void a(Rotation rotation) {
        a(bc.a(this, rotation), "setCameraRotation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, Rotation rotation) {
        if (rotation == null || ahVar.f32814k == rotation) {
            return;
        }
        LiteavLog.i(ahVar.f32805a, "setEncodeRotation: ".concat(String.valueOf(rotation)));
        ahVar.f32814k = rotation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, int i9) {
        be beVar = ahVar.f32811h;
        if (beVar != null) {
            beVar.setRPSNearestREFSize(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, int i9, int i10) {
        be beVar = ahVar.f32811h;
        if (beVar != null) {
            beVar.ackRPSRecvFrameIndex(i9, i10);
        }
    }

    private void a(long j10, long j11) {
        this.f32818o = j10;
        this.f32819p = j11;
    }

    public final void a(VideoEncodeParams videoEncodeParams) {
        a(ao.a(this, videoEncodeParams), "reconfig");
    }

    public final void a(Runnable runnable, String str) {
        synchronized (this) {
            if (!this.f32823t) {
                LiteavLog.w(this.f32805a, "runOnEncodeThread before initialize! ".concat(String.valueOf(str)));
                return;
            }
            CustomHandler customHandler = this.f32809f;
            if (customHandler == null) {
                LiteavLog.w(this.f32805a, "ignore runnable: ".concat(String.valueOf(str)));
            } else if (Looper.myLooper() == customHandler.getLooper()) {
                runnable.run();
            } else {
                customHandler.post(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ VideoEncodeParams a(ah ahVar) throws Exception {
        return new VideoEncodeParams(ahVar.f32825v.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, String str) {
        LiteavLog.i(ahVar.f32805a, "onEncodeError: ".concat(String.valueOf(str)));
        ahVar.f32825v.f32874h = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, boolean z10, int i9) {
        b bVar = ahVar.f32825v;
        bVar.f32885s = z10;
        bVar.f32886t = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, boolean z10, EncodedVideoFrame encodedVideoFrame) {
        long j10;
        long j11;
        if (!ahVar.f32822s) {
            ahVar.f32822s = true;
            LiteavLog.i(ahVar.f32805a, "encode first frame cost time: " + (SystemClock.elapsedRealtime() - ahVar.f32820q));
        }
        if (!z10) {
            ahVar.a(encodedVideoFrame.frameIndex, encodedVideoFrame.gopIndex);
            b bVar = ahVar.f32825v;
            bVar.f32868b++;
            v vVar = bVar.f32887u;
            if (encodedVideoFrame.data == null) {
                LiteavLog.w(vVar.f32967a, "encodedVideoFrame is null.");
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime <= vVar.f32975i + vVar.f32969c) {
                    vVar.f32970d++;
                } else {
                    double d10 = (vVar.f32970d * 1000.0d) / (elapsedRealtime - j10);
                    vVar.f32968b = d10;
                    vVar.f32970d = 1L;
                    vVar.f32969c = elapsedRealtime;
                    v.a aVar = vVar.f32974h;
                    if (aVar != null) {
                        aVar.a(d10);
                    }
                }
                boolean z11 = encodedVideoFrame.nalType == com.tencent.liteav.videobase.common.a.IDR;
                long remaining = encodedVideoFrame.data.remaining();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                if (z11) {
                    if (elapsedRealtime2 > vVar.f32976j + vVar.f32972f) {
                        long j12 = (long) (((vVar.f32973g * 8000.0d) / (elapsedRealtime2 - j11)) / 1024.0d);
                        vVar.f32971e = j12;
                        vVar.f32973g = 0L;
                        vVar.f32972f = elapsedRealtime2;
                        v.a aVar2 = vVar.f32974h;
                        if (aVar2 != null) {
                            aVar2.a(j12);
                        }
                    }
                }
                vVar.f32973g += remaining;
            }
            bd bdVar = ahVar.f32827x;
            if (bdVar.f32919c.containsKey(Long.valueOf(encodedVideoFrame.dts))) {
                long elapsedRealtime3 = SystemClock.elapsedRealtime() - bdVar.f32919c.remove(Long.valueOf(encodedVideoFrame.dts)).longValue();
                bdVar.f32921e++;
                bdVar.f32920d += elapsedRealtime3;
                bdVar.f32918b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODER_COST, Long.valueOf(elapsedRealtime3));
            }
        } else {
            LiteavLog.i(ahVar.f32805a, "got eos");
        }
        VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener = ahVar.f32812i;
        if (videoEncoderDataListener != null) {
            videoEncoderDataListener.onEncodedNAL(encodedVideoFrame, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, h.a aVar) {
        LiteavLog.i(ahVar.f32805a, "onEncodedFail: ".concat(String.valueOf(aVar)));
        ahVar.f32824u.notifyError(h.a.ERR_VIDEO_ENCODE_FATALERROR, "encode fail:".concat(String.valueOf(aVar)), new Object[0]);
        VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener = ahVar.f32812i;
        if (videoEncoderDataListener != null) {
            videoEncoderDataListener.onEncodedFail(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, VideoEncodeParams videoEncodeParams) {
        LiteavLog.i(ahVar.f32805a, "reconfig: ".concat(String.valueOf(videoEncodeParams)));
        if (videoEncodeParams != null) {
            VideoEncodeParams a10 = ahVar.f32825v.a();
            ahVar.f32825v.a(videoEncodeParams);
            VideoEncodeParams a11 = ahVar.f32825v.a();
            be beVar = ahVar.f32811h;
            if (beVar != null) {
                beVar.setFps(a11.fps);
                ahVar.f32811h.setBitrate(a11.bitrate);
                if (!ahVar.f() || a11.fps == a10.fps) {
                    return;
                }
                ahVar.n();
                ahVar.m();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ah ahVar, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        if (videoEncodeParams != null && videoEncodeParams.width != 0 && videoEncodeParams.height != 0 && videoEncodeParams.fps != 0 && videoEncodeParams.gop != 0 && videoEncodeParams.bitrate != 0) {
            ahVar.f32812i = videoEncoderDataListener;
            ahVar.f32825v.a(videoEncodeParams);
            ahVar.a(videoEncodeParams.baseFrameIndex, videoEncodeParams.baseGopIndex);
            if (ahVar.f()) {
                ahVar.m();
                return;
            } else {
                ahVar.n();
                return;
            }
        }
        LiteavLog.e(ahVar.f32805a, "invalid params, Start failed.");
    }
}
