package com.tencent.liteav.videoconsumer.decoder;

import android.media.MediaFormat;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.decoder.az;
import com.tencent.liteav.videoconsumer.decoder.b;
import com.tencent.liteav.videoconsumer.decoder.d;
import java.util.Deque;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
/* loaded from: classes4.dex */
public final class VideoDecodeController implements ba {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final IVideoReporter f32143b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final d f32144c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final ax f32145d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f32146e;

    /* renamed from: f  reason: collision with root package name */
    final com.tencent.liteav.base.util.j f32147f;

    /* renamed from: g  reason: collision with root package name */
    com.tencent.liteav.base.util.p f32148g;

    /* renamed from: h  reason: collision with root package name */
    a f32149h;

    /* renamed from: i  reason: collision with root package name */
    Object f32150i;

    /* renamed from: j  reason: collision with root package name */
    com.tencent.liteav.videobase.b.e f32151j;

    /* renamed from: l  reason: collision with root package name */
    az f32153l;

    /* renamed from: m  reason: collision with root package name */
    JSONArray f32154m;

    /* renamed from: p  reason: collision with root package name */
    ServerVideoConsumerConfig f32157p;

    /* renamed from: q  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.k f32158q;

    /* renamed from: u  reason: collision with root package name */
    private final d.InterfaceC0330d f32162u;

    /* renamed from: a  reason: collision with root package name */
    public String f32142a = "VideoDecodeController";

    /* renamed from: r  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f32159r = new com.tencent.liteav.base.b.b();

    /* renamed from: k  reason: collision with root package name */
    boolean f32152k = false;

    /* renamed from: s  reason: collision with root package name */
    private VideoDecoderDef.ConsumerScene f32160s = VideoDecoderDef.ConsumerScene.UNKNOWN;

    /* renamed from: t  reason: collision with root package name */
    private final Deque<EncodedVideoFrame> f32161t = new LinkedList();

    /* renamed from: n  reason: collision with root package name */
    final AtomicInteger f32155n = new AtomicInteger(0);

    /* renamed from: o  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.j f32156o = new com.tencent.liteav.videobase.utils.j(1);

    /* renamed from: com.tencent.liteav.videoconsumer.decoder.VideoDecodeController$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32163a;

        static {
            int[] iArr = new int[d.c.values().length];
            f32163a = iArr;
            try {
                iArr[d.c.DROP_FRAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32163a[d.c.CONTINUE_DECODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32163a[d.c.SWITCH_TO_HARDWARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32163a[d.c.SWITCH_TO_SOFTWARE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32163a[d.c.RESTART_DECODER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32163a[d.c.REQUEST_KEY_FRAME.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32163a[d.c.REPORT_DECODE_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum DecodeStrategy {
        PREFER_HARDWARE(0),
        PREFER_SOFTWARE(1),
        FORCE_HARDWARE(2),
        FORCE_SOFTWARE(3);
        

        /* renamed from: e  reason: collision with root package name */
        private static final DecodeStrategy[] f32168e = values();
        private final int mValue;

        DecodeStrategy(int i9) {
            this.mValue = i9;
        }

        public static DecodeStrategy a(int i9) {
            DecodeStrategy[] decodeStrategyArr;
            for (DecodeStrategy decodeStrategy : f32168e) {
                if (decodeStrategy.mValue == i9) {
                    return decodeStrategy;
                }
            }
            return PREFER_HARDWARE;
        }
    }

    /* loaded from: classes4.dex */
    public interface a extends ba {
    }

    public VideoDecodeController(@NonNull IVideoReporter iVideoReporter, boolean z10) {
        b unused;
        b unused2;
        d.InterfaceC0330d a10 = ab.a();
        this.f32162u = a10;
        this.f32143b = iVideoReporter;
        this.f32146e = z10;
        unused = b.a.f32243a;
        boolean a11 = ExternalDecodeFactoryManager.a();
        unused2 = b.a.f32243a;
        this.f32144c = new d(a10, iVideoReporter, a11, b.b());
        this.f32145d = new ax(iVideoReporter);
        this.f32142a += "_" + hashCode();
        this.f32158q = new com.tencent.liteav.videobase.utils.k("decoder" + hashCode());
        this.f32147f = new com.tencent.liteav.base.util.j(15, this.f32142a);
        LiteavLog.i(this.f32142a, "mIsTranscodingMode=" + z10);
    }

    public final void a() {
        LiteavLog.i(this.f32142a, "initialize");
        a(ak.a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f32151j != null) {
            return;
        }
        LiteavLog.i(this.f32159r.a("initGL"), this.f32142a, "initializeEGLCoreInternal", new Object[0]);
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.f32151j = eVar;
        try {
            eVar.a(this.f32150i, null, 128, 128);
            this.f32158q.a((com.tencent.liteav.videobase.frame.e) null);
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32159r.a("initGLError"), this.f32142a, "create egl core failed.", e10);
            this.f32143b.notifyWarning(h.c.WARNING_VIDEO_DECODE_EGL_CORE_CREATE_FAILED, "VideoDecode: create EGLCore failed", new Object[0]);
            this.f32151j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        LiteavLog.i(this.f32159r.a("uninitGL"), this.f32142a, "uninitializeEGLCoreInternal()", new Object[0]);
        if (this.f32151j == null) {
            return;
        }
        this.f32158q.a();
        com.tencent.liteav.videobase.b.e.a(this.f32151j);
        this.f32151j = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0104 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoconsumer.decoder.VideoDecodeController.d():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e() {
        int size;
        synchronized (this) {
            size = this.f32161t.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final az.a f() {
        az azVar = this.f32153l;
        if (azVar == null) {
            return null;
        }
        return azVar.getDecoderType();
    }

    public final void g() {
        a(ac.a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        az azVar = this.f32153l;
        if (azVar != null) {
            azVar.stop();
            this.f32153l.uninitialize();
            this.f32153l = null;
        }
        this.f32156o.b();
    }

    public final void i() {
        LiteavLog.i(this.f32142a, "uninitialize");
        a(ag.a(this));
        a(ah.a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        synchronized (this) {
            for (EncodedVideoFrame encodedVideoFrame : this.f32161t) {
                if (encodedVideoFrame != null) {
                    encodedVideoFrame.release();
                }
            }
            this.f32161t.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        try {
            this.f32151j.a();
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32159r.a("makeCurrentError"), this.f32142a, "make current failed.", e10);
            return false;
        }
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onAbandonDecodingFramesCompleted() {
        a(am.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onDecodeCompleted() {
        a(ao.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onDecodeFailed() {
        a(aj.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onDecodeFrame(PixelFrame pixelFrame, long j10) {
        long timestamp = pixelFrame.getTimestamp();
        this.f32156o.a(pixelFrame);
        if (a(ai.a(this, timestamp, j10))) {
            return;
        }
        this.f32156o.b(pixelFrame);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onDecodeLatencyChanged(boolean z10) {
        a(ap.a(this, z10));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onFrameEnqueuedToDecoder() {
        a(an.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public final void onRequestKeyFrame() {
        a(al.a(this));
    }

    public final void a(Object obj) {
        a(aq.a(this, obj));
    }

    public final void a(a aVar) {
        a(at.a(this, aVar));
    }

    public final void a(EncodedVideoFrame encodedVideoFrame) {
        b(encodedVideoFrame);
        a(av.a(this));
    }

    private void c(EncodedVideoFrame encodedVideoFrame) {
        az azVar = this.f32153l;
        if (azVar == null) {
            LiteavLog.e(this.f32142a, "video decoder is null!");
        } else if (azVar.decode(encodedVideoFrame)) {
            d(encodedVideoFrame);
            if (encodedVideoFrame.isEosFrame) {
                return;
            }
            this.f32145d.a(encodedVideoFrame);
            this.f32155n.incrementAndGet();
            this.f32143b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_CACHE, Integer.valueOf(this.f32155n.get() + e()));
        }
    }

    public final void a(VideoDecoderDef.ConsumerScene consumerScene) {
        this.f32160s = consumerScene;
        this.f32144c.f32270z = consumerScene;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(EncodedVideoFrame encodedVideoFrame) {
        if (encodedVideoFrame == null) {
            return;
        }
        synchronized (this) {
            this.f32161t.addLast(encodedVideoFrame);
        }
    }

    private void a(EncodedVideoFrame encodedVideoFrame, az.a aVar) {
        if (this.f32151j == null) {
            LiteavLog.e(this.f32142a, "updateDecoderType mEGLCore is null");
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        h();
        SpsInfo a10 = this.f32162u.a(encodedVideoFrame.isH265(), encodedVideoFrame.data);
        if (aVar == az.a.SOFTWARE) {
            this.f32153l = new SoftwareVideoDecoder(this.f32143b);
        } else {
            d dVar = this.f32144c;
            boolean z10 = dVar.f32268x;
            boolean c10 = dVar.c();
            MediaFormat mediaFormat = encodedVideoFrame.videoFormat;
            if (mediaFormat != null) {
                this.f32153l = new s(mediaFormat, z10, c10, this.f32154m, this.f32143b);
            } else {
                this.f32153l = new s(new com.tencent.liteav.base.util.q(a10.width, a10.height), encodedVideoFrame.isH265(), z10, c10, this.f32154m, this.f32143b);
            }
        }
        this.f32153l.initialize();
        this.f32153l.setServerConfig(this.f32157p);
        this.f32153l.setScene(this.f32160s);
        this.f32153l.start(this.f32151j.d(), this);
        this.f32155n.set(0);
        String str = this.f32142a;
        LiteavLog.i(str, "open decoder cost time: " + (SystemClock.elapsedRealtime() - elapsedRealtime) + ",update decoder type to " + aVar + ", video " + a10);
        this.f32145d.a(this.f32153l.getDecoderType(), encodedVideoFrame.codecType);
    }

    public final void a(DecodeStrategy decodeStrategy) {
        a(ad.a(this, decodeStrategy));
    }

    public final boolean a(Runnable runnable) {
        boolean z10;
        com.tencent.liteav.base.util.j jVar = this.f32147f;
        if (jVar != null) {
            jVar.a(runnable);
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            String str = this.f32142a;
            LiteavLog.w(str, "runnable:" + runnable + " is failed to post, handler:" + jVar);
        }
        return z10;
    }

    private void d(EncodedVideoFrame encodedVideoFrame) {
        synchronized (this) {
            this.f32161t.remove(encodedVideoFrame);
        }
    }
}
