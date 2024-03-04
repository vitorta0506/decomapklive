package com.tencent.liteav.videoproducer.encoder;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.encoder.b;
import com.tencent.liteav.videoproducer.encoder.v;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public final class b implements v.a, v.a {

    /* renamed from: v  reason: collision with root package name */
    private static final C0333b f32866v = new C0333b(d.CONTINUE_ENCODE, e.NONE);
    private boolean A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    final String f32867a;

    /* renamed from: o  reason: collision with root package name */
    VideoEncodeParams f32881o;

    /* renamed from: p  reason: collision with root package name */
    VideoEncodeParams f32882p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    final IVideoReporter f32883q;

    /* renamed from: r  reason: collision with root package name */
    final VideoProducerDef.StreamType f32884r;

    /* renamed from: u  reason: collision with root package name */
    final v f32887u;

    /* renamed from: z  reason: collision with root package name */
    private com.tencent.liteav.base.util.v f32891z;

    /* renamed from: w  reason: collision with root package name */
    private long f32888w = 0;

    /* renamed from: b  reason: collision with root package name */
    long f32868b = 0;

    /* renamed from: x  reason: collision with root package name */
    private long f32889x = 0;

    /* renamed from: y  reason: collision with root package name */
    private long f32890y = 0;

    /* renamed from: c  reason: collision with root package name */
    long f32869c = 0;

    /* renamed from: d  reason: collision with root package name */
    float f32870d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    float f32871e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    float f32872f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    double f32873g = 0.0d;

    /* renamed from: h  reason: collision with root package name */
    boolean f32874h = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f32875i = false;

    /* renamed from: j  reason: collision with root package name */
    VideoEncoderDef.EncodeStrategy f32876j = VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE;

    /* renamed from: k  reason: collision with root package name */
    VideoEncoderDef.a f32877k = null;

    /* renamed from: l  reason: collision with root package name */
    e f32878l = e.NONE;

    /* renamed from: m  reason: collision with root package name */
    int f32879m = 0;

    /* renamed from: n  reason: collision with root package name */
    int f32880n = 0;

    /* renamed from: s  reason: collision with root package name */
    boolean f32885s = false;

    /* renamed from: t  reason: collision with root package name */
    int f32886t = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface a {
        C0333b a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.encoder.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0333b {

        /* renamed from: a  reason: collision with root package name */
        public final d f32892a;

        /* renamed from: b  reason: collision with root package name */
        public final e f32893b;

        public C0333b(d dVar, e eVar) {
            this.f32892a = dVar;
            this.f32893b = eVar;
        }
    }

    /* loaded from: classes4.dex */
    public enum d {
        CONTINUE_ENCODE(0),
        RESTART_ENCODER(1),
        USE_HARDWARE(2),
        USE_SOFTWARE(3),
        REPORT_ENCODE_FAILED(4);
        
        private final int mPriority;

        d(int i9) {
            this.mPriority = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum e {
        NONE(0),
        STRATEGY(1),
        LOW_RESOLUTION_LIMIT(1),
        INPUT_OUTPUT_DIFFERENCE(2),
        NO_OUTPUT(3),
        CPU_USAGE(4),
        SVC_SCENE(5),
        RPS_SCENE(6),
        ENCODER_ERROR(7),
        OTHERS_DO_NOT_SUPPORT_H265(8);
        
        final int mPriority;

        e(int i9) {
            this.mPriority = i9;
        }
    }

    public b(boolean z10, boolean z11, @NonNull IVideoReporter iVideoReporter, VideoProducerDef.StreamType streamType) {
        this.f32883q = iVideoReporter;
        this.A = z10;
        this.B = z11;
        this.f32884r = streamType;
        this.f32887u = new v(this, streamType);
        this.f32867a = "EncoderSupervisor_" + streamType + "_" + hashCode();
    }

    private void c() {
        EncodeAbilityProvider.getInstance().setHevcEncodeSupported(false);
        this.f32883q.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODER_ABILITY, this.f32884r.mValue, EncodeAbilityProvider.getInstance().getEncodeAbility());
    }

    private boolean d() {
        VideoEncoderDef.EncodeStrategy encodeStrategy = this.f32876j;
        return encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE || encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_SOFTWARE || encodeStrategy == VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY;
    }

    private boolean e() {
        VideoEncoderDef.EncodeStrategy encodeStrategy = this.f32876j;
        return encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE || encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_SOFTWARE || encodeStrategy == VideoEncoderDef.EncodeStrategy.USE_SOFTWARE_ONLY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C0333b f() {
        if (this.f32874h) {
            this.f32874h = false;
            if (this.f32877k == VideoEncoderDef.a.HARDWARE) {
                this.f32879m++;
                VideoEncodeParams videoEncodeParams = this.f32881o;
                if (videoEncodeParams == null) {
                    return f32866v;
                }
                if (videoEncodeParams.codecType == CodecType.H265) {
                    this.A = false;
                    if (e() && this.B && this.f32880n < 5) {
                        return new C0333b(d.USE_SOFTWARE, e.OTHERS_DO_NOT_SUPPORT_H265);
                    }
                    this.f32879m = 0;
                    VideoEncodeParams videoEncodeParams2 = this.f32881o;
                    CodecType codecType = CodecType.H264;
                    videoEncodeParams2.setCodecType(codecType);
                    VideoEncodeParams videoEncodeParams3 = this.f32882p;
                    if (videoEncodeParams3 != null) {
                        videoEncodeParams3.setCodecType(codecType);
                    }
                    c();
                    C0333b h10 = h();
                    return h10 == null ? new C0333b(d.RESTART_ENCODER, e.ENCODER_ERROR) : h10;
                } else if (e() && this.f32880n < 5) {
                    return new C0333b(d.USE_SOFTWARE, e.ENCODER_ERROR);
                } else {
                    return new C0333b(d.REPORT_ENCODE_FAILED, e.NONE);
                }
            }
            this.f32880n++;
            VideoEncodeParams videoEncodeParams4 = this.f32881o;
            if (videoEncodeParams4 == null) {
                return f32866v;
            }
            if (videoEncodeParams4.codecType == CodecType.H265) {
                this.B = false;
                if (d() && this.A && this.f32879m <= 0) {
                    return new C0333b(d.USE_HARDWARE, e.OTHERS_DO_NOT_SUPPORT_H265);
                }
                this.f32880n = 0;
                VideoEncodeParams videoEncodeParams5 = this.f32881o;
                CodecType codecType2 = CodecType.H264;
                videoEncodeParams5.setCodecType(codecType2);
                VideoEncodeParams videoEncodeParams6 = this.f32882p;
                if (videoEncodeParams6 != null) {
                    videoEncodeParams6.setCodecType(codecType2);
                }
                c();
                C0333b h11 = h();
                return h11 == null ? new C0333b(d.RESTART_ENCODER, e.ENCODER_ERROR) : h11;
            } else if (d() && this.f32879m <= 0) {
                return new C0333b(d.USE_HARDWARE, e.ENCODER_ERROR);
            } else {
                if (this.f32880n >= 5) {
                    return new C0333b(d.REPORT_ENCODE_FAILED, e.NONE);
                }
                return new C0333b(d.RESTART_ENCODER, e.ENCODER_ERROR);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C0333b g() {
        VideoEncodeParams videoEncodeParams;
        VideoEncodeParams videoEncodeParams2 = this.f32881o;
        boolean z10 = false;
        boolean z11 = videoEncodeParams2 == null || videoEncodeParams2.codecType == CodecType.H264;
        if ((z11 && this.f32882p == null) || ((videoEncodeParams = this.f32882p) != null && videoEncodeParams.codecType == CodecType.H264)) {
            z10 = true;
        }
        if (z10) {
            C0333b h10 = h();
            return (h10 != null || z11) ? h10 : new C0333b(d.RESTART_ENCODER, e.NONE);
        }
        return null;
    }

    private C0333b h() {
        VideoEncoderDef.EncodeStrategy encodeStrategy = this.f32876j;
        if (encodeStrategy == VideoEncoderDef.EncodeStrategy.USE_SOFTWARE_ONLY && this.f32877k != VideoEncoderDef.a.SOFTWARE) {
            return new C0333b(d.USE_SOFTWARE, e.STRATEGY);
        }
        VideoEncoderDef.EncodeStrategy encodeStrategy2 = VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE;
        if ((encodeStrategy == encodeStrategy2 || encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_SOFTWARE || encodeStrategy == VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY) && this.f32877k == null) {
            if (encodeStrategy != encodeStrategy2 && encodeStrategy != VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY) {
                return new C0333b(d.USE_SOFTWARE, e.STRATEGY);
            }
            return new C0333b(d.USE_HARDWARE, e.STRATEGY);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b i(b bVar) {
        VideoEncoderDef.a aVar;
        if (bVar.e() && ((aVar = bVar.f32877k) == VideoEncoderDef.a.HARDWARE || aVar == null)) {
            VideoEncodeParams videoEncodeParams = bVar.f32881o;
            boolean z10 = false;
            int i9 = videoEncodeParams != null ? videoEncodeParams.width * videoEncodeParams.height : 0;
            boolean z11 = i9 != 0 && i9 <= 10000;
            VideoEncodeParams videoEncodeParams2 = bVar.f32882p;
            int i10 = videoEncodeParams2 != null ? videoEncodeParams2.width * videoEncodeParams2.height : 0;
            if (i10 != 0 && i10 <= 10000) {
                z10 = true;
            }
            if (z10 || (videoEncodeParams2 == null && z11)) {
                return new C0333b(d.USE_SOFTWARE, e.LOW_RESOLUTION_LIMIT);
            }
        }
        return f32866v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b j(b bVar) {
        VideoEncodeParams videoEncodeParams = bVar.f32882p;
        if (videoEncodeParams == null) {
            return f32866v;
        }
        C0333b c0333b = f32866v;
        boolean isEnablesRps = videoEncodeParams.isEnablesRps();
        VideoEncodeParams videoEncodeParams2 = bVar.f32881o;
        if (isEnablesRps != (videoEncodeParams2 != null && videoEncodeParams2.isEnablesRps())) {
            VideoEncoderDef.EncodeStrategy encodeStrategy = bVar.f32876j;
            if (encodeStrategy != VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY) {
                if (isEnablesRps && bVar.f32877k != VideoEncoderDef.a.SOFTWARE) {
                    return new C0333b(d.USE_SOFTWARE, e.RPS_SCENE);
                }
                if (!isEnablesRps && encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE) {
                    return new C0333b(d.USE_HARDWARE, e.RPS_SCENE);
                }
                return new C0333b(d.RESTART_ENCODER, e.RPS_SCENE);
            } else if (isEnablesRps) {
                String str = bVar.f32867a;
                LiteavLog.e(str, "checkRpsStatus, enable rps failed while current encode strategy is " + bVar.f32876j);
                C0333b c0333b2 = new C0333b(d.REPORT_ENCODE_FAILED, e.RPS_SCENE);
                bVar.f32882p.setReferenceStrategy(VideoEncoderDef.ReferenceStrategy.FIX_GOP);
                return c0333b2;
            } else {
                return c0333b;
            }
        }
        return c0333b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b k(b bVar) {
        VideoEncodeParams videoEncodeParams = bVar.f32882p;
        if (videoEncodeParams == null) {
            return f32866v;
        }
        C0333b c0333b = f32866v;
        boolean isEnablesSvc = videoEncodeParams.isEnablesSvc();
        VideoEncodeParams videoEncodeParams2 = bVar.f32881o;
        if (isEnablesSvc != (videoEncodeParams2 != null && videoEncodeParams2.isEnablesSvc())) {
            VideoEncoderDef.EncodeStrategy encodeStrategy = bVar.f32876j;
            if (encodeStrategy == VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY) {
                if (isEnablesSvc) {
                    LiteavLog.e(bVar.f32867a, "Can't use svc mode in use hardware only strategy!");
                    C0333b c0333b2 = new C0333b(d.CONTINUE_ENCODE, e.SVC_SCENE);
                    bVar.f32882p.setReferenceStrategy(VideoEncoderDef.ReferenceStrategy.FIX_GOP);
                    return c0333b2;
                }
                return c0333b;
            } else if (isEnablesSvc && bVar.f32877k != VideoEncoderDef.a.SOFTWARE) {
                return new C0333b(d.USE_SOFTWARE, e.SVC_SCENE);
            } else {
                if (!isEnablesSvc && encodeStrategy == VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE) {
                    return new C0333b(d.USE_HARDWARE, e.SVC_SCENE);
                }
                return new C0333b(d.RESTART_ENCODER, e.SVC_SCENE);
            }
        }
        return c0333b;
    }

    public final d a(PixelFrame pixelFrame) {
        if (pixelFrame != null) {
            this.f32888w++;
        }
        List<a> arrayList = new ArrayList(Arrays.asList(new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.c

            /* renamed from: a  reason: collision with root package name */
            private final b f32923a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32923a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.a(this.f32923a);
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.g

            /* renamed from: a  reason: collision with root package name */
            private final b f32927a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32927a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.b(this.f32927a);
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.h

            /* renamed from: a  reason: collision with root package name */
            private final b f32928a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32928a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.c(this.f32928a);
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.i

            /* renamed from: a  reason: collision with root package name */
            private final b f32929a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32929a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                b.C0333b g10;
                g10 = this.f32929a.g();
                return g10;
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.j

            /* renamed from: a  reason: collision with root package name */
            private final b f32930a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32930a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.e(this.f32930a);
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.k

            /* renamed from: a  reason: collision with root package name */
            private final b f32931a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32931a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                b.C0333b f10;
                f10 = this.f32931a.f();
                return f10;
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.l

            /* renamed from: a  reason: collision with root package name */
            private final b f32932a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32932a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.g(this.f32932a);
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.m

            /* renamed from: a  reason: collision with root package name */
            private final b f32933a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32933a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.h(this.f32933a);
            }
        }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.n

            /* renamed from: a  reason: collision with root package name */
            private final b f32934a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32934a = this;
            }

            @Override // com.tencent.liteav.videoproducer.encoder.b.a
            public final b.C0333b a() {
                return b.i(this.f32934a);
            }
        }));
        if (this.f32876j != VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY) {
            arrayList.addAll(Arrays.asList(new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.d

                /* renamed from: a  reason: collision with root package name */
                private final b f32924a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32924a = this;
                }

                @Override // com.tencent.liteav.videoproducer.encoder.b.a
                public final b.C0333b a() {
                    return b.j(this.f32924a);
                }
            }, new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.e

                /* renamed from: a  reason: collision with root package name */
                private final b f32925a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32925a = this;
                }

                @Override // com.tencent.liteav.videoproducer.encoder.b.a
                public final b.C0333b a() {
                    return b.k(this.f32925a);
                }
            }));
        }
        VideoEncodeParams videoEncodeParams = this.f32881o;
        if (videoEncodeParams != null && videoEncodeParams.isTranscodingMode()) {
            arrayList = Arrays.asList(new a(this) { // from class: com.tencent.liteav.videoproducer.encoder.f

                /* renamed from: a  reason: collision with root package name */
                private final b f32926a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32926a = this;
                }

                @Override // com.tencent.liteav.videoproducer.encoder.b.a
                public final b.C0333b a() {
                    b.C0333b f10;
                    f10 = this.f32926a.f();
                    return f10;
                }
            });
        }
        C0333b c0333b = null;
        for (a aVar : arrayList) {
            C0333b a10 = aVar.a();
            if (a10 != null) {
                if (c0333b != null) {
                    if (a10.f32892a.mPriority > c0333b.f32892a.mPriority || (a10.f32892a == c0333b.f32892a && a10.f32893b.mPriority > c0333b.f32893b.mPriority)) {
                    }
                }
                c0333b = a10;
            }
        }
        VideoEncodeParams videoEncodeParams2 = this.f32882p;
        if (videoEncodeParams2 != null) {
            this.f32881o = videoEncodeParams2;
            this.f32882p = null;
        }
        if (c0333b == null) {
            if (this.f32877k == null) {
                c0333b = new C0333b(d.USE_HARDWARE, e.NONE);
            } else {
                c0333b = new C0333b(d.CONTINUE_ENCODE, e.NONE);
            }
        }
        d dVar = c0333b.f32892a;
        if (dVar == d.USE_HARDWARE) {
            VideoEncoderDef.a aVar2 = this.f32877k;
            VideoEncoderDef.a aVar3 = VideoEncoderDef.a.HARDWARE;
            if (aVar2 != aVar3) {
                int i9 = this.f32878l.mPriority;
                e eVar = c0333b.f32893b;
                if (i9 <= eVar.mPriority) {
                    this.f32877k = aVar3;
                    this.f32878l = eVar;
                    if (eVar == e.CPU_USAGE) {
                        this.f32883q.notifyEvent(h.b.EVT_VIDEO_ENCODE_SW_TO_HW_CPU_USAGE, null, new Object[0]);
                    }
                }
            }
            return d.CONTINUE_ENCODE;
        } else if (dVar == d.USE_SOFTWARE) {
            VideoEncoderDef.a aVar4 = this.f32877k;
            VideoEncoderDef.a aVar5 = VideoEncoderDef.a.SOFTWARE;
            if (aVar4 != aVar5) {
                int i10 = this.f32878l.mPriority;
                e eVar2 = c0333b.f32893b;
                if (i10 <= eVar2.mPriority) {
                    this.f32877k = aVar5;
                    this.f32878l = eVar2;
                    if (eVar2 == e.ENCODER_ERROR) {
                        this.f32883q.notifyEvent(h.b.EVT_VIDEO_ENCODE_HW_TO_SW_MEDIACODEC_NOT_WORK, null, new Object[0]);
                    }
                    com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(Looper.myLooper(), this);
                    this.f32891z = vVar;
                    vVar.a(1000, 1000);
                }
            }
            return d.CONTINUE_ENCODE;
        }
        if (c0333b.f32892a != d.CONTINUE_ENCODE) {
            LiteavLog.i(this.f32867a, "instruction: " + c0333b.f32892a + ", reason: " + c0333b.f32893b);
        }
        if (c0333b.f32892a == d.RESTART_ENCODER) {
            b();
        }
        return c0333b.f32892a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f32868b = 0L;
        this.f32888w = 0L;
        this.f32890y = 0L;
        this.f32889x = 0L;
    }

    @Override // com.tencent.liteav.base.util.v.a
    public final void onTimeout() {
        int i9;
        long a10 = com.tencent.liteav.base.a.a.a().a("Video", "SWToHWThreshold_CheckCount");
        if (this.f32869c < a10) {
            int[] a11 = com.tencent.liteav.base.util.t.a();
            this.f32869c++;
            this.f32870d += a11[0] / 10;
            this.f32871e += a11[1] / 10;
            VideoEncodeParams videoEncodeParams = this.f32881o;
            if (videoEncodeParams == null || (i9 = videoEncodeParams.fps) == 0) {
                return;
            }
            this.f32872f = (float) (this.f32872f + ((this.f32873g * 100.0d) / i9));
            return;
        }
        float f10 = (float) a10;
        float f11 = this.f32872f / f10;
        float f12 = this.f32871e / f10;
        if (this.f32870d / f10 >= ((float) com.tencent.liteav.base.a.a.a().a("Video", "SWToHWThreshold_CPU_MAX")) || f11 <= ((float) com.tencent.liteav.base.a.a.a().a("Video", "SWToHWThreshold_FPS_MIN")) || (f12 >= ((float) com.tencent.liteav.base.a.a.a().a("Video", "SWToHWThreshold_CPU")) && f11 <= ((float) com.tencent.liteav.base.a.a.a().a("Video", "SWToHWThreshold_FPS")))) {
            this.f32875i = true;
        }
        com.tencent.liteav.base.util.v vVar = this.f32891z;
        if (vVar != null) {
            vVar.a();
            this.f32891z = null;
        }
        this.f32869c = 0L;
        this.f32870d = 0.0f;
        this.f32871e = 0.0f;
        this.f32872f = 0.0f;
        this.f32873g = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public VideoEncoderDef.EncoderProfile f32894a;

        private c() {
            this.f32894a = VideoEncoderDef.EncoderProfile.PROFILE_BASELINE;
        }

        /* synthetic */ c(byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b e(b bVar) {
        if (bVar.f32877k != VideoEncoderDef.a.SOFTWARE && bVar.f32888w - bVar.f32868b > 30) {
            String str = bVar.f32867a;
            LiteavLog.i(str, "checkFrameInOutDifference in frame:" + bVar.f32888w + " out frame " + bVar.f32868b);
            return new C0333b(d.RESTART_ENCODER, e.INPUT_OUTPUT_DIFFERENCE);
        }
        return f32866v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b b(b bVar) {
        VideoEncodeParams videoEncodeParams;
        VideoEncodeParams videoEncodeParams2 = bVar.f32881o;
        boolean z10 = true;
        boolean z11 = videoEncodeParams2 != null && videoEncodeParams2.codecType == CodecType.H265;
        if ((!z11 || bVar.f32882p != null) && ((videoEncodeParams = bVar.f32882p) == null || videoEncodeParams.codecType != CodecType.H265)) {
            z10 = false;
        }
        if (z10) {
            boolean z12 = bVar.A;
            if (z12 && bVar.B) {
                C0333b h10 = bVar.h();
                return (h10 != null || z11) ? h10 : new C0333b(d.RESTART_ENCODER, e.NONE);
            }
            boolean z13 = bVar.B;
            if (z13 || !z12) {
                if (!z12 && z13) {
                    if (bVar.f32877k == VideoEncoderDef.a.SOFTWARE) {
                        if (z11) {
                            return new C0333b(d.CONTINUE_ENCODE, e.NONE);
                        }
                        return new C0333b(d.RESTART_ENCODER, e.NONE);
                    } else if (bVar.e()) {
                        return new C0333b(d.USE_SOFTWARE, e.OTHERS_DO_NOT_SUPPORT_H265);
                    }
                }
            } else if (bVar.f32877k == VideoEncoderDef.a.HARDWARE) {
                if (z11) {
                    return new C0333b(d.CONTINUE_ENCODE, e.NONE);
                }
                return new C0333b(d.RESTART_ENCODER, e.NONE);
            } else if (bVar.d()) {
                return new C0333b(d.USE_HARDWARE, e.OTHERS_DO_NOT_SUPPORT_H265);
            }
            String str = bVar.f32867a;
            LiteavLog.e(str, "checkEncodeH265, enable h265 failed because encode strategy conflict, mIsHWSupportH265:" + bVar.A + ", mIsSwSupportH265:" + bVar.B + ", mUsingEncodeType:" + bVar.f32877k + ", mUsingEncodeStrategy:" + bVar.f32876j);
            bVar.c();
            bVar.f32882p.setCodecType(CodecType.H264);
            return bVar.g();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b g(b bVar) {
        if (bVar.f32877k != VideoEncoderDef.a.SOFTWARE && bVar.f32889x + 5000 < SystemClock.elapsedRealtime()) {
            bVar.f32889x = SystemClock.elapsedRealtime();
            long j10 = bVar.f32890y;
            if (j10 != 0 && j10 == bVar.f32868b) {
                return new C0333b(d.RESTART_ENCODER, e.NO_OUTPUT);
            }
            bVar.f32890y = bVar.f32868b;
        }
        return f32866v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b c(b bVar) {
        VideoEncodeParams videoEncodeParams = bVar.f32882p;
        if (videoEncodeParams == null) {
            return f32866v;
        }
        C0333b c0333b = f32866v;
        VideoEncodeParams videoEncodeParams2 = bVar.f32881o;
        return (videoEncodeParams2 == null || videoEncodeParams2.fps == videoEncodeParams.fps || bVar.f32877k != VideoEncoderDef.a.HARDWARE) ? c0333b : new C0333b(d.RESTART_ENCODER, e.NONE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b h(b bVar) {
        if (bVar.f32875i) {
            bVar.f32875i = false;
            if (bVar.f32877k == VideoEncoderDef.a.SOFTWARE && bVar.f32879m <= 0) {
                return new C0333b(d.USE_HARDWARE, e.CPU_USAGE);
            }
        }
        return f32866v;
    }

    public final VideoEncodeParams a() {
        VideoEncodeParams videoEncodeParams = this.f32882p;
        if (videoEncodeParams == null) {
            videoEncodeParams = this.f32881o;
        }
        return new VideoEncodeParams(videoEncodeParams);
    }

    @Override // com.tencent.liteav.videoproducer.encoder.v.a
    public final void a(double d10) {
        this.f32873g = d10;
        this.f32883q.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODE_REAL_FRAME_RATE, Double.valueOf(d10));
    }

    @Override // com.tencent.liteav.videoproducer.encoder.v.a
    public final void a(long j10) {
        this.f32883q.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODE_REAL_ENCODE_BITRATE, Long.valueOf(j10));
    }

    public final void a(VideoEncodeParams videoEncodeParams) {
        VideoProducerDef.StreamType streamType;
        VideoEncodeParams videoEncodeParams2 = new VideoEncodeParams(videoEncodeParams);
        c cVar = new c((byte) 0);
        if (this.f32876j != VideoEncoderDef.EncodeStrategy.USE_HARDWARE_ONLY && videoEncodeParams2.referenceStrategy == VideoEncoderDef.ReferenceStrategy.RPS) {
            VideoProducerDef.StreamType streamType2 = this.f32884r;
            if (streamType2 == VideoProducerDef.StreamType.STREAM_TYPE_BIG_VIDEO || streamType2 == VideoProducerDef.StreamType.STREAM_TYPE_SUB_VIDEO) {
                cVar.f32894a = VideoEncoderDef.EncoderProfile.PROFILE_HIGHRPS;
            }
        } else if (!videoEncodeParams2.enableBFrame && ((streamType = this.f32884r) == VideoProducerDef.StreamType.STREAM_TYPE_BIG_VIDEO || streamType == VideoProducerDef.StreamType.STREAM_TYPE_SUB_VIDEO)) {
            cVar.f32894a = VideoEncoderDef.EncoderProfile.PROFILE_HIGH;
        }
        if (videoEncodeParams2.encoderProfile == null) {
            videoEncodeParams2.encoderProfile = cVar.f32894a;
        }
        if (this.f32885s) {
            videoEncodeParams2.fps = this.f32886t;
        }
        this.f32882p = videoEncodeParams2;
        if (com.tencent.liteav.base.util.h.a(videoEncodeParams2, this.f32881o)) {
            LiteavLog.i("EncoderSupervisor", "set expected encoded params: " + this.f32882p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C0333b a(b bVar) {
        VideoEncodeParams videoEncodeParams = bVar.f32882p;
        if (videoEncodeParams == null) {
            return f32866v;
        }
        C0333b c0333b = f32866v;
        if (bVar.f32881o != null) {
            VideoEncodeParams videoEncodeParams2 = new VideoEncodeParams(videoEncodeParams);
            videoEncodeParams2.setBaseFrameIndex(bVar.f32881o.baseFrameIndex);
            videoEncodeParams2.setBaseGopIndex(bVar.f32881o.baseGopIndex);
            if (videoEncodeParams2.getReferenceStrategy() == VideoEncoderDef.ReferenceStrategy.RPS) {
                videoEncodeParams2.setEncoderProfile(bVar.f32881o.encoderProfile);
            }
            videoEncodeParams2.setReferenceStrategy(bVar.f32881o.getReferenceStrategy());
            videoEncodeParams2.setFps(bVar.f32881o.fps);
            videoEncodeParams2.setCodecType(bVar.f32881o.codecType);
            videoEncodeParams2.setBitrate(bVar.f32881o.bitrate);
            return !bVar.f32881o.equals(videoEncodeParams2) ? new C0333b(d.RESTART_ENCODER, e.NONE) : c0333b;
        }
        return c0333b;
    }
}
