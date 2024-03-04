package com.tencent.liteav.videoproducer.producer;

import android.content.Context;
import android.graphics.Rect;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes4.dex */
public final class ax {

    /* renamed from: h  reason: collision with root package name */
    private static final com.tencent.liteav.base.util.q f33229h = new com.tencent.liteav.base.util.q(360, 640);

    /* renamed from: m  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f33241m;

    /* renamed from: a  reason: collision with root package name */
    CaptureSourceInterface.SourceType f33230a = CaptureSourceInterface.SourceType.NONE;

    /* renamed from: b  reason: collision with root package name */
    VideoProducerDef.ProducerMode f33231b = VideoProducerDef.ProducerMode.AUTO;

    /* renamed from: c  reason: collision with root package name */
    VideoProducerDef.HomeOrientation f33232c = VideoProducerDef.HomeOrientation.UNSET;

    /* renamed from: d  reason: collision with root package name */
    GLConstants.Orientation f33233d = null;

    /* renamed from: e  reason: collision with root package name */
    GLConstants.Orientation f33234e = null;

    /* renamed from: i  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f33237i = new com.tencent.liteav.base.util.q();

    /* renamed from: f  reason: collision with root package name */
    final com.tencent.liteav.base.util.q f33235f = new com.tencent.liteav.base.util.q();

    /* renamed from: j  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f33238j = new com.tencent.liteav.base.util.q();

    /* renamed from: k  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f33239k = new com.tencent.liteav.base.util.q();

    /* renamed from: l  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f33240l = new com.tencent.liteav.base.util.q();

    /* renamed from: g  reason: collision with root package name */
    final com.tencent.liteav.base.util.q f33236g = new com.tencent.liteav.base.util.q();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.producer.ax$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33242a;

        static {
            int[] iArr = new int[VideoProducerDef.ProducerMode.values().length];
            f33242a = iArr;
            try {
                iArr[VideoProducerDef.ProducerMode.PERFORMANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33242a[VideoProducerDef.ProducerMode.HIGH_QUALITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33242a[VideoProducerDef.ProducerMode.MANUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33242a[VideoProducerDef.ProducerMode.AUTO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ax(Context context) {
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q();
        this.f33241m = qVar;
        qVar.a(com.tencent.liteav.base.util.t.a(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.tencent.liteav.base.util.q e() {
        /*
            r7 = this;
            com.tencent.liteav.base.util.q r0 = new com.tencent.liteav.base.util.q
            r0.<init>()
            com.tencent.liteav.base.util.q r1 = new com.tencent.liteav.base.util.q
            r1.<init>()
            com.tencent.liteav.base.util.q r2 = r7.f33238j
            int r3 = r2.f31029a
            if (r3 <= 0) goto L18
            int r3 = r2.f31030b
            if (r3 <= 0) goto L18
            r1.a(r2)
            goto L1d
        L18:
            com.tencent.liteav.base.util.q r2 = com.tencent.liteav.videoproducer.producer.ax.f33229h
            r1.a(r2)
        L1d:
            com.tencent.liteav.videoproducer.capture.CaptureSourceInterface$SourceType r2 = r7.f33230a
            com.tencent.liteav.videoproducer.capture.CaptureSourceInterface$SourceType r3 = com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.SourceType.CAMERA
            if (r2 != r3) goto L36
            com.tencent.liteav.base.util.q r2 = r7.f33238j
            int r3 = r2.f31029a
            int r2 = r2.f31030b
            if (r3 <= r2) goto L36
            com.tencent.liteav.videobase.base.GLConstants$Orientation r2 = r7.f33234e
            if (r2 == 0) goto L33
            com.tencent.liteav.videobase.base.GLConstants$Orientation r3 = com.tencent.liteav.videobase.base.GLConstants.Orientation.LANDSCAPE_WITHOUT_ROTATION
            if (r2 == r3) goto L36
        L33:
            r1.a()
        L36:
            int r2 = r1.f31030b
            int r3 = r1.f31029a
            r4 = 1
            r5 = 0
            if (r2 <= r3) goto L40
            r2 = 1
            goto L41
        L40:
            r2 = 0
        L41:
            if (r2 == 0) goto L46
            r1.a()
        L46:
            int[] r3 = com.tencent.liteav.videoproducer.producer.ax.AnonymousClass1.f33242a
            com.tencent.liteav.videoproducer.producer.VideoProducerDef$ProducerMode r6 = r7.f33231b
            int r6 = r6.ordinal()
            r3 = r3[r6]
            if (r3 == r4) goto L84
            r4 = 2
            if (r3 == r4) goto L6e
            r4 = 3
            if (r3 == r4) goto L5c
            a(r1, r0)
            goto L87
        L5c:
            com.tencent.liteav.base.util.q r3 = r7.f33237i
            int r4 = r3.f31029a
            if (r4 <= 0) goto L6a
            int r4 = r3.f31030b
            if (r4 <= 0) goto L6a
            r0.a(r3)
            goto L88
        L6a:
            a(r1, r0)
            goto L87
        L6e:
            int r3 = r1.f31029a
            r4 = 1920(0x780, float:2.69E-42)
            if (r3 > r4) goto L80
            r0.f31029a = r4
            int r3 = r1.f31030b
            int r3 = r3 * 1920
            int r1 = r1.f31029a
            int r3 = r3 / r1
            r0.f31030b = r3
            goto L87
        L80:
            r0.a(r1)
            goto L87
        L84:
            r0.a(r1)
        L87:
            r5 = r2
        L88:
            if (r5 == 0) goto L8d
            r0.a()
        L8d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.producer.ax.e():com.tencent.liteav.base.util.q");
    }

    private com.tencent.liteav.base.util.q f() {
        GLConstants.Orientation orientation;
        VideoProducerDef.HomeOrientation homeOrientation;
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q();
        com.tencent.liteav.base.util.q d10 = d();
        if (d10.f31029a <= 0 || d10.f31030b <= 0) {
            d10.a(f33229h);
        }
        if (this.f33230a == CaptureSourceInterface.SourceType.CAMERA && d10.f31029a > d10.f31030b && (((orientation = this.f33234e) != null && orientation != GLConstants.Orientation.LANDSCAPE_WITHOUT_ROTATION) || (homeOrientation = this.f33232c) == VideoProducerDef.HomeOrientation.RIGHT || homeOrientation == VideoProducerDef.HomeOrientation.LEFT)) {
            d10.a();
        }
        boolean z10 = d10.f31030b > d10.f31029a;
        if (z10) {
            d10.a();
        }
        int i9 = AnonymousClass1.f33242a[this.f33231b.ordinal()];
        if (i9 == 1) {
            qVar.a(d10);
        } else if (i9 != 2) {
            if (i9 != 3) {
                b(d10, qVar);
            } else {
                com.tencent.liteav.base.util.q qVar2 = new com.tencent.liteav.base.util.q();
                if (this.f33235f.d()) {
                    qVar2 = new com.tencent.liteav.base.util.q(this.f33235f);
                } else if (this.f33237i.d()) {
                    qVar2 = new com.tencent.liteav.base.util.q(this.f33237i);
                }
                if (qVar2.d()) {
                    if (z10) {
                        qVar2.a();
                    }
                    qVar.a(c(d10, qVar2));
                } else {
                    b(d10, qVar);
                }
            }
        } else if (d10.f31029a <= 1920) {
            qVar.f31029a = 1920;
            qVar.f31030b = (d10.f31030b * 1920) / d10.f31029a;
        } else {
            qVar.a(d10);
        }
        if (z10) {
            qVar.a();
        }
        qVar.f31029a = ((qVar.f31029a + 7) / 8) * 8;
        qVar.f31030b = ((qVar.f31030b + 7) / 8) * 8;
        return qVar;
    }

    public final void a(VideoProducerDef.ProducerMode producerMode) {
        if (producerMode != null) {
            this.f33231b = producerMode;
        }
    }

    public final void b(com.tencent.liteav.base.util.q qVar) {
        this.f33238j.a(qVar);
    }

    public final com.tencent.liteav.base.util.q c() {
        VideoProducerDef.HomeOrientation homeOrientation;
        com.tencent.liteav.base.util.q f10 = f();
        int i9 = f10.f31029a;
        com.tencent.liteav.base.util.q qVar = this.f33236g;
        if (i9 <= qVar.f31029a && f10.f31030b <= qVar.f31030b) {
            if (Math.abs(f10.c() - this.f33236g.c()) > 0.001d) {
                this.f33236g.a(f10);
            }
        } else {
            qVar.a(f10);
        }
        f10.a(this.f33236g);
        if (this.f33230a == CaptureSourceInterface.SourceType.CAMERA && ((homeOrientation = this.f33232c) == VideoProducerDef.HomeOrientation.RIGHT || homeOrientation == VideoProducerDef.HomeOrientation.LEFT)) {
            f10.a();
        }
        return f10;
    }

    public final com.tencent.liteav.base.util.q d() {
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q();
        com.tencent.liteav.base.util.q qVar2 = this.f33238j;
        if (qVar2 != null && qVar2.f31029a != 0 && qVar2.f31030b != 0) {
            qVar.a(qVar2);
            if (this.f33230a == CaptureSourceInterface.SourceType.SCREEN) {
                double c10 = this.f33241m.c();
                if (this.f33239k.d()) {
                    c10 = this.f33239k.c();
                }
                a(qVar, c10);
                GLConstants.Orientation orientation = this.f33233d;
                if (orientation != null) {
                    com.tencent.liteav.base.util.q qVar3 = this.f33238j;
                    boolean z10 = qVar3.f31029a >= qVar3.f31030b;
                    if ((!z10 && orientation == GLConstants.Orientation.LANDSCAPE) || (z10 && orientation == GLConstants.Orientation.PORTRAIT)) {
                        qVar.a();
                    }
                }
            }
            qVar.f31029a = ((qVar.f31029a + 15) / 16) * 16;
            qVar.f31030b = ((qVar.f31030b + 15) / 16) * 16;
            return qVar;
        }
        LiteavLog.e("VideoResolutionSupervisor", "encode size is invalid.");
        return qVar;
    }

    public final VideoProducerDef.HomeOrientation a() {
        if (this.f33230a == CaptureSourceInterface.SourceType.CAMERA) {
            return this.f33232c;
        }
        return VideoProducerDef.HomeOrientation.UNSET;
    }

    public final com.tencent.liteav.base.util.q b() {
        com.tencent.liteav.base.util.q e10 = e();
        int i9 = e10.f31029a;
        com.tencent.liteav.base.util.q qVar = this.f33240l;
        if (i9 <= qVar.f31029a && e10.f31030b <= qVar.f31030b) {
            if (Math.abs(e10.c() - this.f33240l.c()) > 0.001d) {
                this.f33240l.a(e10);
            }
        } else {
            qVar.a(e10);
        }
        e10.a(this.f33240l);
        return e10;
    }

    public final void a(com.tencent.liteav.base.util.q qVar) {
        this.f33237i.a(qVar);
        this.f33240l.a(0, 0);
        this.f33236g.a(0, 0);
    }

    private static void b(com.tencent.liteav.base.util.q qVar, com.tencent.liteav.base.util.q qVar2) {
        if (qVar.f31029a <= 1280) {
            qVar2.f31029a = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;
            qVar2.f31030b = (qVar.f31030b * UGCTransitionRules.DEFAULT_IMAGE_HEIGHT) / qVar.f31029a;
            return;
        }
        qVar2.a(qVar);
    }

    public final void a(Rect rect) {
        if (rect != null) {
            LiteavLog.i("VideoResolutionSupervisor", "setExpectCaptureCropRect width=" + rect.width() + ",height=" + rect.height());
            this.f33239k.a(rect.width(), rect.height());
            return;
        }
        this.f33239k.a(0, 0);
    }

    private static com.tencent.liteav.base.util.q c(com.tencent.liteav.base.util.q qVar, com.tencent.liteav.base.util.q qVar2) {
        com.tencent.liteav.base.util.q qVar3 = new com.tencent.liteav.base.util.q();
        if (qVar.f31029a > 0 && qVar.f31030b > 0) {
            if (Math.abs(qVar2.c() - qVar.c()) < 0.001d) {
                qVar3.a(qVar2);
            } else if (qVar2.c() > qVar.c()) {
                int i9 = qVar2.f31030b;
                qVar3.f31030b = i9;
                qVar3.f31029a = (qVar.f31029a * i9) / qVar.f31030b;
            } else {
                int i10 = qVar2.f31029a;
                qVar3.f31029a = i10;
                qVar3.f31030b = (qVar.f31030b * i10) / qVar.f31029a;
            }
        } else {
            qVar3.a(qVar2);
        }
        return qVar3;
    }

    private static void a(com.tencent.liteav.base.util.q qVar, double d10) {
        if (Double.isNaN(d10) || d10 <= 0.0d) {
            return;
        }
        int i9 = qVar.f31029a;
        int i10 = qVar.f31030b;
        if ((i9 > i10 && d10 < 1.0d) || (i9 < i10 && d10 > 1.0d)) {
            d10 = 1.0d / d10;
        }
        if (qVar.c() < d10) {
            qVar.f31030b = (int) (qVar.f31029a / d10);
        } else {
            qVar.f31029a = (int) (qVar.f31030b * d10);
        }
    }

    private static void a(com.tencent.liteav.base.util.q qVar, com.tencent.liteav.base.util.q qVar2) {
        if (qVar.f31029a <= 1920) {
            qVar2.f31029a = 1920;
            qVar2.f31030b = (qVar.f31030b * 1920) / qVar.f31029a;
            return;
        }
        qVar2.a(qVar);
    }
}
