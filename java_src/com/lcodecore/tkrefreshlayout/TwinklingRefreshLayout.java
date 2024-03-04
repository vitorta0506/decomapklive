package com.lcodecore.tkrefreshlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.guochao.twink.R$id;
import com.guochao.twink.R$styleable;
import com.lcodecore.tkrefreshlayout.footer.LoadingView;
import com.lcodecore.tkrefreshlayout.header.GoogleDotView;
import kc.e;
import kc.f;
/* loaded from: classes4.dex */
public class TwinklingRefreshLayout extends RelativeLayout implements e, NestedScrollingChild {
    private static String G4 = "";
    private static String H4 = "";
    protected boolean A;
    protected boolean B;
    private final int[] B3;
    private d C;
    private int C4;
    private final int D;
    private int D4;
    private e E;
    private boolean E4;
    private final NestedScrollingChildHelper F;
    private f F4;
    private mc.c G;
    private kc.d H;
    private float I;
    private float J;
    private VelocityTracker K;
    private float L;
    private float M;
    private float N;
    private float O;
    private int P;
    private int Q;
    private MotionEvent R;
    private int V1;
    private final int[] V2;
    private int V3;

    /* renamed from: a  reason: collision with root package name */
    protected float f27909a;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f27910a1;

    /* renamed from: a2  reason: collision with root package name */
    private final int[] f27911a2;

    /* renamed from: b  reason: collision with root package name */
    protected float f27912b;

    /* renamed from: c  reason: collision with root package name */
    protected float f27913c;

    /* renamed from: d  reason: collision with root package name */
    protected float f27914d;

    /* renamed from: e  reason: collision with root package name */
    private View f27915e;

    /* renamed from: f  reason: collision with root package name */
    protected FrameLayout f27916f;

    /* renamed from: g  reason: collision with root package name */
    private FrameLayout f27917g;

    /* renamed from: h  reason: collision with root package name */
    private int f27918h;

    /* renamed from: i  reason: collision with root package name */
    private kc.b f27919i;

    /* renamed from: j  reason: collision with root package name */
    private kc.a f27920j;

    /* renamed from: k  reason: collision with root package name */
    private float f27921k;

    /* renamed from: l  reason: collision with root package name */
    private FrameLayout f27922l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f27923m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f27924n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f27925o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f27926p;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f27927q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f27928r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f27929s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f27930t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f27931u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f27932v;

    /* renamed from: w  reason: collision with root package name */
    protected boolean f27933w;

    /* renamed from: x  reason: collision with root package name */
    protected boolean f27934x;

    /* renamed from: y  reason: collision with root package name */
    protected boolean f27935y;

    /* renamed from: z  reason: collision with root package name */
    protected boolean f27936z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements kc.d {
        a() {
        }

        @Override // kc.d
        public void a(MotionEvent motionEvent, boolean z10) {
            TwinklingRefreshLayout.this.G.e(motionEvent, z10);
        }

        @Override // kc.d
        public void onDown(MotionEvent motionEvent) {
            TwinklingRefreshLayout.this.G.c(motionEvent);
        }

        @Override // kc.d
        public void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            TwinklingRefreshLayout.this.G.b(motionEvent, motionEvent2, f10, f11);
        }

        @Override // kc.d
        public void onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            TwinklingRefreshLayout.this.G.a(motionEvent, motionEvent2, f10, f11, TwinklingRefreshLayout.this.I, TwinklingRefreshLayout.this.J);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FrameLayout frameLayout = TwinklingRefreshLayout.this.f27916f;
            if (frameLayout != null) {
                frameLayout.bringToFront();
            }
        }
    }

    /* loaded from: classes4.dex */
    class c implements kc.c {
        c() {
        }

        @Override // kc.c
        public void a() {
            TwinklingRefreshLayout.this.C.m();
        }
    }

    /* loaded from: classes4.dex */
    public class d {

        /* renamed from: b  reason: collision with root package name */
        private int f27941b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f27942c = 0;

        /* renamed from: d  reason: collision with root package name */
        private boolean f27943d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f27944e = false;

        /* renamed from: f  reason: collision with root package name */
        private boolean f27945f = false;

        /* renamed from: a  reason: collision with root package name */
        private mc.a f27940a = new mc.a(this);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.g0();
                TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
                if (twinklingRefreshLayout.f27931u || twinklingRefreshLayout.f27915e == null) {
                    return;
                }
                d.this.b0(true);
                d.this.f27940a.y();
            }
        }

        public d() {
        }

        public boolean A() {
            return TwinklingRefreshLayout.this.f27936z;
        }

        public boolean B() {
            return this.f27943d;
        }

        public boolean C() {
            return TwinklingRefreshLayout.this.f27926p;
        }

        public boolean D() {
            return TwinklingRefreshLayout.this.f27924n;
        }

        public boolean E() {
            return TwinklingRefreshLayout.this.f27933w;
        }

        public boolean F() {
            return TwinklingRefreshLayout.this.f27930t;
        }

        public boolean G() {
            return TwinklingRefreshLayout.this.f27929s;
        }

        public boolean H() {
            return this.f27945f;
        }

        public boolean I() {
            return this.f27944e;
        }

        public boolean J() {
            return TwinklingRefreshLayout.this.f27931u;
        }

        public boolean K() {
            return TwinklingRefreshLayout.this.f27923m;
        }

        public boolean L() {
            return TwinklingRefreshLayout.this.f27925o;
        }

        public boolean M() {
            return 1 == this.f27941b;
        }

        public boolean N() {
            return this.f27941b == 0;
        }

        public void O() {
            TwinklingRefreshLayout.this.E.j();
        }

        public void P() {
            TwinklingRefreshLayout.this.E.h();
        }

        public void Q() {
            TwinklingRefreshLayout.this.E.e(TwinklingRefreshLayout.this);
        }

        public void R() {
            TwinklingRefreshLayout.this.E.a();
        }

        public void S(float f10) {
            e eVar = TwinklingRefreshLayout.this.E;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.d(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f27913c);
        }

        public void T(float f10) {
            e eVar = TwinklingRefreshLayout.this.E;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.f(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f27921k);
        }

        public void U(float f10) {
            e eVar = TwinklingRefreshLayout.this.E;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.g(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f27913c);
        }

        public void V(float f10) {
            e eVar = TwinklingRefreshLayout.this.E;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            eVar.c(twinklingRefreshLayout, f10 / twinklingRefreshLayout.f27921k);
        }

        public void W() {
            TwinklingRefreshLayout.this.E.b(TwinklingRefreshLayout.this);
        }

        public void X() {
            TwinklingRefreshLayout.this.E.i();
        }

        public void Y() {
            if (TwinklingRefreshLayout.this.f27920j != null) {
                TwinklingRefreshLayout.this.f27920j.reset();
            }
        }

        public void Z() {
            if (TwinklingRefreshLayout.this.f27919i != null) {
                TwinklingRefreshLayout.this.f27919i.reset();
            }
        }

        public void a0(boolean z10) {
            TwinklingRefreshLayout.this.f27924n = z10;
        }

        public boolean b() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            return (twinklingRefreshLayout.f27923m || twinklingRefreshLayout.f27924n) ? false : true;
        }

        public void b0(boolean z10) {
            TwinklingRefreshLayout.this.f27926p = z10;
        }

        public boolean c() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            return twinklingRefreshLayout.f27928r || twinklingRefreshLayout.f27934x;
        }

        public void c0(boolean z10) {
            this.f27945f = z10;
        }

        public boolean d() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            return twinklingRefreshLayout.f27927q || twinklingRefreshLayout.f27935y;
        }

        public void d0(boolean z10) {
            this.f27944e = z10;
        }

        public boolean e() {
            return TwinklingRefreshLayout.this.f27932v;
        }

        public void e0(boolean z10) {
            TwinklingRefreshLayout.this.f27923m = z10;
        }

        public boolean f(MotionEvent motionEvent) {
            return TwinklingRefreshLayout.super.dispatchTouchEvent(motionEvent);
        }

        public void f0(boolean z10) {
            TwinklingRefreshLayout.this.f27925o = z10;
        }

        public boolean g() {
            return TwinklingRefreshLayout.this.f27935y;
        }

        public void g0() {
            this.f27941b = 1;
        }

        public boolean h() {
            return TwinklingRefreshLayout.this.f27927q;
        }

        public void h0() {
            this.f27941b = 0;
        }

        public boolean i() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            return twinklingRefreshLayout.f27935y || twinklingRefreshLayout.f27934x;
        }

        public boolean i0() {
            return TwinklingRefreshLayout.this.B;
        }

        public boolean j() {
            return TwinklingRefreshLayout.this.f27928r;
        }

        public boolean j0() {
            return TwinklingRefreshLayout.this.A;
        }

        public boolean k() {
            return TwinklingRefreshLayout.this.f27934x;
        }

        public void k0() {
            TwinklingRefreshLayout.this.post(new a());
        }

        public void l() {
            O();
            if (TwinklingRefreshLayout.this.f27915e != null) {
                this.f27940a.w(true);
            }
        }

        public void m() {
            if (TwinklingRefreshLayout.this.f27915e != null) {
                this.f27940a.z(true);
            }
        }

        public void n() {
            P();
        }

        public mc.a o() {
            return this.f27940a;
        }

        public int p() {
            return (int) TwinklingRefreshLayout.this.f27921k;
        }

        public View q() {
            return TwinklingRefreshLayout.this.f27917g;
        }

        public View r() {
            return TwinklingRefreshLayout.this.f27922l;
        }

        public int s() {
            return (int) TwinklingRefreshLayout.this.f27913c;
        }

        public View t() {
            return TwinklingRefreshLayout.this.f27916f;
        }

        public int u() {
            return (int) TwinklingRefreshLayout.this.f27912b;
        }

        public float v() {
            return TwinklingRefreshLayout.this.f27909a;
        }

        public int w() {
            return (int) TwinklingRefreshLayout.this.f27914d;
        }

        public View x() {
            return TwinklingRefreshLayout.this.f27915e;
        }

        public int y() {
            return TwinklingRefreshLayout.this.D;
        }

        public void z() {
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            if (twinklingRefreshLayout.f27931u) {
                twinklingRefreshLayout.setOverScrollTopShow(false);
                TwinklingRefreshLayout.this.setOverScrollBottomShow(false);
                FrameLayout frameLayout = TwinklingRefreshLayout.this.f27916f;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                if (TwinklingRefreshLayout.this.f27922l != null) {
                    TwinklingRefreshLayout.this.f27922l.setVisibility(8);
                }
            }
        }
    }

    public TwinklingRefreshLayout(Context context) {
        this(context, null, 0);
    }

    private boolean A(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            int[] iArr = this.B3;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int[] iArr2 = this.B3;
        obtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.V3);
                    if (findPointerIndex < 0) {
                        Log.e("TwinklingRefreshLayout", "Error processing scroll; pointer index for id " + this.V3 + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int y10 = (int) motionEvent.getY(findPointerIndex);
                    int x10 = this.C4 - ((int) motionEvent.getX(findPointerIndex));
                    int i9 = this.D4 - y10;
                    if (dispatchNestedPreScroll(x10, i9, this.V2, this.f27911a2)) {
                        int[] iArr3 = this.V2;
                        int i10 = iArr3[0];
                        i9 -= iArr3[1];
                        int[] iArr4 = this.f27911a2;
                        obtain.offsetLocation(iArr4[0], iArr4[1]);
                        int[] iArr5 = this.B3;
                        int i11 = iArr5[0];
                        int[] iArr6 = this.f27911a2;
                        iArr5[0] = i11 + iArr6[0];
                        iArr5[1] = iArr5[1] + iArr6[1];
                    }
                    if (!this.E4 && Math.abs(i9) > this.D) {
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        this.E4 = true;
                        if (i9 > 0) {
                            i9 -= this.D;
                        } else {
                            i9 += this.D;
                        }
                    }
                    if (this.E4) {
                        int[] iArr7 = this.f27911a2;
                        this.D4 = y10 - iArr7[1];
                        if (dispatchNestedScroll(0, 0, 0, i9 + 0, iArr7)) {
                            int i12 = this.C4;
                            int[] iArr8 = this.f27911a2;
                            this.C4 = i12 - iArr8[0];
                            this.D4 -= iArr8[1];
                            obtain.offsetLocation(iArr8[0], iArr8[1]);
                            int[] iArr9 = this.B3;
                            int i13 = iArr9[0];
                            int[] iArr10 = this.f27911a2;
                            iArr9[0] = i13 + iArr10[0];
                            iArr9[1] = iArr9[1] + iArr10[1];
                        }
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        this.V3 = motionEvent.getPointerId(actionIndex);
                        this.C4 = (int) motionEvent.getX(actionIndex);
                        this.D4 = (int) motionEvent.getY(actionIndex);
                    }
                }
            }
            stopNestedScroll();
            this.E4 = false;
            this.V3 = -1;
        } else {
            this.V3 = motionEvent.getPointerId(0);
            this.C4 = (int) motionEvent.getX();
            this.D4 = (int) motionEvent.getY();
            startNestedScroll(2);
        }
        obtain.recycle();
        return true;
    }

    private void E() {
        this.H = new a();
    }

    public static void setDefaultFooter(String str) {
        H4 = str;
    }

    public static void setDefaultHeader(String str) {
        G4 = str;
    }

    private void x() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams.addRule(12);
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.setBackgroundColor(0);
        this.f27922l = frameLayout;
        addView(frameLayout);
        if (this.f27920j == null) {
            if (!TextUtils.isEmpty(H4)) {
                try {
                    setFooterView((kc.a) Class.forName(H4).getDeclaredConstructor(Context.class).newInstance(getContext()));
                    return;
                } catch (Exception e10) {
                    Log.e("TwinklingRefreshLayout:", "setDefaultFooter classname=" + e10.getMessage());
                    setFooterView(new LoadingView(getContext()));
                    return;
                }
            }
            setFooterView(new LoadingView(getContext()));
        }
    }

    private void y() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams.addRule(10);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setId(R$id.ex_header);
        addView(frameLayout2, new RelativeLayout.LayoutParams(-1, -2));
        addView(frameLayout, layoutParams);
        this.f27917g = frameLayout2;
        this.f27916f = frameLayout;
        if (this.f27919i == null) {
            if (!TextUtils.isEmpty(G4)) {
                try {
                    setHeaderView((kc.b) Class.forName(G4).getDeclaredConstructor(Context.class).newInstance(getContext()));
                    return;
                } catch (Exception e10) {
                    Log.e("TwinklingRefreshLayout:", "setDefaultHeader classname=" + e10.getMessage());
                    setHeaderView(new GoogleDotView(getContext()));
                    return;
                }
            }
            setHeaderView(new GoogleDotView(getContext()));
        }
    }

    private void z(MotionEvent motionEvent, kc.d dVar) {
        int action = motionEvent.getAction();
        if (this.K == null) {
            this.K = VelocityTracker.obtain();
        }
        this.K.addMovement(motionEvent);
        int i9 = action & 255;
        boolean z10 = true;
        boolean z11 = i9 == 6;
        int actionIndex = z11 ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i10 = 0; i10 < pointerCount; i10++) {
            if (actionIndex != i10) {
                f10 += motionEvent.getX(i10);
                f11 += motionEvent.getY(i10);
            }
        }
        float f12 = z11 ? pointerCount - 1 : pointerCount;
        float f13 = f10 / f12;
        float f14 = f11 / f12;
        if (i9 == 0) {
            this.L = f13;
            this.N = f13;
            this.M = f14;
            this.O = f14;
            MotionEvent motionEvent2 = this.R;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.R = MotionEvent.obtain(motionEvent);
            this.f27910a1 = true;
            dVar.onDown(motionEvent);
        } else if (i9 == 1) {
            int pointerId = motionEvent.getPointerId(0);
            this.K.computeCurrentVelocity(1000, this.P);
            this.J = this.K.getYVelocity(pointerId);
            this.I = this.K.getXVelocity(pointerId);
            if (Math.abs(this.J) > this.Q || Math.abs(this.I) > this.Q) {
                dVar.onFling(this.R, motionEvent, this.I, this.J);
            } else {
                z10 = false;
            }
            dVar.a(motionEvent, z10);
            VelocityTracker velocityTracker = this.K;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.K = null;
            }
        } else if (i9 == 2) {
            float f15 = this.L - f13;
            float f16 = this.M - f14;
            if (this.f27910a1) {
                int i11 = (int) (f13 - this.N);
                int i12 = (int) (f14 - this.O);
                if ((i11 * i11) + (i12 * i12) > this.V1) {
                    dVar.onScroll(this.R, motionEvent, f15, f16);
                    this.L = f13;
                    this.M = f14;
                    this.f27910a1 = false;
                }
            } else if (Math.abs(f15) >= 1.0f || Math.abs(f16) >= 1.0f) {
                dVar.onScroll(this.R, motionEvent, f15, f16);
                this.L = f13;
                this.M = f14;
            }
        } else if (i9 == 3) {
            this.f27910a1 = false;
            VelocityTracker velocityTracker2 = this.K;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.K = null;
            }
        } else if (i9 == 5) {
            this.L = f13;
            this.N = f13;
            this.M = f14;
            this.O = f14;
        } else if (i9 == 6) {
            this.L = f13;
            this.N = f13;
            this.M = f14;
            this.O = f14;
            this.K.computeCurrentVelocity(1000, this.P);
            int actionIndex2 = motionEvent.getActionIndex();
            int pointerId2 = motionEvent.getPointerId(actionIndex2);
            float xVelocity = this.K.getXVelocity(pointerId2);
            float yVelocity = this.K.getYVelocity(pointerId2);
            for (int i13 = 0; i13 < pointerCount; i13++) {
                if (i13 != actionIndex2) {
                    int pointerId3 = motionEvent.getPointerId(i13);
                    if ((this.K.getXVelocity(pointerId3) * xVelocity) + (this.K.getYVelocity(pointerId3) * yVelocity) < 0.0f) {
                        this.K.clear();
                        return;
                    }
                }
            }
        }
    }

    public void B(boolean z10) {
        this.C.l();
        kc.a aVar = this.f27920j;
        if (aVar instanceof LoadingView) {
            if (z10) {
                ((LoadingView) aVar).e();
            } else {
                ((LoadingView) aVar).d();
            }
        }
    }

    public void C() {
        B(false);
    }

    public void D() {
        this.C.n();
    }

    @Override // kc.e
    public void a() {
        f fVar = this.F4;
        if (fVar != null) {
            fVar.a();
        }
    }

    @Override // kc.e
    public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
        this.f27919i.a(this.f27909a, this.f27913c);
        f fVar = this.F4;
        if (fVar != null) {
            fVar.b(twinklingRefreshLayout);
        }
    }

    @Override // kc.e
    public void c(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        f fVar;
        this.f27920j.c(f10, this.f27909a, this.f27913c);
        if (this.f27927q && (fVar = this.F4) != null) {
            fVar.c(twinklingRefreshLayout, f10);
        }
    }

    @Override // kc.e
    public void d(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        f fVar;
        this.f27919i.b(f10, this.f27909a, this.f27913c);
        if (this.f27928r && (fVar = this.F4) != null) {
            fVar.d(twinklingRefreshLayout, f10);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.F.dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.F.dispatchNestedPreFling(f10, f11);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i9, int i10, int[] iArr, int[] iArr2) {
        return this.F.dispatchNestedPreScroll(i9, i10, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i9, int i10, int i11, int i12, int[] iArr) {
        return this.F.dispatchNestedScroll(i9, i10, i11, i12, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean dispatchTouchEvent = this.G.dispatchTouchEvent(motionEvent);
        z(motionEvent, this.H);
        A(motionEvent);
        return dispatchTouchEvent;
    }

    @Override // kc.e
    public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
        this.f27920j.a(this.f27912b, this.f27921k);
        f fVar = this.F4;
        if (fVar != null) {
            fVar.e(twinklingRefreshLayout);
        }
    }

    @Override // kc.e
    public void f(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        f fVar;
        this.f27920j.b(f10, this.f27912b, this.f27921k);
        if (this.f27927q && (fVar = this.F4) != null) {
            fVar.f(twinklingRefreshLayout, f10);
        }
    }

    @Override // kc.e
    public void g(TwinklingRefreshLayout twinklingRefreshLayout, float f10) {
        f fVar;
        this.f27919i.c(f10, this.f27909a, this.f27913c);
        if (this.f27928r && (fVar = this.F4) != null) {
            fVar.g(twinklingRefreshLayout, f10);
        }
    }

    public View getExtraHeaderView() {
        return this.f27917g;
    }

    @Override // kc.e
    public void h() {
        f fVar = this.F4;
        if (fVar != null) {
            fVar.h();
        }
        if (this.C.A() || this.C.L()) {
            this.f27919i.onFinish(new c());
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.F.hasNestedScrollingParent();
    }

    @Override // kc.e
    public void i() {
        f fVar = this.F4;
        if (fVar != null) {
            fVar.i();
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.F.isNestedScrollingEnabled();
    }

    @Override // kc.e
    public void j() {
        f fVar = this.F4;
        if (fVar != null) {
            fVar.j();
        }
        if (this.C.A() || this.C.C()) {
            this.f27920j.onFinish();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f27915e = getChildAt(3);
        this.C.z();
        d dVar = this.C;
        this.G = new mc.e(dVar, new mc.f(dVar));
        E();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.G.d(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.G.f(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public void setAutoLoadMore(boolean z10) {
        this.f27932v = z10;
        if (z10) {
            setEnableLoadmore(true);
        }
    }

    public void setBothEnableOverScroll(boolean z10) {
        this.f27935y = z10;
        this.f27934x = z10;
    }

    public void setBottomHeight(float f10) {
        this.f27921k = nc.a.a(getContext(), f10);
    }

    public void setDecorator(mc.c cVar) {
        if (cVar != null) {
            this.G = cVar;
        }
    }

    public void setEnableKeepIView(boolean z10) {
        this.f27936z = z10;
    }

    public void setEnableLoadmore(boolean z10) {
        this.f27927q = z10;
        kc.a aVar = this.f27920j;
        if (aVar != null) {
            if (z10) {
                aVar.getView().setVisibility(0);
            } else {
                aVar.getView().setVisibility(8);
            }
        }
    }

    @Deprecated
    public void setEnableOverScroll(boolean z10) {
    }

    public void setEnableRefresh(boolean z10) {
        this.f27928r = z10;
        kc.b bVar = this.f27919i;
        if (bVar != null) {
            if (z10) {
                bVar.getView().setVisibility(0);
            } else {
                bVar.getView().setVisibility(8);
            }
        }
    }

    public void setFloatRefresh(boolean z10) {
        this.f27933w = z10;
        if (z10) {
            post(new b());
        }
    }

    public void setFooterView(kc.a aVar) {
        if (aVar != null) {
            this.f27922l.removeAllViewsInLayout();
            this.f27922l.addView(aVar.getView());
            this.f27920j = aVar;
        }
    }

    public void setHeaderHeight(float f10) {
        this.f27913c = nc.a.a(getContext(), f10);
    }

    public void setHeaderView(kc.b bVar) {
        if (bVar != null) {
            this.f27916f.removeAllViewsInLayout();
            this.f27916f.addView(bVar.getView());
            this.f27919i = bVar;
        }
    }

    public void setMaxBottomHeight(float f10) {
        this.f27912b = nc.a.a(getContext(), f10);
    }

    public void setMaxHeadHeight(float f10) {
        this.f27909a = nc.a.a(getContext(), f10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z10) {
        this.F.setNestedScrollingEnabled(z10);
    }

    public void setOnRefreshListener(f fVar) {
        if (fVar != null) {
            this.F4 = fVar;
        }
    }

    public void setOverScrollBottomShow(boolean z10) {
        this.f27930t = z10;
    }

    public void setOverScrollHeight(float f10) {
        this.f27914d = nc.a.a(getContext(), f10);
    }

    public void setOverScrollRefreshShow(boolean z10) {
        this.f27929s = z10;
        this.f27930t = z10;
    }

    public void setOverScrollTopShow(boolean z10) {
        this.f27929s = z10;
    }

    public void setTargetView(View view) {
        if (view != null) {
            this.f27915e = view;
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i9) {
        return this.F.startNestedScroll(i9);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.F.stopNestedScroll();
    }

    public TwinklingRefreshLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwinklingRefreshLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f27918h = 0;
        this.f27923m = false;
        this.f27924n = false;
        this.f27925o = false;
        this.f27926p = false;
        this.f27927q = true;
        this.f27928r = true;
        this.f27929s = true;
        this.f27930t = true;
        this.f27931u = false;
        this.f27932v = true;
        this.f27933w = true;
        this.f27934x = false;
        this.f27935y = true;
        this.f27936z = true;
        this.A = true;
        this.B = true;
        int scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.D = scaledTouchSlop;
        this.E = this;
        this.P = ViewConfiguration.getMaximumFlingVelocity();
        this.Q = ViewConfiguration.getMinimumFlingVelocity();
        this.V1 = scaledTouchSlop * scaledTouchSlop;
        this.f27911a2 = new int[2];
        this.V2 = new int[2];
        this.B3 = new int[2];
        this.V3 = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TwinklingRefreshLayout, i9, 0);
        try {
            this.f27909a = obtainStyledAttributes.getDimensionPixelSize(R$styleable.TwinklingRefreshLayout_tr_max_head_height, nc.a.a(context, 120.0f));
            this.f27913c = obtainStyledAttributes.getDimensionPixelSize(R$styleable.TwinklingRefreshLayout_tr_head_height, nc.a.a(context, 80.0f));
            this.f27912b = obtainStyledAttributes.getDimensionPixelSize(R$styleable.TwinklingRefreshLayout_tr_max_bottom_height, nc.a.a(context, 120.0f));
            this.f27921k = obtainStyledAttributes.getDimensionPixelSize(R$styleable.TwinklingRefreshLayout_tr_bottom_height, nc.a.a(context, 60.0f));
            this.f27914d = obtainStyledAttributes.getDimensionPixelSize(R$styleable.TwinklingRefreshLayout_tr_overscroll_height, (int) this.f27913c);
            this.f27928r = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_enable_refresh, true);
            this.f27927q = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_enable_loadmore, true);
            this.f27931u = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_pureScrollMode_on, false);
            this.f27929s = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_overscroll_top_show, true);
            this.f27930t = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_overscroll_bottom_show, true);
            this.f27935y = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_enable_bottom_overscroll, true);
            this.f27934x = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_enable_top_overscroll, false);
            this.f27933w = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_floatRefresh, true);
            this.f27932v = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_autoLoadMore, true);
            this.f27936z = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_enable_keepIView, true);
            this.A = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_showRefreshingWhenOverScroll, true);
            this.B = obtainStyledAttributes.getBoolean(R$styleable.TwinklingRefreshLayout_tr_showLoadingWhenOverScroll, true);
            obtainStyledAttributes.recycle();
            this.C = new d();
            y();
            x();
            setFloatRefresh(this.f27933w);
            setAutoLoadMore(this.f27932v);
            setEnableRefresh(this.f27928r);
            setEnableLoadmore(this.f27927q);
            this.F = new NestedScrollingChildHelper(this);
            setNestedScrollingEnabled(true);
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }
}
