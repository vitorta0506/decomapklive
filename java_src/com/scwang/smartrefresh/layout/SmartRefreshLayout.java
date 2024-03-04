package com.scwang.smartrefresh.layout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import com.scwang.smartrefresh.layout.constant.DimensionStatus;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.footer.BallPulseFooter;
import com.scwang.smartrefresh.layout.header.BezierRadarHeader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class SmartRefreshLayout extends ViewGroup implements wd.j, NestedScrollingParent {

    /* renamed from: l5  reason: collision with root package name */
    protected static wd.a f29277l5;

    /* renamed from: m5  reason: collision with root package name */
    protected static wd.b f29278m5;

    /* renamed from: n5  reason: collision with root package name */
    protected static wd.c f29279n5;
    protected boolean A;
    protected boolean B;
    protected zd.b B3;
    protected boolean C;
    protected wd.k C4;
    protected boolean D;
    protected int D4;
    protected boolean E;
    protected boolean E4;
    protected boolean F;
    protected int[] F4;
    protected boolean G;
    protected NestedScrollingChildHelper G4;
    protected boolean H;
    protected NestedScrollingParentHelper H4;
    protected boolean I;
    protected int I4;
    protected boolean J;
    protected DimensionStatus J4;
    protected boolean K;
    protected int K4;
    protected boolean L;
    protected DimensionStatus L4;
    protected boolean M;
    protected int M4;
    protected boolean N;
    protected int N4;
    protected boolean O;
    protected float O4;
    protected boolean P;
    protected float P4;
    protected boolean Q;
    protected float Q4;
    protected boolean R;
    protected float R4;
    protected wd.h S4;
    protected wd.h T4;
    protected wd.e U4;
    protected boolean V1;
    protected zd.d V2;
    protected zd.c V3;
    protected Paint V4;
    protected Handler W4;
    protected wd.i X4;
    protected List<ae.a> Y4;
    protected RefreshState Z4;

    /* renamed from: a  reason: collision with root package name */
    protected int f29280a;

    /* renamed from: a1  reason: collision with root package name */
    protected boolean f29281a1;

    /* renamed from: a2  reason: collision with root package name */
    protected boolean f29282a2;

    /* renamed from: a5  reason: collision with root package name */
    protected RefreshState f29283a5;

    /* renamed from: b  reason: collision with root package name */
    protected int f29284b;

    /* renamed from: b5  reason: collision with root package name */
    protected long f29285b5;

    /* renamed from: c  reason: collision with root package name */
    protected int f29286c;

    /* renamed from: c5  reason: collision with root package name */
    protected int f29287c5;

    /* renamed from: d  reason: collision with root package name */
    protected int f29288d;

    /* renamed from: d5  reason: collision with root package name */
    protected int f29289d5;

    /* renamed from: e  reason: collision with root package name */
    protected int f29290e;

    /* renamed from: e5  reason: collision with root package name */
    protected boolean f29291e5;

    /* renamed from: f  reason: collision with root package name */
    protected int f29292f;

    /* renamed from: f5  reason: collision with root package name */
    protected boolean f29293f5;

    /* renamed from: g  reason: collision with root package name */
    protected int f29294g;

    /* renamed from: g5  reason: collision with root package name */
    protected boolean f29295g5;

    /* renamed from: h  reason: collision with root package name */
    protected float f29296h;

    /* renamed from: h5  reason: collision with root package name */
    protected boolean f29297h5;

    /* renamed from: i  reason: collision with root package name */
    protected float f29298i;

    /* renamed from: i5  reason: collision with root package name */
    protected MotionEvent f29299i5;

    /* renamed from: j  reason: collision with root package name */
    protected float f29300j;

    /* renamed from: j5  reason: collision with root package name */
    protected Runnable f29301j5;

    /* renamed from: k  reason: collision with root package name */
    protected float f29302k;

    /* renamed from: k5  reason: collision with root package name */
    protected ValueAnimator f29303k5;

    /* renamed from: l  reason: collision with root package name */
    protected float f29304l;

    /* renamed from: m  reason: collision with root package name */
    protected char f29305m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f29306n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f29307o;

    /* renamed from: p  reason: collision with root package name */
    protected int f29308p;

    /* renamed from: q  reason: collision with root package name */
    protected int f29309q;

    /* renamed from: r  reason: collision with root package name */
    protected int f29310r;

    /* renamed from: s  reason: collision with root package name */
    protected int f29311s;

    /* renamed from: t  reason: collision with root package name */
    protected int f29312t;

    /* renamed from: u  reason: collision with root package name */
    protected int f29313u;

    /* renamed from: v  reason: collision with root package name */
    protected int f29314v;

    /* renamed from: w  reason: collision with root package name */
    protected Scroller f29315w;

    /* renamed from: x  reason: collision with root package name */
    protected VelocityTracker f29316x;

    /* renamed from: y  reason: collision with root package name */
    protected Interpolator f29317y;

    /* renamed from: z  reason: collision with root package name */
    protected int[] f29318z;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29319a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29319a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29319a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29319a[RefreshState.PullUpToLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29319a[RefreshState.PullDownCanceled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29319a[RefreshState.PullUpCanceled.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29319a[RefreshState.ReleaseToRefresh.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f29319a[RefreshState.ReleaseToLoad.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f29319a[RefreshState.ReleaseToTwoLevel.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f29319a[RefreshState.RefreshReleased.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f29319a[RefreshState.LoadReleased.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f29319a[RefreshState.Refreshing.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f29319a[RefreshState.Loading.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f29319a[RefreshState.RefreshFinish.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f29319a[RefreshState.LoadFinish.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f29319a[RefreshState.TwoLevelReleased.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f29319a[RefreshState.TwoLevelFinish.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f29319a[RefreshState.TwoLevel.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29320a;

        b(boolean z10) {
            this.f29320a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout.this.setStateDirectLoading(this.f29320a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29322a;

        c(boolean z10) {
            this.f29322a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout.this.f29285b5 = System.currentTimeMillis();
            SmartRefreshLayout.this.G(RefreshState.Refreshing);
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            zd.d dVar = smartRefreshLayout.V2;
            if (dVar != null) {
                if (this.f29322a) {
                    dVar.a(smartRefreshLayout);
                }
            } else if (smartRefreshLayout.V3 == null) {
                smartRefreshLayout.d(3000);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            wd.h hVar = smartRefreshLayout2.S4;
            if (hVar != null) {
                int i9 = smartRefreshLayout2.I4;
                hVar.k(smartRefreshLayout2, i9, (int) (smartRefreshLayout2.O4 * i9));
            }
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            zd.c cVar = smartRefreshLayout3.V3;
            if (cVar == null || !(smartRefreshLayout3.S4 instanceof wd.g)) {
                return;
            }
            if (this.f29322a) {
                cVar.a(smartRefreshLayout3);
            }
            SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
            int i10 = smartRefreshLayout4.I4;
            smartRefreshLayout4.V3.p((wd.g) smartRefreshLayout4.S4, i10, (int) (smartRefreshLayout4.O4 * i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            RefreshState refreshState;
            RefreshState refreshState2;
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            smartRefreshLayout.f29303k5 = null;
            if (smartRefreshLayout.f29284b == 0 && (refreshState = smartRefreshLayout.Z4) != (refreshState2 = RefreshState.None) && !refreshState.isOpening && !refreshState.isDragging) {
                smartRefreshLayout.G(refreshState2);
                return;
            }
            RefreshState refreshState3 = smartRefreshLayout.Z4;
            if (refreshState3 != smartRefreshLayout.f29283a5) {
                smartRefreshLayout.setViceState(refreshState3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmartRefreshLayout.this.X4.g(((Integer) valueAnimator.getAnimatedValue()).intValue(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            zd.b bVar = smartRefreshLayout.B3;
            if (bVar != null) {
                bVar.b(smartRefreshLayout);
            } else if (smartRefreshLayout.V3 == null) {
                smartRefreshLayout.s(2000);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            zd.c cVar = smartRefreshLayout2.V3;
            if (cVar != null) {
                cVar.b(smartRefreshLayout2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29327a;

        g(boolean z10) {
            this.f29327a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.Z4 != RefreshState.Refreshing || smartRefreshLayout.S4 == null || smartRefreshLayout.U4 == null) {
                return;
            }
            if (this.f29327a) {
                smartRefreshLayout.I();
            }
            SmartRefreshLayout.this.G(RefreshState.RefreshFinish);
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            int c10 = smartRefreshLayout2.S4.c(smartRefreshLayout2, this.f29327a);
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            zd.c cVar = smartRefreshLayout3.V3;
            if (cVar != null) {
                wd.h hVar = smartRefreshLayout3.S4;
                if (hVar instanceof wd.g) {
                    cVar.l((wd.g) hVar, this.f29327a);
                }
            }
            if (c10 < Integer.MAX_VALUE) {
                SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                if (smartRefreshLayout4.f29306n || smartRefreshLayout4.E4) {
                    long currentTimeMillis = System.currentTimeMillis();
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (smartRefreshLayout5.f29306n) {
                        float f10 = smartRefreshLayout5.f29302k;
                        smartRefreshLayout5.f29298i = f10;
                        smartRefreshLayout5.f29288d = 0;
                        smartRefreshLayout5.f29306n = false;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 0, smartRefreshLayout5.f29300j, (f10 + smartRefreshLayout5.f29284b) - (smartRefreshLayout5.f29280a * 2), 0));
                        SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 2, smartRefreshLayout6.f29300j, smartRefreshLayout6.f29302k + smartRefreshLayout6.f29284b, 0));
                    }
                    SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                    if (smartRefreshLayout7.E4) {
                        smartRefreshLayout7.D4 = 0;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 1, smartRefreshLayout7.f29300j, smartRefreshLayout7.f29302k, 0));
                        SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                        smartRefreshLayout8.E4 = false;
                        smartRefreshLayout8.f29288d = 0;
                    }
                }
                SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                int i9 = smartRefreshLayout9.f29284b;
                if (i9 <= 0) {
                    if (i9 < 0) {
                        smartRefreshLayout9.m(0, c10, smartRefreshLayout9.f29317y, smartRefreshLayout9.f29292f);
                        return;
                    }
                    smartRefreshLayout9.X4.g(0, false);
                    SmartRefreshLayout.this.J();
                    return;
                }
                ValueAnimator m10 = smartRefreshLayout9.m(0, c10, smartRefreshLayout9.f29317y, smartRefreshLayout9.f29292f);
                SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                ValueAnimator.AnimatorUpdateListener c11 = smartRefreshLayout10.N ? smartRefreshLayout10.U4.c(smartRefreshLayout10.f29284b) : null;
                if (m10 == null || c11 == null) {
                    return;
                }
                m10.addUpdateListener(c11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29329a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29330b;

        /* loaded from: classes4.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f29332a;

            /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class C0287a extends AnimatorListenerAdapter {
                C0287a() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    h hVar = h.this;
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    smartRefreshLayout.f29295g5 = false;
                    if (hVar.f29330b) {
                        smartRefreshLayout.R(true);
                    }
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.Z4 == RefreshState.LoadFinish) {
                        smartRefreshLayout2.G(RefreshState.None);
                    }
                }
            }

            a(int i9) {
                this.f29332a = i9;
            }

            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimator;
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                ValueAnimator.AnimatorUpdateListener c10 = (!smartRefreshLayout.M || this.f29332a >= 0) ? null : smartRefreshLayout.U4.c(smartRefreshLayout.f29284b);
                if (c10 != null) {
                    c10.onAnimationUpdate(ValueAnimator.ofInt(0, 0));
                }
                C0287a c0287a = new C0287a();
                h hVar = h.this;
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                int i9 = smartRefreshLayout2.f29284b;
                if (i9 > 0) {
                    valueAnimator = smartRefreshLayout2.X4.d(0);
                } else {
                    if (c10 == null && i9 != 0) {
                        if (hVar.f29330b && smartRefreshLayout2.G) {
                            int i10 = smartRefreshLayout2.K4;
                            if (i9 >= (-i10)) {
                                smartRefreshLayout2.G(RefreshState.None);
                            } else {
                                valueAnimator = smartRefreshLayout2.X4.d(-i10);
                            }
                        } else {
                            valueAnimator = smartRefreshLayout2.X4.d(0);
                        }
                    } else {
                        ValueAnimator valueAnimator2 = smartRefreshLayout2.f29303k5;
                        if (valueAnimator2 != null) {
                            valueAnimator2.cancel();
                            SmartRefreshLayout.this.f29303k5 = null;
                        }
                        SmartRefreshLayout.this.X4.g(0, false);
                        SmartRefreshLayout.this.J();
                    }
                    valueAnimator = null;
                }
                if (valueAnimator != null) {
                    valueAnimator.addListener(c0287a);
                } else {
                    c0287a.onAnimationEnd(null);
                }
            }
        }

        h(boolean z10, boolean z11) {
            this.f29329a = z10;
            this.f29330b = z11;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
            if (r2.U4.canLoadMore() != false) goto L22;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.h.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f29335a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29336b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f29337c;

        /* loaded from: classes4.dex */
        class a implements ValueAnimator.AnimatorUpdateListener {
            a() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartRefreshLayout.this.X4.g(((Integer) valueAnimator.getAnimatedValue()).intValue(), true);
            }
        }

        /* loaded from: classes4.dex */
        class b extends AnimatorListenerAdapter {
            b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                smartRefreshLayout.f29303k5 = null;
                RefreshState refreshState = smartRefreshLayout.Z4;
                RefreshState refreshState2 = RefreshState.ReleaseToRefresh;
                if (refreshState != refreshState2) {
                    smartRefreshLayout.X4.b(refreshState2);
                }
                i iVar = i.this;
                SmartRefreshLayout.this.setStateRefreshing(!iVar.f29337c);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                smartRefreshLayout.f29300j = smartRefreshLayout.getMeasuredWidth() / 2.0f;
                SmartRefreshLayout.this.X4.b(RefreshState.PullDownToRefresh);
            }
        }

        i(float f10, int i9, boolean z10) {
            this.f29335a = f10;
            this.f29336b = i9;
            this.f29337c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            ValueAnimator valueAnimator = SmartRefreshLayout.this.f29303k5;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            smartRefreshLayout.f29303k5 = ValueAnimator.ofInt(smartRefreshLayout.f29284b, (int) (smartRefreshLayout.I4 * this.f29335a));
            SmartRefreshLayout.this.f29303k5.setDuration(this.f29336b);
            SmartRefreshLayout.this.f29303k5.setInterpolator(new DecelerateInterpolator());
            SmartRefreshLayout.this.f29303k5.addUpdateListener(new a());
            SmartRefreshLayout.this.f29303k5.addListener(new b());
            SmartRefreshLayout.this.f29303k5.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public class j implements Runnable {

        /* renamed from: c  reason: collision with root package name */
        int f29343c;

        /* renamed from: f  reason: collision with root package name */
        float f29346f;

        /* renamed from: a  reason: collision with root package name */
        int f29341a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f29342b = 10;

        /* renamed from: e  reason: collision with root package name */
        float f29345e = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        long f29344d = AnimationUtils.currentAnimationTimeMillis();

        j(float f10, int i9) {
            this.f29346f = f10;
            this.f29343c = i9;
            SmartRefreshLayout.this.postDelayed(this, this.f29342b);
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.f29301j5 != this || smartRefreshLayout.Z4.isFinishing) {
                return;
            }
            if (Math.abs(smartRefreshLayout.f29284b) >= Math.abs(this.f29343c)) {
                if (this.f29343c != 0) {
                    int i9 = this.f29341a + 1;
                    this.f29341a = i9;
                    this.f29346f = (float) (this.f29346f * Math.pow(0.44999998807907104d, i9 * 2));
                } else {
                    int i10 = this.f29341a + 1;
                    this.f29341a = i10;
                    this.f29346f = (float) (this.f29346f * Math.pow(0.8500000238418579d, i10 * 2));
                }
            } else {
                int i11 = this.f29341a + 1;
                this.f29341a = i11;
                this.f29346f = (float) (this.f29346f * Math.pow(0.949999988079071d, i11 * 2));
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float f10 = this.f29346f * ((((float) (currentAnimationTimeMillis - this.f29344d)) * 1.0f) / 1000.0f);
            if (Math.abs(f10) >= 1.0f) {
                this.f29344d = currentAnimationTimeMillis;
                float f11 = this.f29345e + f10;
                this.f29345e = f11;
                SmartRefreshLayout.this.F(f11);
                SmartRefreshLayout.this.postDelayed(this, this.f29342b);
                return;
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            smartRefreshLayout2.f29301j5 = null;
            if (Math.abs(smartRefreshLayout2.f29284b) >= Math.abs(this.f29343c)) {
                SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                smartRefreshLayout3.m(this.f29343c, 0, smartRefreshLayout3.f29317y, Math.min(Math.max((int) ae.b.c(Math.abs(SmartRefreshLayout.this.f29284b - this.f29343c)), 30), 100) * 10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f29348a;

        /* renamed from: d  reason: collision with root package name */
        float f29351d;

        /* renamed from: b  reason: collision with root package name */
        int f29349b = 0;

        /* renamed from: c  reason: collision with root package name */
        int f29350c = 10;

        /* renamed from: e  reason: collision with root package name */
        float f29352e = 0.98f;

        /* renamed from: f  reason: collision with root package name */
        long f29353f = 0;

        /* renamed from: g  reason: collision with root package name */
        long f29354g = AnimationUtils.currentAnimationTimeMillis();

        k(float f10) {
            this.f29351d = f10;
            this.f29348a = SmartRefreshLayout.this.f29284b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0041, code lost:
            if (r0.f29284b >= (-r0.K4)) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004f, code lost:
            if (r0.f29284b > r0.I4) goto L15;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Runnable b() {
            /*
                r11 = this;
                com.scwang.smartrefresh.layout.SmartRefreshLayout r0 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                com.scwang.smartrefresh.layout.constant.RefreshState r1 = r0.Z4
                boolean r2 = r1.isFinishing
                r3 = 0
                if (r2 == 0) goto La
                return r3
            La:
                int r2 = r0.f29284b
                if (r2 == 0) goto La3
                boolean r1 = r1.isOpening
                if (r1 != 0) goto L22
                boolean r1 = r0.R
                if (r1 == 0) goto L51
                boolean r1 = r0.G
                if (r1 == 0) goto L51
                boolean r1 = r0.B
                boolean r0 = r0.D(r1)
                if (r0 == 0) goto L51
            L22:
                com.scwang.smartrefresh.layout.SmartRefreshLayout r0 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                com.scwang.smartrefresh.layout.constant.RefreshState r1 = r0.Z4
                com.scwang.smartrefresh.layout.constant.RefreshState r2 = com.scwang.smartrefresh.layout.constant.RefreshState.Loading
                if (r1 == r2) goto L3a
                boolean r1 = r0.R
                if (r1 == 0) goto L43
                boolean r1 = r0.G
                if (r1 == 0) goto L43
                boolean r1 = r0.B
                boolean r0 = r0.D(r1)
                if (r0 == 0) goto L43
            L3a:
                com.scwang.smartrefresh.layout.SmartRefreshLayout r0 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                int r1 = r0.f29284b
                int r0 = r0.K4
                int r0 = -r0
                if (r1 < r0) goto L51
            L43:
                com.scwang.smartrefresh.layout.SmartRefreshLayout r0 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                com.scwang.smartrefresh.layout.constant.RefreshState r1 = r0.Z4
                com.scwang.smartrefresh.layout.constant.RefreshState r2 = com.scwang.smartrefresh.layout.constant.RefreshState.Refreshing
                if (r1 != r2) goto La3
                int r1 = r0.f29284b
                int r0 = r0.I4
                if (r1 <= r0) goto La3
            L51:
                r0 = 0
                com.scwang.smartrefresh.layout.SmartRefreshLayout r1 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                int r1 = r1.f29284b
                float r2 = r11.f29351d
                r4 = r1
            L59:
                int r5 = r1 * r4
                if (r5 <= 0) goto La3
                double r5 = (double) r2
                float r2 = r11.f29352e
                double r7 = (double) r2
                int r0 = r0 + 1
                int r2 = r11.f29350c
                int r2 = r2 * r0
                float r2 = (float) r2
                r9 = 1092616192(0x41200000, float:10.0)
                float r2 = r2 / r9
                double r9 = (double) r2
                double r7 = java.lang.Math.pow(r7, r9)
                double r5 = r5 * r7
                float r2 = (float) r5
                int r5 = r11.f29350c
                float r5 = (float) r5
                r6 = 1065353216(0x3f800000, float:1.0)
                float r5 = r5 * r6
                r7 = 1148846080(0x447a0000, float:1000.0)
                float r5 = r5 / r7
                float r5 = r5 * r2
                float r7 = java.lang.Math.abs(r5)
                int r6 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
                if (r6 >= 0) goto L9f
                com.scwang.smartrefresh.layout.SmartRefreshLayout r0 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                com.scwang.smartrefresh.layout.constant.RefreshState r1 = r0.Z4
                boolean r2 = r1.isOpening
                if (r2 == 0) goto L9e
                com.scwang.smartrefresh.layout.constant.RefreshState r2 = com.scwang.smartrefresh.layout.constant.RefreshState.Refreshing
                if (r1 != r2) goto L97
                int r5 = r0.I4
                if (r4 > r5) goto L9e
            L97:
                if (r1 == r2) goto La3
                int r0 = r0.K4
                int r0 = -r0
                if (r4 >= r0) goto La3
            L9e:
                return r3
            L9f:
                float r4 = (float) r4
                float r4 = r4 + r5
                int r4 = (int) r4
                goto L59
            La3:
                long r0 = android.view.animation.AnimationUtils.currentAnimationTimeMillis()
                r11.f29353f = r0
                com.scwang.smartrefresh.layout.SmartRefreshLayout r0 = com.scwang.smartrefresh.layout.SmartRefreshLayout.this
                int r1 = r11.f29350c
                long r1 = (long) r1
                r0.postDelayed(r11, r1)
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.k.b():java.lang.Runnable");
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.f29301j5 != this || smartRefreshLayout.Z4.isFinishing) {
                return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float pow = (float) (this.f29351d * Math.pow(this.f29352e, ((float) (currentAnimationTimeMillis - this.f29353f)) / (1000.0f / this.f29350c)));
            this.f29351d = pow;
            float f10 = pow * ((((float) (currentAnimationTimeMillis - this.f29354g)) * 1.0f) / 1000.0f);
            if (Math.abs(f10) > 1.0f) {
                this.f29354g = currentAnimationTimeMillis;
                int i9 = (int) (this.f29348a + f10);
                this.f29348a = i9;
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                if (smartRefreshLayout2.f29284b * i9 > 0) {
                    smartRefreshLayout2.X4.g(i9, true);
                    SmartRefreshLayout.this.postDelayed(this, this.f29350c);
                    return;
                }
                smartRefreshLayout2.f29301j5 = null;
                smartRefreshLayout2.X4.g(0, true);
                ae.e.a(SmartRefreshLayout.this.U4.d(), (int) (-this.f29351d));
                SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                if (!smartRefreshLayout3.f29295g5 || f10 <= 0.0f) {
                    return;
                }
                smartRefreshLayout3.f29295g5 = false;
                return;
            }
            SmartRefreshLayout.this.f29301j5 = null;
        }
    }

    /* loaded from: classes4.dex */
    public class m implements wd.i {

        /* loaded from: classes4.dex */
        class a extends AnimatorListenerAdapter {
            a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SmartRefreshLayout.this.X4.b(RefreshState.TwoLevel);
            }
        }

        public m() {
        }

        @Override // wd.i
        public wd.i a(@NonNull wd.h hVar, boolean z10) {
            if (hVar.equals(SmartRefreshLayout.this.S4)) {
                SmartRefreshLayout.this.f29291e5 = z10;
            } else if (hVar.equals(SmartRefreshLayout.this.T4)) {
                SmartRefreshLayout.this.f29293f5 = z10;
            }
            return this;
        }

        @Override // wd.i
        public wd.i b(@NonNull RefreshState refreshState) {
            switch (a.f29319a[refreshState.ordinal()]) {
                case 1:
                    SmartRefreshLayout.this.J();
                    return null;
                case 2:
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    if (!smartRefreshLayout.Z4.isOpening && smartRefreshLayout.D(smartRefreshLayout.A)) {
                        SmartRefreshLayout.this.G(RefreshState.PullDownToRefresh);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullDownToRefresh);
                    return null;
                case 3:
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.D(smartRefreshLayout2.B)) {
                        SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                        RefreshState refreshState2 = smartRefreshLayout3.Z4;
                        if (!refreshState2.isOpening && !refreshState2.isFinishing && (!smartRefreshLayout3.R || !smartRefreshLayout3.G)) {
                            smartRefreshLayout3.G(RefreshState.PullUpToLoad);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullUpToLoad);
                    return null;
                case 4:
                    SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout4.Z4.isOpening && smartRefreshLayout4.D(smartRefreshLayout4.A)) {
                        SmartRefreshLayout.this.G(RefreshState.PullDownCanceled);
                        SmartRefreshLayout.this.J();
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullDownCanceled);
                    return null;
                case 5:
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (smartRefreshLayout5.D(smartRefreshLayout5.B)) {
                        SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                        if (!smartRefreshLayout6.Z4.isOpening && (!smartRefreshLayout6.R || !smartRefreshLayout6.G)) {
                            smartRefreshLayout6.G(RefreshState.PullUpCanceled);
                            SmartRefreshLayout.this.J();
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullUpCanceled);
                    return null;
                case 6:
                    SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout7.Z4.isOpening && smartRefreshLayout7.D(smartRefreshLayout7.A)) {
                        SmartRefreshLayout.this.G(RefreshState.ReleaseToRefresh);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.ReleaseToRefresh);
                    return null;
                case 7:
                    SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                    if (smartRefreshLayout8.D(smartRefreshLayout8.B)) {
                        SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                        RefreshState refreshState3 = smartRefreshLayout9.Z4;
                        if (!refreshState3.isOpening && !refreshState3.isFinishing && (!smartRefreshLayout9.R || !smartRefreshLayout9.G)) {
                            smartRefreshLayout9.G(RefreshState.ReleaseToLoad);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.ReleaseToLoad);
                    return null;
                case 8:
                    SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout10.Z4.isOpening && smartRefreshLayout10.D(smartRefreshLayout10.A)) {
                        SmartRefreshLayout.this.G(RefreshState.ReleaseToTwoLevel);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.ReleaseToTwoLevel);
                    return null;
                case 9:
                    SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout11.Z4.isOpening && smartRefreshLayout11.D(smartRefreshLayout11.A)) {
                        SmartRefreshLayout.this.G(RefreshState.RefreshReleased);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.RefreshReleased);
                    return null;
                case 10:
                    SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout12.Z4.isOpening && smartRefreshLayout12.D(smartRefreshLayout12.B)) {
                        SmartRefreshLayout.this.G(RefreshState.LoadReleased);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.LoadReleased);
                    return null;
                case 11:
                    SmartRefreshLayout.this.setStateRefreshing(true);
                    return null;
                case 12:
                    SmartRefreshLayout.this.setStateLoading(true);
                    return null;
                case 13:
                    SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                    if (smartRefreshLayout13.Z4 == RefreshState.Refreshing) {
                        smartRefreshLayout13.G(RefreshState.RefreshFinish);
                        return null;
                    }
                    return null;
                case 14:
                    SmartRefreshLayout smartRefreshLayout14 = SmartRefreshLayout.this;
                    if (smartRefreshLayout14.Z4 == RefreshState.Loading) {
                        smartRefreshLayout14.G(RefreshState.LoadFinish);
                        return null;
                    }
                    return null;
                case 15:
                    SmartRefreshLayout.this.G(RefreshState.TwoLevelReleased);
                    return null;
                case 16:
                    SmartRefreshLayout.this.G(RefreshState.TwoLevelFinish);
                    return null;
                case 17:
                    SmartRefreshLayout.this.G(RefreshState.TwoLevel);
                    return null;
                default:
                    return null;
            }
        }

        @Override // wd.i
        public wd.i c() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.Z4 == RefreshState.TwoLevel) {
                smartRefreshLayout.X4.b(RefreshState.TwoLevelFinish);
                if (SmartRefreshLayout.this.f29284b == 0) {
                    g(0, false);
                    SmartRefreshLayout.this.G(RefreshState.None);
                } else {
                    d(0).setDuration(SmartRefreshLayout.this.f29290e);
                }
            }
            return this;
        }

        @Override // wd.i
        public ValueAnimator d(int i9) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            return smartRefreshLayout.m(i9, 0, smartRefreshLayout.f29317y, smartRefreshLayout.f29292f);
        }

        @Override // wd.i
        public wd.i e(int i9) {
            SmartRefreshLayout.this.f29290e = i9;
            return this;
        }

        @Override // wd.i
        public wd.i f(boolean z10) {
            if (z10) {
                a aVar = new a();
                ValueAnimator d10 = d(SmartRefreshLayout.this.getMeasuredHeight());
                if (d10 != null) {
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    if (d10 == smartRefreshLayout.f29303k5) {
                        d10.setDuration(smartRefreshLayout.f29290e);
                        d10.addListener(aVar);
                    }
                }
                aVar.onAnimationEnd(null);
            } else if (d(0) == null) {
                SmartRefreshLayout.this.G(RefreshState.None);
            }
            return this;
        }

        @Override // wd.i
        public wd.i g(int i9, boolean z10) {
            zd.c cVar;
            zd.c cVar2;
            wd.h hVar;
            wd.h hVar2;
            SmartRefreshLayout smartRefreshLayout;
            wd.h hVar3;
            wd.h hVar4;
            wd.h hVar5;
            wd.h hVar6;
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            if (smartRefreshLayout2.f29284b != i9 || (((hVar5 = smartRefreshLayout2.S4) != null && hVar5.j()) || ((hVar6 = SmartRefreshLayout.this.T4) != null && hVar6.j()))) {
                SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                int i10 = smartRefreshLayout3.f29284b;
                smartRefreshLayout3.f29284b = i9;
                if (z10) {
                    RefreshState refreshState = smartRefreshLayout3.f29283a5;
                    if (refreshState.isDragging || refreshState.isOpening) {
                        if (i9 > smartRefreshLayout3.I4 * smartRefreshLayout3.Q4) {
                            if (smartRefreshLayout3.Z4 != RefreshState.ReleaseToTwoLevel) {
                                smartRefreshLayout3.X4.b(RefreshState.ReleaseToRefresh);
                            }
                        } else if ((-i9) > smartRefreshLayout3.K4 * smartRefreshLayout3.R4 && !smartRefreshLayout3.R) {
                            smartRefreshLayout3.X4.b(RefreshState.ReleaseToLoad);
                        } else if (i9 < 0 && !smartRefreshLayout3.R) {
                            smartRefreshLayout3.X4.b(RefreshState.PullUpToLoad);
                        } else if (i9 > 0) {
                            smartRefreshLayout3.X4.b(RefreshState.PullDownToRefresh);
                        }
                    }
                }
                SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                if (smartRefreshLayout4.U4 != null) {
                    Integer num = null;
                    if (i9 >= 0 && (hVar4 = smartRefreshLayout4.S4) != null) {
                        if (smartRefreshLayout4.E(smartRefreshLayout4.E, hVar4)) {
                            num = Integer.valueOf(i9);
                        } else if (i10 < 0) {
                            num = 0;
                        }
                    }
                    if (i9 <= 0 && (hVar3 = (smartRefreshLayout = SmartRefreshLayout.this).T4) != null) {
                        if (smartRefreshLayout.E(smartRefreshLayout.F, hVar3)) {
                            num = Integer.valueOf(i9);
                        } else if (i10 > 0) {
                            num = 0;
                        }
                    }
                    if (num != null) {
                        wd.e eVar = SmartRefreshLayout.this.U4;
                        int intValue = num.intValue();
                        SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                        eVar.f(intValue, smartRefreshLayout5.f29310r, smartRefreshLayout5.f29311s);
                        SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                        boolean z11 = (smartRefreshLayout6.C && (hVar2 = smartRefreshLayout6.S4) != null && hVar2.getSpinnerStyle() == SpinnerStyle.FixedBehind) || SmartRefreshLayout.this.f29287c5 != 0;
                        SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                        boolean z12 = (smartRefreshLayout7.D && (hVar = smartRefreshLayout7.T4) != null && hVar.getSpinnerStyle() == SpinnerStyle.FixedBehind) || SmartRefreshLayout.this.f29289d5 != 0;
                        if ((z11 && (num.intValue() >= 0 || i10 > 0)) || (z12 && (num.intValue() <= 0 || i10 < 0))) {
                            smartRefreshLayout3.invalidate();
                        }
                    }
                }
                if ((i9 >= 0 || i10 > 0) && SmartRefreshLayout.this.S4 != null) {
                    int max = Math.max(i9, 0);
                    SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                    int i11 = smartRefreshLayout8.I4;
                    int i12 = (int) (i11 * smartRefreshLayout8.O4);
                    float f10 = (max * 1.0f) / (i11 == 0 ? 1 : i11);
                    if (smartRefreshLayout8.D(smartRefreshLayout8.A) || (SmartRefreshLayout.this.Z4 == RefreshState.RefreshFinish && !z10)) {
                        SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                        if (i10 != smartRefreshLayout9.f29284b) {
                            if (smartRefreshLayout9.S4.getSpinnerStyle() == SpinnerStyle.Translate) {
                                SmartRefreshLayout.this.S4.getView().setTranslationY(SmartRefreshLayout.this.f29284b);
                                SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                                if (smartRefreshLayout10.f29287c5 != 0 && smartRefreshLayout10.V4 != null && !smartRefreshLayout10.E(smartRefreshLayout10.E, smartRefreshLayout10.S4)) {
                                    smartRefreshLayout3.invalidate();
                                }
                            } else if (SmartRefreshLayout.this.S4.getSpinnerStyle() == SpinnerStyle.Scale) {
                                SmartRefreshLayout.this.S4.getView().requestLayout();
                            }
                            SmartRefreshLayout.this.S4.o(z10, f10, max, i11, i12);
                        }
                        if (z10 && SmartRefreshLayout.this.S4.j()) {
                            int i13 = (int) SmartRefreshLayout.this.f29300j;
                            int width = smartRefreshLayout3.getWidth();
                            SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                            smartRefreshLayout11.S4.h(smartRefreshLayout11.f29300j / (width == 0 ? 1 : width), i13, width);
                        }
                    }
                    SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                    if (i10 != smartRefreshLayout12.f29284b && (cVar = smartRefreshLayout12.V3) != null) {
                        wd.h hVar7 = smartRefreshLayout12.S4;
                        if (hVar7 instanceof wd.g) {
                            cVar.n((wd.g) hVar7, z10, f10, max, i11, i12);
                        }
                    }
                }
                if ((i9 <= 0 || i10 < 0) && SmartRefreshLayout.this.T4 != null) {
                    int i14 = -Math.min(i9, 0);
                    SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                    int i15 = smartRefreshLayout13.K4;
                    int i16 = (int) (i15 * smartRefreshLayout13.P4);
                    float f11 = (i14 * 1.0f) / (i15 == 0 ? 1 : i15);
                    if (smartRefreshLayout13.D(smartRefreshLayout13.B) || (SmartRefreshLayout.this.Z4 == RefreshState.LoadFinish && !z10)) {
                        SmartRefreshLayout smartRefreshLayout14 = SmartRefreshLayout.this;
                        if (i10 != smartRefreshLayout14.f29284b) {
                            if (smartRefreshLayout14.T4.getSpinnerStyle() == SpinnerStyle.Translate) {
                                SmartRefreshLayout.this.T4.getView().setTranslationY(SmartRefreshLayout.this.f29284b);
                                SmartRefreshLayout smartRefreshLayout15 = SmartRefreshLayout.this;
                                if (smartRefreshLayout15.f29289d5 != 0 && smartRefreshLayout15.V4 != null && !smartRefreshLayout15.E(smartRefreshLayout15.F, smartRefreshLayout15.T4)) {
                                    smartRefreshLayout3.invalidate();
                                }
                            } else if (SmartRefreshLayout.this.T4.getSpinnerStyle() == SpinnerStyle.Scale) {
                                SmartRefreshLayout.this.T4.getView().requestLayout();
                            }
                            SmartRefreshLayout.this.T4.o(z10, f11, i14, i15, i16);
                        }
                        if (z10 && SmartRefreshLayout.this.T4.j()) {
                            int i17 = (int) SmartRefreshLayout.this.f29300j;
                            int width2 = smartRefreshLayout3.getWidth();
                            SmartRefreshLayout smartRefreshLayout16 = SmartRefreshLayout.this;
                            smartRefreshLayout16.T4.h(smartRefreshLayout16.f29300j / (width2 != 0 ? width2 : 1), i17, width2);
                        }
                    }
                    SmartRefreshLayout smartRefreshLayout17 = SmartRefreshLayout.this;
                    if (i10 != smartRefreshLayout17.f29284b && (cVar2 = smartRefreshLayout17.V3) != null) {
                        wd.h hVar8 = smartRefreshLayout17.T4;
                        if (hVar8 instanceof wd.f) {
                            cVar2.m((wd.f) hVar8, z10, f11, i14, i15, i16);
                        }
                    }
                }
                return this;
            }
            return this;
        }

        @Override // wd.i
        public wd.i h(@NonNull wd.h hVar, boolean z10) {
            if (hVar.equals(SmartRefreshLayout.this.S4)) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (!smartRefreshLayout.V1) {
                    smartRefreshLayout.V1 = true;
                    smartRefreshLayout.E = z10;
                }
            } else if (hVar.equals(SmartRefreshLayout.this.T4)) {
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                if (!smartRefreshLayout2.f29282a2) {
                    smartRefreshLayout2.f29282a2 = true;
                    smartRefreshLayout2.F = z10;
                }
            }
            return this;
        }

        @Override // wd.i
        @NonNull
        public wd.e i() {
            return SmartRefreshLayout.this.U4;
        }

        @Override // wd.i
        public wd.i j(@NonNull wd.h hVar, int i9) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.V4 == null && i9 != 0) {
                smartRefreshLayout.V4 = new Paint();
            }
            if (hVar.equals(SmartRefreshLayout.this.S4)) {
                SmartRefreshLayout.this.f29287c5 = i9;
            } else if (hVar.equals(SmartRefreshLayout.this.T4)) {
                SmartRefreshLayout.this.f29289d5 = i9;
            }
            return this;
        }

        @Override // wd.i
        @NonNull
        public wd.j k() {
            return SmartRefreshLayout.this;
        }
    }

    public SmartRefreshLayout(Context context) {
        this(context, null);
    }

    public static void setDefaultRefreshFooterCreator(@NonNull wd.a aVar) {
        f29277l5 = aVar;
    }

    public static void setDefaultRefreshHeaderCreator(@NonNull wd.b bVar) {
        f29278m5 = bVar;
    }

    public static void setDefaultRefreshInitializer(@NonNull wd.c cVar) {
        f29279n5 = cVar;
    }

    @Override // android.view.ViewGroup
    /* renamed from: A */
    public l generateLayoutParams(AttributeSet attributeSet) {
        return new l(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: B */
    public l generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new l(layoutParams);
    }

    protected boolean C(int i9) {
        if (i9 == 0) {
            if (this.f29303k5 != null) {
                RefreshState refreshState = this.Z4;
                if (refreshState.isFinishing || refreshState == RefreshState.TwoLevelReleased) {
                    return true;
                }
                if (refreshState == RefreshState.PullDownCanceled) {
                    this.X4.b(RefreshState.PullDownToRefresh);
                } else if (refreshState == RefreshState.PullUpCanceled) {
                    this.X4.b(RefreshState.PullUpToLoad);
                }
                this.f29303k5.cancel();
                this.f29303k5 = null;
            }
            this.f29301j5 = null;
        }
        return this.f29303k5 != null;
    }

    protected boolean D(boolean z10) {
        return z10 && !this.L;
    }

    protected boolean E(boolean z10, wd.h hVar) {
        return z10 || this.L || hVar == null || hVar.getSpinnerStyle() == SpinnerStyle.FixedBehind;
    }

    protected void F(float f10) {
        RefreshState refreshState;
        float f11 = (!this.E4 || this.O || f10 >= 0.0f || this.U4.canLoadMore()) ? f10 : 0.0f;
        RefreshState refreshState2 = this.Z4;
        if (refreshState2 == RefreshState.TwoLevel && f11 > 0.0f) {
            this.X4.g(Math.min((int) f11, getMeasuredHeight()), true);
        } else if (refreshState2 == RefreshState.Refreshing && f11 >= 0.0f) {
            int i9 = this.I4;
            if (f11 < i9) {
                this.X4.g((int) f11, true);
            } else {
                double d10 = (this.O4 - 1.0f) * i9;
                int max = Math.max((this.f29294g * 4) / 3, getHeight());
                int i10 = this.I4;
                double d11 = max - i10;
                double max2 = Math.max(0.0f, (f11 - i10) * this.f29304l);
                double d12 = -max2;
                if (d11 == 0.0d) {
                    d11 = 1.0d;
                }
                this.X4.g(((int) Math.min(d10 * (1.0d - Math.pow(100.0d, d12 / d11)), max2)) + this.I4, true);
            }
        } else if (f11 < 0.0f && (refreshState2 == RefreshState.Loading || ((this.G && this.R && D(this.B)) || (this.K && !this.R && D(this.B))))) {
            int i11 = this.K4;
            if (f11 > (-i11)) {
                this.X4.g((int) f11, true);
            } else {
                double d13 = (this.P4 - 1.0f) * i11;
                int max3 = Math.max((this.f29294g * 4) / 3, getHeight());
                int i12 = this.K4;
                double d14 = max3 - i12;
                double d15 = -Math.min(0.0f, (i12 + f11) * this.f29304l);
                double d16 = -d15;
                if (d14 == 0.0d) {
                    d14 = 1.0d;
                }
                this.X4.g(((int) (-Math.min(d13 * (1.0d - Math.pow(100.0d, d16 / d14)), d15))) - this.K4, true);
            }
        } else if (f11 >= 0.0f) {
            double d17 = this.O4 * this.I4;
            double max4 = Math.max(this.f29294g / 2, getHeight());
            double max5 = Math.max(0.0f, this.f29304l * f11);
            double d18 = -max5;
            if (max4 == 0.0d) {
                max4 = 1.0d;
            }
            this.X4.g((int) Math.min(d17 * (1.0d - Math.pow(100.0d, d18 / max4)), max5), true);
        } else {
            double d19 = this.P4 * this.K4;
            double max6 = Math.max(this.f29294g / 2, getHeight());
            double d20 = -Math.min(0.0f, this.f29304l * f11);
            double d21 = -d20;
            if (max6 == 0.0d) {
                max6 = 1.0d;
            }
            this.X4.g((int) (-Math.min(d19 * (1.0d - Math.pow(100.0d, d21 / max6)), d20)), true);
        }
        if (!this.K || this.R || !D(this.B) || f11 >= 0.0f || (refreshState = this.Z4) == RefreshState.Refreshing || refreshState == RefreshState.Loading || refreshState == RefreshState.LoadFinish) {
            return;
        }
        if (this.Q) {
            this.f29301j5 = null;
            this.X4.d(-this.K4);
        }
        setStateDirectLoading(false);
        postDelayed(new f(), this.f29292f);
    }

    protected void G(RefreshState refreshState) {
        RefreshState refreshState2 = this.Z4;
        if (refreshState2 != refreshState) {
            this.Z4 = refreshState;
            this.f29283a5 = refreshState;
            wd.h hVar = this.S4;
            wd.h hVar2 = this.T4;
            zd.c cVar = this.V3;
            if (hVar != null) {
                hVar.e(this, refreshState2, refreshState);
            }
            if (hVar2 != null) {
                hVar2.e(this, refreshState2, refreshState);
            }
            if (cVar != null) {
                cVar.e(this, refreshState2, refreshState);
            }
        } else if (this.f29283a5 != refreshState2) {
            this.f29283a5 = refreshState2;
        }
    }

    protected void H() {
        RefreshState refreshState = this.Z4;
        if (refreshState == RefreshState.TwoLevel) {
            if (this.f29314v > -1000 && this.f29284b > getMeasuredHeight() / 2) {
                ValueAnimator d10 = this.X4.d(getMeasuredHeight());
                if (d10 != null) {
                    d10.setDuration(this.f29290e);
                    return;
                }
                return;
            } else if (this.f29306n) {
                this.X4.c();
                return;
            } else {
                return;
            }
        }
        RefreshState refreshState2 = RefreshState.Loading;
        if (refreshState != refreshState2 && (!this.G || !this.R || this.f29284b >= 0 || !D(this.B))) {
            RefreshState refreshState3 = this.Z4;
            RefreshState refreshState4 = RefreshState.Refreshing;
            if (refreshState3 == refreshState4) {
                int i9 = this.f29284b;
                int i10 = this.I4;
                if (i9 > i10) {
                    this.X4.d(i10);
                    return;
                } else if (i9 < 0) {
                    this.X4.d(0);
                    return;
                } else {
                    return;
                }
            } else if (refreshState3 == RefreshState.PullDownToRefresh) {
                this.X4.b(RefreshState.PullDownCanceled);
                return;
            } else if (refreshState3 == RefreshState.PullUpToLoad) {
                this.X4.b(RefreshState.PullUpCanceled);
                return;
            } else if (refreshState3 == RefreshState.ReleaseToRefresh) {
                this.X4.b(refreshState4);
                return;
            } else if (refreshState3 == RefreshState.ReleaseToLoad) {
                this.X4.b(refreshState2);
                return;
            } else if (refreshState3 == RefreshState.ReleaseToTwoLevel) {
                this.X4.b(RefreshState.TwoLevelReleased);
                return;
            } else if (refreshState3 == RefreshState.RefreshReleased) {
                if (this.f29303k5 == null) {
                    this.X4.d(this.I4);
                    return;
                }
                return;
            } else if (refreshState3 == RefreshState.LoadReleased) {
                if (this.f29303k5 == null) {
                    this.X4.d(-this.K4);
                    return;
                }
                return;
            } else if (this.f29284b != 0) {
                this.X4.d(0);
                return;
            } else {
                return;
            }
        }
        int i11 = this.f29284b;
        int i12 = this.K4;
        if (i11 < (-i12)) {
            this.X4.d(-i12);
        } else if (i11 > 0) {
            this.X4.d(0);
        }
    }

    public wd.j I() {
        this.R = false;
        wd.h hVar = this.T4;
        if ((hVar instanceof wd.f) && !((wd.f) hVar).b(false)) {
            PrintStream printStream = System.out;
            printStream.println("Footer:" + this.T4 + " NoMoreData is not supported.(不支持NoMoreData，请使用ClassicsFooter或者自定义)");
        }
        return this;
    }

    protected void J() {
        RefreshState refreshState = this.Z4;
        RefreshState refreshState2 = RefreshState.None;
        if (refreshState != refreshState2 && this.f29284b == 0) {
            G(refreshState2);
        }
        if (this.f29284b != 0) {
            this.X4.d(0);
        }
    }

    @Override // wd.j
    /* renamed from: K */
    public SmartRefreshLayout b(boolean z10) {
        this.K = z10;
        return this;
    }

    public SmartRefreshLayout L(boolean z10) {
        this.f29281a1 = true;
        this.B = z10;
        return this;
    }

    public SmartRefreshLayout M(boolean z10) {
        this.I = z10;
        return this;
    }

    @Override // wd.j
    /* renamed from: N */
    public SmartRefreshLayout a(boolean z10) {
        this.J = z10;
        return this;
    }

    @Override // wd.j
    /* renamed from: O */
    public SmartRefreshLayout f(boolean z10) {
        this.A = z10;
        return this;
    }

    public SmartRefreshLayout P(float f10) {
        this.M4 = ae.b.b(f10);
        return this;
    }

    @Override // wd.j
    /* renamed from: Q */
    public SmartRefreshLayout e(float f10) {
        this.O4 = f10;
        wd.h hVar = this.S4;
        if (hVar != null && this.W4 != null) {
            wd.i iVar = this.X4;
            int i9 = this.I4;
            hVar.g(iVar, i9, (int) (f10 * i9));
        } else {
            this.J4 = this.J4.unNotify();
        }
        return this;
    }

    public SmartRefreshLayout R(boolean z10) {
        if (this.Z4 == RefreshState.Loading && z10) {
            v();
            return this;
        }
        this.R = z10;
        wd.h hVar = this.T4;
        if ((hVar instanceof wd.f) && !((wd.f) hVar).b(z10)) {
            PrintStream printStream = System.out;
            printStream.println("Footer:" + this.T4 + " NoMoreData is not supported.(不支持NoMoreData，请使用ClassicsFooter或者自定义)");
        }
        return this;
    }

    public SmartRefreshLayout S(zd.b bVar) {
        this.B3 = bVar;
        this.B = this.B || !(this.f29281a1 || bVar == null);
        return this;
    }

    public SmartRefreshLayout T(zd.d dVar) {
        this.V2 = dVar;
        return this;
    }

    public SmartRefreshLayout U(zd.e eVar) {
        this.V2 = eVar;
        this.B3 = eVar;
        this.B = this.B || !(this.f29281a1 || eVar == null);
        return this;
    }

    public SmartRefreshLayout V(@NonNull wd.f fVar) {
        return W(fVar, -1, -2);
    }

    public SmartRefreshLayout W(@NonNull wd.f fVar, int i9, int i10) {
        wd.h hVar = this.T4;
        if (hVar != null) {
            super.removeView(hVar.getView());
        }
        this.T4 = fVar;
        this.f29289d5 = 0;
        this.f29293f5 = false;
        this.L4 = this.L4.unNotify();
        this.B = !this.f29281a1 || this.B;
        if (this.T4.getSpinnerStyle() == SpinnerStyle.FixedBehind) {
            super.addView(this.T4.getView(), 0, new l(i9, i10));
        } else {
            super.addView(this.T4.getView(), i9, i10);
        }
        return this;
    }

    public SmartRefreshLayout X(@NonNull wd.g gVar) {
        return Y(gVar, -1, -2);
    }

    public SmartRefreshLayout Y(@NonNull wd.g gVar, int i9, int i10) {
        wd.h hVar = this.S4;
        if (hVar != null) {
            super.removeView(hVar.getView());
        }
        this.S4 = gVar;
        this.f29287c5 = 0;
        this.f29291e5 = false;
        this.J4 = this.J4.unNotify();
        if (this.S4.getSpinnerStyle() == SpinnerStyle.FixedBehind) {
            super.addView(this.S4.getView(), 0, new l(i9, i10));
        } else {
            super.addView(this.S4.getView(), i9, i10);
        }
        return this;
    }

    protected boolean Z(Float f10) {
        float floatValue = f10 == null ? this.f29314v : f10.floatValue();
        if (Math.abs(floatValue) > this.f29312t) {
            int i9 = this.f29284b;
            if (i9 * floatValue < 0.0f) {
                RefreshState refreshState = this.Z4;
                if (refreshState != RefreshState.Refreshing && refreshState != RefreshState.Loading && (i9 >= 0 || !this.R)) {
                    if (refreshState.isReleaseToOpening) {
                        return true;
                    }
                } else {
                    this.f29301j5 = new k(floatValue).b();
                    return true;
                }
            }
            if ((floatValue < 0.0f && ((this.I && (this.B || this.J)) || ((this.Z4 == RefreshState.Loading && i9 >= 0) || (this.K && D(this.B))))) || (floatValue > 0.0f && ((this.I && this.A) || this.J || (this.Z4 == RefreshState.Refreshing && this.f29284b <= 0)))) {
                this.f29297h5 = false;
                this.f29315w.fling(0, 0, 0, (int) (-floatValue), 0, 0, -2147483647, Integer.MAX_VALUE);
                this.f29315w.computeScrollOffset();
                invalidate();
            }
        }
        return false;
    }

    @Override // wd.j
    public wd.j c(boolean z10) {
        setNestedScrollingEnabled(z10);
        return this;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof l;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f29315w.getCurrY();
        if (this.f29315w.computeScrollOffset()) {
            int finalY = this.f29315w.getFinalY();
            if ((finalY < 0 && ((this.A || this.J) && this.U4.canRefresh())) || (finalY > 0 && ((this.B || this.J) && this.U4.canLoadMore()))) {
                if (this.f29297h5) {
                    n(finalY > 0 ? -this.f29315w.getCurrVelocity() : this.f29315w.getCurrVelocity());
                }
                this.f29315w.forceFinished(true);
                return;
            }
            this.f29297h5 = true;
            invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c2, code lost:
        if (r4.isFinishing == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c6, code lost:
        if (r4.isHeader == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d4, code lost:
        if (r4.isFinishing == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d8, code lost:
        if (r4.isFooter == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0104, code lost:
        if (r6 != 3) goto L96;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        Paint paint;
        Paint paint2;
        wd.e eVar = this.U4;
        View view2 = eVar != null ? eVar.getView() : null;
        wd.h hVar = this.S4;
        if (hVar != null && hVar.getView() == view) {
            if (!D(this.A) || (!this.H && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int max = Math.max(view2.getTop() + view2.getPaddingTop() + this.f29284b, view.getTop());
                int i9 = this.f29287c5;
                if (i9 != 0 && (paint2 = this.V4) != null) {
                    paint2.setColor(i9);
                    if (this.S4.getSpinnerStyle() == SpinnerStyle.Scale) {
                        max = view.getBottom();
                    } else if (this.S4.getSpinnerStyle() == SpinnerStyle.Translate) {
                        max = view.getBottom() + this.f29284b;
                    }
                    canvas.drawRect(view.getLeft(), view.getTop(), view.getRight(), max, this.V4);
                }
                if (this.C && this.S4.getSpinnerStyle() == SpinnerStyle.FixedBehind) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), max);
                    boolean drawChild = super.drawChild(canvas, view, j10);
                    canvas.restore();
                    return drawChild;
                }
            }
        }
        wd.h hVar2 = this.T4;
        if (hVar2 != null && hVar2.getView() == view) {
            if (!D(this.B) || (!this.H && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int min = Math.min((view2.getBottom() - view2.getPaddingBottom()) + this.f29284b, view.getBottom());
                int i10 = this.f29289d5;
                if (i10 != 0 && (paint = this.V4) != null) {
                    paint.setColor(i10);
                    if (this.T4.getSpinnerStyle() == SpinnerStyle.Scale) {
                        min = view.getTop();
                    } else if (this.T4.getSpinnerStyle() == SpinnerStyle.Translate) {
                        min = view.getTop() + this.f29284b;
                    }
                    canvas.drawRect(view.getLeft(), min, view.getRight(), view.getBottom(), this.V4);
                }
                if (this.D && this.T4.getSpinnerStyle() == SpinnerStyle.FixedBehind) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), min, view.getRight(), view.getBottom());
                    boolean drawChild2 = super.drawChild(canvas, view, j10);
                    canvas.restore();
                    return drawChild2;
                }
            }
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // wd.j
    @NonNull
    public SmartRefreshLayout getLayout() {
        return this;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.H4.getNestedScrollAxes();
    }

    @Nullable
    public wd.f getRefreshFooter() {
        wd.h hVar = this.T4;
        if (hVar instanceof wd.f) {
            return (wd.f) hVar;
        }
        return null;
    }

    @Nullable
    public wd.g getRefreshHeader() {
        wd.h hVar = this.S4;
        if (hVar instanceof wd.g) {
            return (wd.g) hVar;
        }
        return null;
    }

    @NonNull
    public RefreshState getState() {
        return this.Z4;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.G4.isNestedScrollingEnabled();
    }

    protected ValueAnimator m(int i9, int i10, Interpolator interpolator, int i11) {
        if (this.f29284b != i9) {
            ValueAnimator valueAnimator = this.f29303k5;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.f29301j5 = null;
            ValueAnimator ofInt = ValueAnimator.ofInt(this.f29284b, i9);
            this.f29303k5 = ofInt;
            ofInt.setDuration(i11);
            this.f29303k5.setInterpolator(interpolator);
            this.f29303k5.addListener(new d());
            this.f29303k5.addUpdateListener(new e());
            this.f29303k5.setStartDelay(i10);
            this.f29303k5.start();
            return this.f29303k5;
        }
        return null;
    }

    protected void n(float f10) {
        RefreshState refreshState;
        if (this.f29303k5 == null) {
            if (f10 > 0.0f && ((refreshState = this.Z4) == RefreshState.Refreshing || refreshState == RefreshState.TwoLevel)) {
                this.f29301j5 = new j(f10, this.I4);
            } else if (f10 < 0.0f && (this.Z4 == RefreshState.Loading || ((this.G && this.R && D(this.B)) || (this.K && !this.R && D(this.B) && this.Z4 != RefreshState.Refreshing)))) {
                this.f29301j5 = new j(f10, -this.K4);
            } else if (this.f29284b == 0 && this.I) {
                this.f29301j5 = new j(f10, 0);
            }
        }
    }

    public boolean o() {
        int i9 = this.W4 == null ? 400 : 0;
        int i10 = this.f29292f;
        int i11 = this.I4;
        float f10 = ((this.O4 / 2.0f) + 0.5f) * i11 * 1.0f;
        if (i11 == 0) {
            i11 = 1;
        }
        return p(i9, i10, f10 / i11, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        wd.h hVar;
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            if (this.W4 == null) {
                this.W4 = new Handler();
            }
            List<ae.a> list = this.Y4;
            if (list != null) {
                for (ae.a aVar : list) {
                    this.W4.postDelayed(aVar, aVar.f741a);
                }
                this.Y4.clear();
                this.Y4 = null;
            }
            if (this.S4 == null) {
                wd.b bVar = f29278m5;
                if (bVar != null) {
                    X(bVar.a(getContext(), this));
                } else {
                    X(new BezierRadarHeader(getContext()));
                }
            }
            if (this.T4 == null) {
                wd.a aVar2 = f29277l5;
                if (aVar2 != null) {
                    V(aVar2.a(getContext(), this));
                } else {
                    boolean z10 = this.B;
                    V(new BallPulseFooter(getContext()));
                    this.B = z10;
                }
            } else {
                this.B = this.B || !this.f29281a1;
            }
            if (this.U4 == null) {
                int childCount = getChildCount();
                for (int i9 = 0; i9 < childCount; i9++) {
                    View childAt = getChildAt(i9);
                    wd.h hVar2 = this.S4;
                    if ((hVar2 == null || childAt != hVar2.getView()) && ((hVar = this.T4) == null || childAt != hVar.getView())) {
                        this.U4 = new xd.a(childAt);
                    }
                }
            }
            if (this.U4 == null) {
                int b10 = ae.b.b(20.0f);
                TextView textView = new TextView(getContext());
                textView.setTextColor(-39424);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setText(R$string.srl_content_empty);
                super.addView(textView, -1, -1);
                xd.a aVar3 = new xd.a(textView);
                this.U4 = aVar3;
                aVar3.getView().setPadding(b10, b10, b10, b10);
            }
            int i10 = this.f29308p;
            View findViewById = i10 > 0 ? findViewById(i10) : null;
            int i11 = this.f29309q;
            View findViewById2 = i11 > 0 ? findViewById(i11) : null;
            this.U4.e(this.C4);
            this.U4.b(this.O);
            this.U4.h(this.X4, findViewById, findViewById2);
            if (this.f29284b != 0) {
                G(RefreshState.None);
                wd.e eVar = this.U4;
                this.f29284b = 0;
                eVar.f(0, this.f29310r, this.f29311s);
            }
        }
        int[] iArr = this.f29318z;
        if (iArr != null) {
            wd.h hVar3 = this.S4;
            if (hVar3 != null) {
                hVar3.setPrimaryColors(iArr);
            }
            wd.h hVar4 = this.T4;
            if (hVar4 != null) {
                hVar4.setPrimaryColors(this.f29318z);
            }
        }
        wd.e eVar2 = this.U4;
        if (eVar2 != null) {
            super.bringChildToFront(eVar2.getView());
        }
        wd.h hVar5 = this.S4;
        if (hVar5 != null && hVar5.getSpinnerStyle() != SpinnerStyle.FixedBehind) {
            super.bringChildToFront(this.S4.getView());
        }
        wd.h hVar6 = this.T4;
        if (hVar6 == null || hVar6.getSpinnerStyle() == SpinnerStyle.FixedBehind) {
            return;
        }
        super.bringChildToFront(this.T4.getView());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.X4.g(0, true);
        G(RefreshState.None);
        Handler handler = this.W4;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.W4 = null;
        }
        List<ae.a> list = this.Y4;
        if (list != null) {
            list.clear();
            this.Y4 = null;
        }
        this.f29281a1 = true;
        this.f29301j5 = null;
        ValueAnimator valueAnimator = this.f29303k5;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f29303k5.removeAllUpdateListeners();
            this.f29303k5.cancel();
            this.f29303k5 = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onFinishInflate() {
        /*
            r11 = this;
            super.onFinishInflate()
            int r0 = super.getChildCount()
            r1 = 3
            if (r0 > r1) goto L9e
            r2 = -1
            r3 = 0
            r4 = 0
            r5 = -1
            r6 = 0
        Lf:
            r7 = 2
            r8 = 1
            if (r4 >= r0) goto L33
            android.view.View r9 = super.getChildAt(r4)
            boolean r10 = ae.e.b(r9)
            if (r10 == 0) goto L24
            if (r6 < r7) goto L21
            if (r4 != r8) goto L24
        L21:
            r5 = r4
            r6 = 2
            goto L30
        L24:
            boolean r7 = r9 instanceof wd.h
            if (r7 != 0) goto L30
            if (r6 >= r8) goto L30
            if (r4 <= 0) goto L2e
            r6 = 1
            goto L2f
        L2e:
            r6 = 0
        L2f:
            r5 = r4
        L30:
            int r4 = r4 + 1
            goto Lf
        L33:
            if (r5 < 0) goto L4d
            xd.a r4 = new xd.a
            android.view.View r6 = super.getChildAt(r5)
            r4.<init>(r6)
            r11.U4 = r4
            if (r5 != r8) goto L48
            if (r0 != r1) goto L46
            r1 = 0
            goto L4f
        L46:
            r1 = 0
            goto L4e
        L48:
            if (r0 != r7) goto L4d
            r1 = -1
            r7 = 1
            goto L4f
        L4d:
            r1 = -1
        L4e:
            r7 = -1
        L4f:
            r4 = 0
        L50:
            if (r4 >= r0) goto L9d
            android.view.View r5 = super.getChildAt(r4)
            if (r4 == r1) goto L8b
            if (r4 == r7) goto L65
            if (r1 != r2) goto L65
            wd.h r6 = r11.S4
            if (r6 != 0) goto L65
            boolean r6 = r5 instanceof wd.g
            if (r6 == 0) goto L65
            goto L8b
        L65:
            if (r4 == r7) goto L6d
            if (r7 != r2) goto L9a
            boolean r6 = r5 instanceof wd.f
            if (r6 == 0) goto L9a
        L6d:
            boolean r6 = r11.B
            if (r6 != 0) goto L78
            boolean r6 = r11.f29281a1
            if (r6 != 0) goto L76
            goto L78
        L76:
            r6 = 0
            goto L79
        L78:
            r6 = 1
        L79:
            r11.B = r6
            boolean r6 = r5 instanceof wd.f
            if (r6 == 0) goto L82
            wd.f r5 = (wd.f) r5
            goto L88
        L82:
            com.scwang.smartrefresh.layout.impl.RefreshFooterWrapper r6 = new com.scwang.smartrefresh.layout.impl.RefreshFooterWrapper
            r6.<init>(r5)
            r5 = r6
        L88:
            r11.T4 = r5
            goto L9a
        L8b:
            boolean r6 = r5 instanceof wd.g
            if (r6 == 0) goto L92
            wd.g r5 = (wd.g) r5
            goto L98
        L92:
            com.scwang.smartrefresh.layout.impl.RefreshHeaderWrapper r6 = new com.scwang.smartrefresh.layout.impl.RefreshHeaderWrapper
            r6.<init>(r5)
            r5 = r6
        L98:
            r11.S4 = r5
        L9a:
            int r4 = r4 + 1
            goto L50
        L9d:
            return
        L9e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "最多只支持3个子View，Most only support three sub view"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.onFinishInflate():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = super.getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = super.getChildAt(i14);
            if (childAt.getVisibility() != 8 && childAt.getTag(R$string.srl_component_falsify) != childAt) {
                wd.e eVar = this.U4;
                boolean z11 = true;
                if (eVar != null && eVar.getView() == childAt) {
                    boolean z12 = isInEditMode() && this.H && D(this.A) && this.S4 != null;
                    View view = this.U4.getView();
                    l lVar = (l) view.getLayoutParams();
                    int i15 = ((ViewGroup.MarginLayoutParams) lVar).leftMargin + paddingLeft;
                    int i16 = ((ViewGroup.MarginLayoutParams) lVar).topMargin + paddingTop;
                    int measuredWidth = view.getMeasuredWidth() + i15;
                    int measuredHeight = view.getMeasuredHeight() + i16;
                    if (z12 && E(this.E, this.S4)) {
                        int i17 = this.I4;
                        i16 += i17;
                        measuredHeight += i17;
                    }
                    view.layout(i15, i16, measuredWidth, measuredHeight);
                }
                wd.h hVar = this.S4;
                if (hVar != null && hVar.getView() == childAt) {
                    boolean z13 = isInEditMode() && this.H && D(this.A);
                    View view2 = this.S4.getView();
                    l lVar2 = (l) view2.getLayoutParams();
                    int i18 = ((ViewGroup.MarginLayoutParams) lVar2).leftMargin;
                    int i19 = ((ViewGroup.MarginLayoutParams) lVar2).topMargin + this.M4;
                    int measuredWidth2 = view2.getMeasuredWidth() + i18;
                    int measuredHeight2 = view2.getMeasuredHeight() + i19;
                    if (!z13 && this.S4.getSpinnerStyle() == SpinnerStyle.Translate) {
                        int i20 = this.I4;
                        i19 -= i20;
                        measuredHeight2 -= i20;
                    }
                    view2.layout(i18, i19, measuredWidth2, measuredHeight2);
                }
                wd.h hVar2 = this.T4;
                if (hVar2 != null && hVar2.getView() == childAt) {
                    z11 = (isInEditMode() && this.H && D(this.B)) ? false : false;
                    View view3 = this.T4.getView();
                    l lVar3 = (l) view3.getLayoutParams();
                    SpinnerStyle spinnerStyle = this.T4.getSpinnerStyle();
                    int i21 = ((ViewGroup.MarginLayoutParams) lVar3).leftMargin;
                    int measuredHeight3 = ((ViewGroup.MarginLayoutParams) lVar3).topMargin + getMeasuredHeight();
                    int i22 = this.N4;
                    int i23 = measuredHeight3 - i22;
                    if (spinnerStyle == SpinnerStyle.MatchLayout) {
                        i23 = ((ViewGroup.MarginLayoutParams) lVar3).topMargin - i22;
                    } else {
                        if (!z11 && spinnerStyle != SpinnerStyle.FixedFront && spinnerStyle != SpinnerStyle.FixedBehind) {
                            if (spinnerStyle == SpinnerStyle.Scale && this.f29284b < 0) {
                                i13 = Math.max(D(this.B) ? -this.f29284b : 0, 0);
                            }
                        } else {
                            i13 = this.K4;
                        }
                        i23 -= i13;
                    }
                    view3.layout(i21, i23, view3.getMeasuredWidth() + i21, view3.getMeasuredHeight() + i23);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0205  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f10, float f11, boolean z10) {
        return this.G4.dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f10, float f11) {
        return (this.f29295g5 && f11 > 0.0f) || Z(Float.valueOf(-f11)) || this.G4.dispatchNestedPreFling(f10, f11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i9, int i10, @NonNull int[] iArr) {
        int i11 = this.D4;
        int i12 = 0;
        if (i10 * i11 > 0) {
            if (Math.abs(i10) > Math.abs(this.D4)) {
                int i13 = this.D4;
                this.D4 = 0;
                i12 = i13;
            } else {
                this.D4 -= i10;
                i12 = i10;
            }
            F(this.D4);
        } else if (i10 > 0 && this.f29295g5) {
            int i14 = i11 - i10;
            this.D4 = i14;
            F(i14);
            i12 = i10;
        }
        this.G4.dispatchNestedPreScroll(i9, i10 - i12, iArr, null);
        iArr[1] = iArr[1] + i12;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12) {
        this.G4.dispatchNestedScroll(i9, i10, i11, i12, this.F4);
        int i13 = i12 + this.F4[1];
        if (i13 != 0 && ((i13 < 0 && (this.A || this.J)) || (i13 > 0 && (this.B || this.J)))) {
            RefreshState refreshState = this.f29283a5;
            if (refreshState == RefreshState.None || refreshState.isOpening) {
                this.X4.b(i13 > 0 ? RefreshState.PullUpToLoad : RefreshState.PullDownToRefresh);
            }
            int i14 = this.D4 - i13;
            this.D4 = i14;
            F(i14);
        }
        if (!this.f29295g5 || i10 >= 0) {
            return;
        }
        this.f29295g5 = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i9) {
        this.H4.onNestedScrollAccepted(view, view2, i9);
        this.G4.startNestedScroll(i9 & 2);
        this.D4 = this.f29284b;
        this.E4 = true;
        C(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i9) {
        return (isEnabled() && isNestedScrollingEnabled() && (i9 & 2) != 0) && (this.J || this.A || this.B);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        this.H4.onStopNestedScroll(view);
        this.E4 = false;
        this.D4 = 0;
        H();
        this.G4.stopNestedScroll();
    }

    public boolean p(int i9, int i10, float f10, boolean z10) {
        if (this.Z4 == RefreshState.None && D(this.A)) {
            i iVar = new i(f10, i10, z10);
            if (i9 > 0) {
                postDelayed(iVar, i9);
                return true;
            }
            iVar.run();
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean post(@NonNull Runnable runnable) {
        Handler handler = this.W4;
        if (handler == null) {
            List<ae.a> list = this.Y4;
            if (list == null) {
                list = new ArrayList<>();
            }
            this.Y4 = list;
            list.add(new ae.a(runnable, 0L));
            return false;
        }
        return handler.post(new ae.a(runnable, 0L));
    }

    @Override // android.view.View
    public boolean postDelayed(@NonNull Runnable runnable, long j10) {
        if (j10 == 0) {
            new ae.a(runnable, 0L).run();
            return true;
        }
        Handler handler = this.W4;
        if (handler == null) {
            List<ae.a> list = this.Y4;
            if (list == null) {
                list = new ArrayList<>();
            }
            this.Y4 = list;
            list.add(new ae.a(runnable, j10));
            return false;
        }
        return handler.postDelayed(new ae.a(runnable, 0L), j10);
    }

    public boolean q() {
        int i9 = this.W4 == null ? 400 : 0;
        int i10 = this.f29292f;
        int i11 = this.I4;
        float f10 = ((this.O4 / 2.0f) + 0.5f) * i11 * 1.0f;
        if (i11 == 0) {
            i11 = 1;
        }
        return p(i9, i10, f10 / i11, true);
    }

    public SmartRefreshLayout r() {
        return s(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.f29285b5))), 300));
    }

    public SmartRefreshLayout s(int i9) {
        return t(i9, true, false);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.G4.setNestedScrollingEnabled(z10);
    }

    protected void setStateDirectLoading(boolean z10) {
        RefreshState refreshState = this.Z4;
        RefreshState refreshState2 = RefreshState.Loading;
        if (refreshState != refreshState2) {
            this.f29285b5 = System.currentTimeMillis();
            this.f29295g5 = true;
            G(refreshState2);
            zd.b bVar = this.B3;
            if (bVar != null) {
                if (z10) {
                    bVar.b(this);
                }
            } else if (this.V3 == null) {
                s(2000);
            }
            wd.h hVar = this.T4;
            if (hVar != null) {
                int i9 = this.K4;
                hVar.k(this, i9, (int) (this.P4 * i9));
            }
            zd.c cVar = this.V3;
            if (cVar == null || !(this.T4 instanceof wd.f)) {
                return;
            }
            if (cVar != null && z10) {
                cVar.b(this);
            }
            int i10 = this.K4;
            this.V3.f((wd.f) this.T4, i10, (int) (this.P4 * i10));
        }
    }

    protected void setStateLoading(boolean z10) {
        b bVar = new b(z10);
        G(RefreshState.LoadReleased);
        ValueAnimator d10 = this.X4.d(-this.K4);
        if (d10 != null) {
            d10.addListener(bVar);
        }
        wd.h hVar = this.T4;
        if (hVar != null) {
            int i9 = this.K4;
            hVar.a(this, i9, (int) (this.P4 * i9));
        }
        zd.c cVar = this.V3;
        if (cVar != null) {
            wd.h hVar2 = this.T4;
            if (hVar2 instanceof wd.f) {
                int i10 = this.K4;
                cVar.i((wd.f) hVar2, i10, (int) (this.P4 * i10));
            }
        }
        if (d10 == null) {
            bVar.onAnimationEnd(null);
        }
    }

    protected void setStateRefreshing(boolean z10) {
        c cVar = new c(z10);
        G(RefreshState.RefreshReleased);
        ValueAnimator d10 = this.X4.d(this.I4);
        if (d10 != null) {
            d10.addListener(cVar);
        }
        wd.h hVar = this.S4;
        if (hVar != null) {
            int i9 = this.I4;
            hVar.a(this, i9, (int) (this.O4 * i9));
        }
        zd.c cVar2 = this.V3;
        if (cVar2 != null) {
            wd.h hVar2 = this.S4;
            if (hVar2 instanceof wd.g) {
                int i10 = this.I4;
                cVar2.q((wd.g) hVar2, i10, (int) (this.O4 * i10));
            }
        }
        if (d10 == null) {
            cVar.onAnimationEnd(null);
        }
    }

    protected void setViceState(RefreshState refreshState) {
        RefreshState refreshState2 = this.Z4;
        if (refreshState2.isDragging && refreshState2.isHeader != refreshState.isHeader) {
            G(RefreshState.None);
        }
        if (this.f29283a5 != refreshState) {
            this.f29283a5 = refreshState;
        }
    }

    public SmartRefreshLayout t(int i9, boolean z10, boolean z11) {
        postDelayed(new h(z10, z11), i9 <= 0 ? 1L : i9);
        return this;
    }

    public SmartRefreshLayout u(boolean z10) {
        return t(z10 ? Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.f29285b5))), 300) : 0, z10, false);
    }

    public SmartRefreshLayout v() {
        return t(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.f29285b5))), 300), true, true);
    }

    public SmartRefreshLayout w() {
        return d(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.f29285b5))), 300));
    }

    @Override // wd.j
    /* renamed from: x */
    public SmartRefreshLayout d(int i9) {
        return y(i9, true);
    }

    public SmartRefreshLayout y(int i9, boolean z10) {
        postDelayed(new g(z10), i9 <= 0 ? 1L : i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: z */
    public l generateDefaultLayoutParams() {
        return new l(-1, -1);
    }

    public SmartRefreshLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmartRefreshLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29290e = 250;
        this.f29292f = 250;
        this.f29304l = 0.5f;
        this.f29305m = 'n';
        this.f29308p = -1;
        this.f29309q = -1;
        this.f29310r = -1;
        this.f29311s = -1;
        this.A = true;
        this.B = false;
        this.C = true;
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = false;
        this.H = true;
        this.I = true;
        this.J = false;
        this.K = true;
        this.L = false;
        this.M = true;
        this.N = true;
        this.O = true;
        this.P = false;
        this.Q = false;
        this.R = false;
        this.f29281a1 = false;
        this.V1 = false;
        this.f29282a2 = false;
        this.F4 = new int[2];
        this.G4 = new NestedScrollingChildHelper(this);
        this.H4 = new NestedScrollingParentHelper(this);
        DimensionStatus dimensionStatus = DimensionStatus.DefaultUnNotify;
        this.J4 = dimensionStatus;
        this.L4 = dimensionStatus;
        this.O4 = 2.5f;
        this.P4 = 2.5f;
        this.Q4 = 1.0f;
        this.R4 = 1.0f;
        this.X4 = new m();
        RefreshState refreshState = RefreshState.None;
        this.Z4 = refreshState;
        this.f29283a5 = refreshState;
        this.f29285b5 = 0L;
        this.f29287c5 = 0;
        this.f29289d5 = 0;
        this.f29295g5 = false;
        this.f29297h5 = false;
        this.f29299i5 = null;
        super.setClipToPadding(false);
        ae.b bVar = new ae.b();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f29315w = new Scroller(context);
        this.f29316x = VelocityTracker.obtain();
        this.f29294g = context.getResources().getDisplayMetrics().heightPixels;
        this.f29317y = new ae.f();
        this.f29280a = viewConfiguration.getScaledTouchSlop();
        this.f29312t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f29313u = viewConfiguration.getScaledMaximumFlingVelocity();
        this.K4 = bVar.a(60.0f);
        this.I4 = bVar.a(100.0f);
        this.G4.setNestedScrollingEnabled(true);
        wd.c cVar = f29279n5;
        if (cVar != null) {
            cVar.a(context, this);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SmartRefreshLayout);
        NestedScrollingChildHelper nestedScrollingChildHelper = this.G4;
        nestedScrollingChildHelper.setNestedScrollingEnabled(obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableNestedScrolling, nestedScrollingChildHelper.isNestedScrollingEnabled()));
        this.f29304l = obtainStyledAttributes.getFloat(R$styleable.SmartRefreshLayout_srlDragRate, this.f29304l);
        this.O4 = obtainStyledAttributes.getFloat(R$styleable.SmartRefreshLayout_srlHeaderMaxDragRate, this.O4);
        this.P4 = obtainStyledAttributes.getFloat(R$styleable.SmartRefreshLayout_srlFooterMaxDragRate, this.P4);
        this.Q4 = obtainStyledAttributes.getFloat(R$styleable.SmartRefreshLayout_srlHeaderTriggerRate, this.Q4);
        this.R4 = obtainStyledAttributes.getFloat(R$styleable.SmartRefreshLayout_srlFooterTriggerRate, this.R4);
        this.A = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableRefresh, this.A);
        this.f29292f = obtainStyledAttributes.getInt(R$styleable.SmartRefreshLayout_srlReboundDuration, this.f29292f);
        int i10 = R$styleable.SmartRefreshLayout_srlEnableLoadMore;
        this.B = obtainStyledAttributes.getBoolean(i10, this.B);
        int i11 = R$styleable.SmartRefreshLayout_srlHeaderHeight;
        this.I4 = obtainStyledAttributes.getDimensionPixelOffset(i11, this.I4);
        int i12 = R$styleable.SmartRefreshLayout_srlFooterHeight;
        this.K4 = obtainStyledAttributes.getDimensionPixelOffset(i12, this.K4);
        this.M4 = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.SmartRefreshLayout_srlHeaderInsetStart, this.M4);
        this.N4 = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.SmartRefreshLayout_srlFooterInsetStart, this.N4);
        this.P = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlDisableContentWhenRefresh, this.P);
        this.Q = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlDisableContentWhenLoading, this.Q);
        int i13 = R$styleable.SmartRefreshLayout_srlEnableHeaderTranslationContent;
        this.E = obtainStyledAttributes.getBoolean(i13, this.E);
        int i14 = R$styleable.SmartRefreshLayout_srlEnableFooterTranslationContent;
        this.F = obtainStyledAttributes.getBoolean(i14, this.F);
        this.H = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnablePreviewInEditMode, this.H);
        this.K = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableAutoLoadMore, this.K);
        this.I = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableOverScrollBounce, this.I);
        this.L = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnablePureScrollMode, this.L);
        this.M = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableScrollContentWhenLoaded, this.M);
        this.N = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableScrollContentWhenRefreshed, this.N);
        this.O = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull, this.O);
        boolean z10 = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished, this.G);
        this.G = z10;
        this.G = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData, z10);
        this.C = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind, this.C);
        this.D = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind, this.D);
        this.J = obtainStyledAttributes.getBoolean(R$styleable.SmartRefreshLayout_srlEnableOverScrollDrag, this.J);
        this.f29308p = obtainStyledAttributes.getResourceId(R$styleable.SmartRefreshLayout_srlFixedHeaderViewId, this.f29308p);
        this.f29309q = obtainStyledAttributes.getResourceId(R$styleable.SmartRefreshLayout_srlFixedFooterViewId, this.f29309q);
        this.f29310r = obtainStyledAttributes.getResourceId(R$styleable.SmartRefreshLayout_srlHeaderTranslationViewId, this.f29310r);
        this.f29311s = obtainStyledAttributes.getResourceId(R$styleable.SmartRefreshLayout_srlFooterTranslationViewId, this.f29311s);
        this.f29281a1 = this.f29281a1 || obtainStyledAttributes.hasValue(i10);
        this.V1 = this.V1 || obtainStyledAttributes.hasValue(i13);
        this.f29282a2 = this.f29282a2 || obtainStyledAttributes.hasValue(i14);
        this.J4 = obtainStyledAttributes.hasValue(i11) ? DimensionStatus.XmlLayoutUnNotify : this.J4;
        this.L4 = obtainStyledAttributes.hasValue(i12) ? DimensionStatus.XmlLayoutUnNotify : this.L4;
        int color = obtainStyledAttributes.getColor(R$styleable.SmartRefreshLayout_srlAccentColor, 0);
        int color2 = obtainStyledAttributes.getColor(R$styleable.SmartRefreshLayout_srlPrimaryColor, 0);
        if (color2 != 0) {
            if (color != 0) {
                this.f29318z = new int[]{color2, color};
            } else {
                this.f29318z = new int[]{color2};
            }
        } else if (color != 0) {
            this.f29318z = new int[]{0, color};
        }
        if (this.L && !this.f29281a1 && !this.B) {
            this.B = true;
        }
        obtainStyledAttributes.recycle();
    }

    /* loaded from: classes4.dex */
    public static class l extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f29356a;

        /* renamed from: b  reason: collision with root package name */
        public SpinnerStyle f29357b;

        public l(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f29356a = 0;
            this.f29357b = null;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SmartRefreshLayout_Layout);
            this.f29356a = obtainStyledAttributes.getColor(R$styleable.SmartRefreshLayout_Layout_layout_srlBackgroundColor, this.f29356a);
            int i9 = R$styleable.SmartRefreshLayout_Layout_layout_srlSpinnerStyle;
            if (obtainStyledAttributes.hasValue(i9)) {
                this.f29357b = SpinnerStyle.values()[obtainStyledAttributes.getInt(i9, SpinnerStyle.Translate.ordinal())];
            }
            obtainStyledAttributes.recycle();
        }

        public l(int i9, int i10) {
            super(i9, i10);
            this.f29356a = 0;
            this.f29357b = null;
        }

        public l(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f29356a = 0;
            this.f29357b = null;
        }
    }
}
