package com.guochao.faceshow.aaspring.views.doodle;

import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.views.doodle.m;
import java.util.List;
/* loaded from: classes3.dex */
public class c extends m.b {
    private float A;
    private la.f B;
    private InterfaceC0237c C;
    private float E;
    private float F;
    private double H;
    private float I;
    private float J;

    /* renamed from: a  reason: collision with root package name */
    private float f24263a;

    /* renamed from: b  reason: collision with root package name */
    private float f24264b;

    /* renamed from: c  reason: collision with root package name */
    private float f24265c;

    /* renamed from: d  reason: collision with root package name */
    private float f24266d;

    /* renamed from: e  reason: collision with root package name */
    private float f24267e;

    /* renamed from: f  reason: collision with root package name */
    private float f24268f;

    /* renamed from: g  reason: collision with root package name */
    private float f24269g;

    /* renamed from: h  reason: collision with root package name */
    private float f24270h;

    /* renamed from: i  reason: collision with root package name */
    private float f24271i;

    /* renamed from: j  reason: collision with root package name */
    private float f24272j;

    /* renamed from: k  reason: collision with root package name */
    private Float f24273k;

    /* renamed from: l  reason: collision with root package name */
    private Float f24274l;

    /* renamed from: m  reason: collision with root package name */
    private float f24275m;

    /* renamed from: n  reason: collision with root package name */
    private float f24276n;

    /* renamed from: o  reason: collision with root package name */
    private float f24277o;

    /* renamed from: p  reason: collision with root package name */
    private float f24278p;

    /* renamed from: q  reason: collision with root package name */
    private float f24279q;

    /* renamed from: r  reason: collision with root package name */
    private Path f24280r;

    /* renamed from: s  reason: collision with root package name */
    private e f24281s;

    /* renamed from: t  reason: collision with root package name */
    private com.guochao.faceshow.aaspring.views.doodle.a f24282t;

    /* renamed from: u  reason: collision with root package name */
    private DoodleView f24283u;

    /* renamed from: v  reason: collision with root package name */
    private ValueAnimator f24284v;

    /* renamed from: w  reason: collision with root package name */
    private float f24285w;

    /* renamed from: x  reason: collision with root package name */
    private float f24286x;

    /* renamed from: y  reason: collision with root package name */
    private ValueAnimator f24287y;

    /* renamed from: z  reason: collision with root package name */
    private float f24288z;
    private boolean D = true;
    private float G = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float animatedFraction = valueAnimator.getAnimatedFraction();
            c.this.f24283u.H(floatValue, c.this.f24283u.N(c.this.f24275m), c.this.f24283u.O(c.this.f24276n));
            float f10 = 1.0f - animatedFraction;
            c.this.f24283u.I(c.this.f24285w * f10, c.this.f24286x * f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            c.this.f24283u.I(((Float) valueAnimator.getAnimatedValue()).floatValue(), c.this.f24288z + ((c.this.A - c.this.f24288z) * valueAnimator.getAnimatedFraction()));
        }
    }

    /* renamed from: com.guochao.faceshow.aaspring.views.doodle.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0237c {
        void a(la.a aVar, la.f fVar, boolean z10);

        void b(la.a aVar, float f10, float f11);
    }

    public c(DoodleView doodleView, InterfaceC0237c interfaceC0237c) {
        this.f24283u = doodleView;
        com.guochao.faceshow.aaspring.views.doodle.a copyLocation = DoodlePen.COPY.getCopyLocation();
        this.f24282t = copyLocation;
        copyLocation.j();
        this.f24282t.o(doodleView.getBitmap().getWidth() / 2, doodleView.getBitmap().getHeight() / 2);
        this.C = interfaceC0237c;
    }

    private boolean n(la.e eVar) {
        la.e pen = this.f24283u.getPen();
        DoodlePen doodlePen = DoodlePen.TEXT;
        if (pen != doodlePen || eVar != doodlePen) {
            la.e pen2 = this.f24283u.getPen();
            DoodlePen doodlePen2 = DoodlePen.BITMAP;
            if (pen2 != doodlePen2 || eVar != doodlePen2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.m.b, com.guochao.faceshow.aaspring.views.doodle.m.a
    public void G(MotionEvent motionEvent) {
        super.G(motionEvent);
        this.f24269g = motionEvent.getX();
        this.f24270h = motionEvent.getY();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.m.b, com.guochao.faceshow.aaspring.views.doodle.m.a
    public void S(MotionEvent motionEvent) {
        la.f fVar;
        super.S(motionEvent);
        if ((this.f24283u.A() || n(this.f24283u.getPen())) && (fVar = this.B) != null && (fVar instanceof f) && ((f) fVar).K()) {
            this.f24271i = (this.f24283u.getX() + motionEvent.getX()) - this.B.g();
            float y10 = (this.f24283u.getY() + motionEvent.getY()) - this.B.h();
            this.f24272j = y10;
            float f10 = this.f24271i;
            double sqrt = Math.sqrt(((0.0f - f10) * (0.0f - f10)) + ((0.0f - y10) * (0.0f - y10)));
            float f11 = (float) (sqrt / this.H);
            la.f fVar2 = this.B;
            fVar2.i(fVar2.f() * f11);
            this.H = sqrt;
            LogUtils.e("sqrt", sqrt + "--mRadius=" + this.H);
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
    public void U(MotionEvent motionEvent) {
        this.f24265c = this.f24263a;
        this.f24266d = this.f24264b;
        this.f24263a = motionEvent.getX();
        this.f24264b = motionEvent.getY();
        this.f24283u.setScrollingDoodle(false);
        if (this.f24283u.A() || n(this.f24283u.getPen())) {
            la.f fVar = this.B;
            if (fVar instanceof f) {
                ((f) fVar).L(false);
            }
            if (this.f24283u.A()) {
                o(true);
            }
        }
        if (this.f24281s != null) {
            if (this.f24283u.B()) {
                this.f24283u.D(this.f24281s);
            }
            this.f24281s = null;
        }
        this.f24283u.c();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.l.b
    public boolean a(l lVar) {
        this.f24275m = lVar.d();
        this.f24276n = lVar.e();
        Float f10 = this.f24273k;
        if (f10 != null && this.f24274l != null) {
            float floatValue = this.f24275m - f10.floatValue();
            float floatValue2 = this.f24276n - this.f24274l.floatValue();
            if (Math.abs(floatValue) <= 1.0f && Math.abs(floatValue2) <= 1.0f) {
                this.E += floatValue;
                this.F += floatValue2;
            } else {
                if (this.B == null || !this.D) {
                    DoodleView doodleView = this.f24283u;
                    doodleView.setDoodleTranslationX(doodleView.getDoodleTranslationX() + floatValue + this.E);
                    DoodleView doodleView2 = this.f24283u;
                    doodleView2.setDoodleTranslationY(doodleView2.getDoodleTranslationY() + floatValue2 + this.F);
                }
                this.F = 0.0f;
                this.E = 0.0f;
            }
        }
        if (Math.abs(1.0f - lVar.f()) > 0.005f) {
            la.f fVar = this.B;
            if (fVar != null && this.D) {
                fVar.i(fVar.f() * lVar.f() * this.G);
            } else {
                float doodleScale = this.f24283u.getDoodleScale() * lVar.f() * this.G;
                DoodleView doodleView3 = this.f24283u;
                doodleView3.H(doodleScale, doodleView3.N(this.f24275m), this.f24283u.O(this.f24276n));
            }
            this.G = 1.0f;
        } else {
            this.G *= lVar.f();
        }
        this.f24273k = Float.valueOf(this.f24275m);
        this.f24274l = Float.valueOf(this.f24276n);
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.l.b
    public void b(l lVar) {
        if (this.f24283u.A()) {
            o(true);
        } else {
            k();
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.l.b
    public boolean c(l lVar) {
        this.f24273k = null;
        this.f24274l = null;
        return true;
    }

    public void k() {
        if (this.f24283u.getDoodleScale() < 1.0f) {
            if (this.f24284v == null) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f24284v = valueAnimator;
                valueAnimator.setDuration(100L);
                this.f24284v.addUpdateListener(new a());
            }
            this.f24284v.cancel();
            this.f24285w = this.f24283u.getDoodleTranslationX();
            this.f24286x = this.f24283u.getDoodleTranslationY();
            this.f24284v.setFloatValues(this.f24283u.getDoodleScale(), 1.0f);
            this.f24284v.start();
            return;
        }
        o(true);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.m.b, com.guochao.faceshow.aaspring.views.doodle.m.a
    public void l(MotionEvent motionEvent) {
        super.l(motionEvent);
        if (!this.f24283u.A() || this.B == null) {
            return;
        }
        this.I = (this.f24283u.getX() + motionEvent.getX()) - this.B.g();
        float y10 = (this.f24283u.getY() + motionEvent.getY()) - this.B.h();
        this.I = y10;
        float f10 = (0.0f - y10) * (0.0f - y10);
        float f11 = this.J;
        this.H = Math.sqrt(f10 + ((0.0f - f11) * (0.0f - f11)));
    }

    public la.f m() {
        return this.B;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b1, code lost:
        if (r14.f24283u.getDoodleRotation() == 90) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b3, code lost:
        r4 = r4 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b5, code lost:
        r4 = r4 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
        if (r14.f24283u.getDoodleRotation() == 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00bf, code lost:
        r5 = r5 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c1, code lost:
        r5 = r5 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f7, code lost:
        if (r14.f24283u.getDoodleRotation() == 90) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0100, code lost:
        if (r14.f24283u.getDoodleRotation() == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0167, code lost:
        if (r14.f24283u.getDoodleRotation() == 90) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0169, code lost:
        r5 = r5 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x016b, code lost:
        r5 = r5 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0173, code lost:
        if (r14.f24283u.getDoodleRotation() == 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0175, code lost:
        r4 = r4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0177, code lost:
        r4 = r4 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ad, code lost:
        if (r14.f24283u.getDoodleRotation() == 90) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01b6, code lost:
        if (r14.f24283u.getDoodleRotation() == 0) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void o(boolean r15) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.doodle.c.o(boolean):void");
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        this.f24267e = x10;
        this.f24263a = x10;
        float y10 = motionEvent.getY();
        this.f24268f = y10;
        this.f24264b = y10;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.f24265c = this.f24263a;
        this.f24266d = this.f24264b;
        this.f24263a = motionEvent2.getX();
        this.f24264b = motionEvent2.getY();
        if (!this.f24283u.A() && !n(this.f24283u.getPen())) {
            la.e pen = this.f24283u.getPen();
            DoodlePen doodlePen = DoodlePen.COPY;
            if (pen == doodlePen && this.f24282t.i()) {
                this.f24282t.o(this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b));
            } else {
                if (this.f24283u.getPen() == doodlePen) {
                    com.guochao.faceshow.aaspring.views.doodle.a aVar = this.f24282t;
                    aVar.o((aVar.d() + this.f24283u.N(this.f24263a)) - this.f24282t.f(), (this.f24282t.e() + this.f24283u.O(this.f24264b)) - this.f24282t.g());
                }
                if (this.f24283u.getShape() == DoodleShape.HAND_WRITE) {
                    this.f24280r.quadTo(this.f24283u.N(this.f24265c), this.f24283u.O(this.f24266d), this.f24283u.N((this.f24263a + this.f24265c) / 2.0f), this.f24283u.O((this.f24264b + this.f24266d) / 2.0f));
                    this.f24281s.X(this.f24280r);
                } else {
                    this.f24281s.Z(this.f24283u.N(this.f24267e), this.f24283u.O(this.f24268f), this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b));
                }
            }
        } else {
            la.f fVar = this.B;
            if (fVar != null) {
                if ((fVar instanceof f) && ((f) fVar).K()) {
                    la.f fVar2 = this.B;
                    fVar2.d(this.f24279q + ma.a.a(fVar2.g(), this.B.h(), this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b)));
                } else {
                    this.B.n((this.f24277o + this.f24283u.N(this.f24263a)) - this.f24283u.N(this.f24267e), (this.f24278p + this.f24283u.O(this.f24264b)) - this.f24283u.O(this.f24268f));
                }
            } else if (this.f24283u.A()) {
                this.f24283u.I((this.f24277o + this.f24263a) - this.f24267e, (this.f24278p + this.f24264b) - this.f24268f);
            }
        }
        this.f24283u.c();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        boolean z10;
        la.f fVar;
        this.f24265c = this.f24263a;
        this.f24266d = this.f24264b;
        this.f24263a = motionEvent.getX();
        this.f24264b = motionEvent.getY();
        if (this.f24283u.A()) {
            List<la.c> allItem = this.f24283u.getAllItem();
            int size = allItem.size() - 1;
            while (true) {
                if (size < 0) {
                    z10 = false;
                    break;
                }
                la.c cVar = allItem.get(size);
                if (cVar.c() && (cVar instanceof la.f)) {
                    la.f fVar2 = (la.f) cVar;
                    if ((fVar2 instanceof h) && fVar2.o(this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b))) {
                        la.f fVar3 = this.B;
                        if ((fVar3 instanceof f) && ((f) fVar3).J(this.f24283u.N(motionEvent.getX()), this.f24283u.O(motionEvent.getY()))) {
                            r(this.B);
                        } else {
                            p(fVar2);
                        }
                        PointF r10 = fVar2.r();
                        this.f24277o = r10.x;
                        this.f24278p = r10.y;
                        z10 = true;
                    }
                }
                size--;
            }
            if (!z10 && (fVar = this.B) != null) {
                if ((fVar instanceof f) && ((f) fVar).J(this.f24283u.N(motionEvent.getX()), this.f24283u.O(motionEvent.getY()))) {
                    r(this.B);
                } else {
                    p(null);
                    InterfaceC0237c interfaceC0237c = this.C;
                    if (interfaceC0237c != null) {
                        interfaceC0237c.a(this.f24283u, fVar, false);
                    }
                }
            }
        } else if (n(this.f24283u.getPen())) {
            InterfaceC0237c interfaceC0237c2 = this.C;
            if (interfaceC0237c2 != null) {
                DoodleView doodleView = this.f24283u;
                interfaceC0237c2.b(doodleView, doodleView.N(this.f24263a), this.f24283u.O(this.f24264b));
            }
        } else {
            x(motionEvent);
            motionEvent.offsetLocation(1.0f, 1.0f);
            onScroll(motionEvent, motionEvent, 1.0f, 1.0f);
            U(motionEvent);
        }
        this.f24283u.c();
        return true;
    }

    public void p(la.f fVar) {
        la.f fVar2 = this.B;
        this.B = fVar;
        if (fVar2 != null) {
            fVar2.a(false);
            InterfaceC0237c interfaceC0237c = this.C;
            if (interfaceC0237c != null) {
                interfaceC0237c.a(this.f24283u, fVar2, false);
            }
            this.f24283u.D(fVar2);
        }
        la.f fVar3 = this.B;
        if (fVar3 != null) {
            fVar3.a(true);
            InterfaceC0237c interfaceC0237c2 = this.C;
            if (interfaceC0237c2 != null) {
                interfaceC0237c2.a(this.f24283u, this.B, true);
            }
            this.f24283u.C(this.B);
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.m.b, com.guochao.faceshow.aaspring.views.doodle.m.a
    public void q(MotionEvent motionEvent) {
        la.f fVar;
        super.q(motionEvent);
        if (!this.f24283u.A() || (fVar = this.B) == null) {
            return;
        }
        if (fVar instanceof h) {
            k kVar = new k();
            Rect rect = new Rect();
            rect.set(this.B.getBounds());
            kVar.i(this.B.f());
            kVar.h(this.B.m());
            kVar.g(rect);
            PointF pointF = new PointF();
            pointF.set(this.B.r());
            kVar.f(pointF);
            ((h) this.B).V(kVar);
            ((h) this.B).U(true);
        }
        if (Math.abs(this.f24269g - motionEvent.getX()) >= 8.0f || Math.abs(this.f24270h - motionEvent.getY()) >= 8.0f) {
            return;
        }
        la.f fVar2 = this.B;
        if ((fVar2 instanceof f) && ((f) fVar2).I(this.f24283u.N(motionEvent.getX()), this.f24283u.O(motionEvent.getY()))) {
            this.f24283u.G(this.B);
        }
        la.f fVar3 = this.B;
        if ((fVar3 instanceof f) && ((f) fVar3).J(this.f24283u.N(motionEvent.getX()), this.f24283u.O(motionEvent.getY()))) {
            r(this.B);
        }
    }

    public void r(la.f fVar) {
        this.B = fVar;
        if (fVar != null) {
            fVar.a(true);
            InterfaceC0237c interfaceC0237c = this.C;
            if (interfaceC0237c != null) {
                interfaceC0237c.a(this.f24283u, this.B, true);
            }
            this.f24283u.C(this.B);
        }
    }

    public void s(boolean z10) {
        this.D = z10;
    }

    public void setSelectionListener(InterfaceC0237c interfaceC0237c) {
        this.C = interfaceC0237c;
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
    public void x(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        this.f24263a = x10;
        this.f24265c = x10;
        float y10 = motionEvent.getY();
        this.f24264b = y10;
        this.f24266d = y10;
        this.f24283u.setScrollingDoodle(true);
        if (!this.f24283u.A() && !n(this.f24283u.getPen())) {
            la.e pen = this.f24283u.getPen();
            DoodlePen doodlePen = DoodlePen.COPY;
            if (pen == doodlePen && this.f24282t.a(this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b), this.f24283u.getSize())) {
                this.f24282t.l(true);
                this.f24282t.k(false);
            } else {
                if (this.f24283u.getPen() == doodlePen) {
                    this.f24282t.l(false);
                    if (!this.f24282t.h()) {
                        this.f24282t.k(true);
                        this.f24282t.m(this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b));
                    }
                }
                Path path = new Path();
                this.f24280r = path;
                path.moveTo(this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b));
                if (this.f24283u.getShape() == DoodleShape.HAND_WRITE) {
                    this.f24281s = e.S(this.f24283u, this.f24280r);
                } else {
                    DoodleView doodleView = this.f24283u;
                    this.f24281s = e.T(doodleView, doodleView.N(this.f24267e), this.f24283u.O(this.f24268f), this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b));
                }
                if (this.f24283u.B()) {
                    this.f24283u.C(this.f24281s);
                } else {
                    this.f24283u.d(this.f24281s);
                }
            }
        } else {
            la.f fVar = this.B;
            if (fVar != null) {
                PointF r10 = fVar.r();
                this.f24277o = r10.x;
                this.f24278p = r10.y;
                la.f fVar2 = this.B;
                if ((fVar2 instanceof f) && ((f) fVar2).J(this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b))) {
                    ((f) this.B).L(true);
                    this.f24279q = this.B.m() - ma.a.a(this.B.g(), this.B.h(), this.f24283u.N(this.f24263a), this.f24283u.O(this.f24264b));
                }
            } else if (this.f24283u.A()) {
                this.f24277o = this.f24283u.getDoodleTranslationX();
                this.f24278p = this.f24283u.getDoodleTranslationY();
            }
        }
        this.f24283u.c();
    }
}
