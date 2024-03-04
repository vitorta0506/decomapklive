package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x {
    private boolean A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final StyledPlayerControlView f6802a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final View f6803b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ViewGroup f6804c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final ViewGroup f6805d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final ViewGroup f6806e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ViewGroup f6807f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ViewGroup f6808g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final ViewGroup f6809h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ViewGroup f6810i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final View f6811j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f6812k;

    /* renamed from: l  reason: collision with root package name */
    private final AnimatorSet f6813l;

    /* renamed from: m  reason: collision with root package name */
    private final AnimatorSet f6814m;

    /* renamed from: n  reason: collision with root package name */
    private final AnimatorSet f6815n;

    /* renamed from: o  reason: collision with root package name */
    private final AnimatorSet f6816o;

    /* renamed from: p  reason: collision with root package name */
    private final AnimatorSet f6817p;

    /* renamed from: q  reason: collision with root package name */
    private final ValueAnimator f6818q;

    /* renamed from: r  reason: collision with root package name */
    private final ValueAnimator f6819r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f6820s = new Runnable() { // from class: com.google.android.exoplayer2.ui.n
        @Override // java.lang.Runnable
        public final void run() {
            x.this.c0();
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f6821t = new Runnable() { // from class: com.google.android.exoplayer2.ui.v
        @Override // java.lang.Runnable
        public final void run() {
            x.this.D();
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private final Runnable f6822u = new Runnable() { // from class: com.google.android.exoplayer2.ui.l
        @Override // java.lang.Runnable
        public final void run() {
            x.this.H();
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f6823v = new Runnable() { // from class: com.google.android.exoplayer2.ui.m
        @Override // java.lang.Runnable
        public final void run() {
            x.this.G();
        }
    };

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f6824w = new Runnable() { // from class: com.google.android.exoplayer2.ui.w
        @Override // java.lang.Runnable
        public final void run() {
            x.this.E();
        }
    };

    /* renamed from: x  reason: collision with root package name */
    private final View.OnLayoutChangeListener f6825x = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.s
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            x.this.R(view, i9, i10, i11, i12, i13, i14, i15, i16);
        }
    };
    private boolean C = true;

    /* renamed from: z  reason: collision with root package name */
    private int f6827z = 0;

    /* renamed from: y  reason: collision with root package name */
    private final List<View> f6826y = new ArrayList();

    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (x.this.f6803b != null) {
                x.this.f6803b.setVisibility(4);
            }
            if (x.this.f6804c != null) {
                x.this.f6804c.setVisibility(4);
            }
            if (x.this.f6806e != null) {
                x.this.f6806e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!(x.this.f6811j instanceof DefaultTimeBar) || x.this.A) {
                return;
            }
            ((DefaultTimeBar) x.this.f6811j).g(250L);
        }
    }

    /* loaded from: classes2.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (x.this.f6803b != null) {
                x.this.f6803b.setVisibility(0);
            }
            if (x.this.f6804c != null) {
                x.this.f6804c.setVisibility(0);
            }
            if (x.this.f6806e != null) {
                x.this.f6806e.setVisibility(x.this.A ? 0 : 4);
            }
            if (!(x.this.f6811j instanceof DefaultTimeBar) || x.this.A) {
                return;
            }
            ((DefaultTimeBar) x.this.f6811j).t(250L);
        }
    }

    /* loaded from: classes2.dex */
    class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f6830a;

        c(StyledPlayerControlView styledPlayerControlView) {
            this.f6830a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.this.Z(1);
            if (x.this.B) {
                this.f6830a.post(x.this.f6820s);
                x.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            x.this.Z(3);
        }
    }

    /* loaded from: classes2.dex */
    class d extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f6832a;

        d(StyledPlayerControlView styledPlayerControlView) {
            this.f6832a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.this.Z(2);
            if (x.this.B) {
                this.f6832a.post(x.this.f6820s);
                x.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            x.this.Z(3);
        }
    }

    /* loaded from: classes2.dex */
    class e extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f6834a;

        e(StyledPlayerControlView styledPlayerControlView) {
            this.f6834a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.this.Z(2);
            if (x.this.B) {
                this.f6834a.post(x.this.f6820s);
                x.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            x.this.Z(3);
        }
    }

    /* loaded from: classes2.dex */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            x.this.Z(4);
        }
    }

    /* loaded from: classes2.dex */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            x.this.Z(4);
        }
    }

    /* loaded from: classes2.dex */
    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (x.this.f6807f != null) {
                x.this.f6807f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (x.this.f6809h != null) {
                x.this.f6809h.setVisibility(0);
                x.this.f6809h.setTranslationX(x.this.f6809h.getWidth());
                x.this.f6809h.scrollTo(x.this.f6809h.getWidth(), 0);
            }
        }
    }

    /* loaded from: classes2.dex */
    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (x.this.f6809h != null) {
                x.this.f6809h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (x.this.f6807f != null) {
                x.this.f6807f.setVisibility(0);
            }
        }
    }

    public x(StyledPlayerControlView styledPlayerControlView) {
        this.f6802a = styledPlayerControlView;
        this.f6803b = styledPlayerControlView.findViewById(R$id.exo_controls_background);
        this.f6804c = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_center_controls);
        this.f6806e = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_bottom_bar);
        this.f6805d = viewGroup;
        this.f6810i = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_time);
        View findViewById = styledPlayerControlView.findViewById(R$id.exo_progress);
        this.f6811j = findViewById;
        this.f6807f = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_basic_controls);
        this.f6808g = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls);
        this.f6809h = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls_scroll_view);
        View findViewById2 = styledPlayerControlView.findViewById(R$id.exo_overflow_show);
        this.f6812k = findViewById2;
        View findViewById3 = styledPlayerControlView.findViewById(R$id.exo_overflow_hide);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    x.this.T(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    x.this.T(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                x.this.J(valueAnimator);
            }
        });
        ofFloat.addListener(new a());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.k
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                x.this.K(valueAnimator);
            }
        });
        ofFloat2.addListener(new b());
        Resources resources = styledPlayerControlView.getResources();
        int i9 = R$dimen.exo_styled_bottom_bar_height;
        float dimension = resources.getDimension(i9) - resources.getDimension(R$dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(i9);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f6813l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(ofFloat).with(N(0.0f, dimension, findViewById)).with(N(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f6814m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        animatorSet2.play(N(dimension, dimension2, findViewById)).with(N(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f6815n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(ofFloat).with(N(0.0f, dimension2, findViewById)).with(N(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f6816o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(ofFloat2).with(N(dimension, 0.0f, findViewById)).with(N(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f6817p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(ofFloat2).with(N(dimension2, 0.0f, findViewById)).with(N(dimension2, 0.0f, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f6818q = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.p
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                x.this.L(valueAnimator);
            }
        });
        ofFloat3.addListener(new h());
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f6819r = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.q
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                x.this.M(valueAnimator);
            }
        });
        ofFloat4.addListener(new i());
    }

    private static int B(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        }
        return width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        this.f6815n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        Z(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.f6813l.start();
        U(this.f6822u, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.f6814m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f6803b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f6804c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f6806e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f6803b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f6804c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f6806e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private static ObjectAnimator N(float f10, float f11, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        boolean e02 = e0();
        if (this.A != e02) {
            this.A = e02;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.t
                @Override // java.lang.Runnable
                public final void run() {
                    x.this.d0();
                }
            });
        }
        boolean z10 = i11 - i9 != i15 - i13;
        if (this.A || !z10) {
            return;
        }
        view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.u
            @Override // java.lang.Runnable
            public final void run() {
                x.this.S();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int i9;
        if (this.f6807f == null || this.f6808g == null) {
            return;
        }
        int width = (this.f6802a.getWidth() - this.f6802a.getPaddingLeft()) - this.f6802a.getPaddingRight();
        while (true) {
            if (this.f6808g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f6808g.getChildCount() - 2;
            View childAt = this.f6808g.getChildAt(childCount);
            this.f6808g.removeViewAt(childCount);
            this.f6807f.addView(childAt, 0);
        }
        View view = this.f6812k;
        if (view != null) {
            view.setVisibility(8);
        }
        int B = B(this.f6810i);
        int childCount2 = this.f6807f.getChildCount() - 1;
        for (int i10 = 0; i10 < childCount2; i10++) {
            B += B(this.f6807f.getChildAt(i10));
        }
        if (B > width) {
            View view2 = this.f6812k;
            if (view2 != null) {
                view2.setVisibility(0);
                B += B(this.f6812k);
            }
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < childCount2; i11++) {
                View childAt2 = this.f6807f.getChildAt(i11);
                B -= B(childAt2);
                arrayList.add(childAt2);
                if (B <= width) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.f6807f.removeViews(0, arrayList.size());
            for (i9 = 0; i9 < arrayList.size(); i9++) {
                this.f6808g.addView((View) arrayList.get(i9), this.f6808g.getChildCount() - 1);
            }
            return;
        }
        ViewGroup viewGroup = this.f6809h;
        if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f6819r.isStarted()) {
            return;
        }
        this.f6818q.cancel();
        this.f6819r.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(View view) {
        W();
        if (view.getId() == R$id.exo_overflow_show) {
            this.f6818q.start();
        } else if (view.getId() == R$id.exo_overflow_hide) {
            this.f6819r.start();
        }
    }

    private void U(Runnable runnable, long j10) {
        if (j10 >= 0) {
            this.f6802a.postDelayed(runnable, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i9) {
        int i10 = this.f6827z;
        this.f6827z = i9;
        if (i9 == 2) {
            this.f6802a.setVisibility(8);
        } else if (i10 == 2) {
            this.f6802a.setVisibility(0);
        }
        if (i10 != i9) {
            this.f6802a.i0();
        }
    }

    private boolean a0(View view) {
        int id2 = view.getId();
        return id2 == R$id.exo_bottom_bar || id2 == R$id.exo_prev || id2 == R$id.exo_next || id2 == R$id.exo_rew || id2 == R$id.exo_rew_with_amount || id2 == R$id.exo_ffwd || id2 == R$id.exo_ffwd_with_amount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        if (!this.C) {
            Z(0);
            W();
            return;
        }
        int i9 = this.f6827z;
        if (i9 == 1) {
            this.f6816o.start();
        } else if (i9 == 2) {
            this.f6817p.start();
        } else if (i9 == 3) {
            this.B = true;
        } else if (i9 == 4) {
            return;
        }
        W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        ViewGroup viewGroup = this.f6806e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.A ? 0 : 4);
        }
        if (this.f6811j != null) {
            int dimensionPixelSize = this.f6802a.getResources().getDimensionPixelSize(R$dimen.exo_styled_progress_margin_bottom);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f6811j.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.A) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.f6811j.setLayoutParams(marginLayoutParams);
            }
            View view = this.f6811j;
            if (view instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                if (this.A) {
                    defaultTimeBar.h(true);
                } else {
                    int i9 = this.f6827z;
                    if (i9 == 1) {
                        defaultTimeBar.h(false);
                    } else if (i9 != 3) {
                        defaultTimeBar.s();
                    }
                }
            }
        }
        for (View view2 : this.f6826y) {
            view2.setVisibility((this.A && a0(view2)) ? 4 : 0);
        }
    }

    private boolean e0() {
        int width = (this.f6802a.getWidth() - this.f6802a.getPaddingLeft()) - this.f6802a.getPaddingRight();
        int height = (this.f6802a.getHeight() - this.f6802a.getPaddingBottom()) - this.f6802a.getPaddingTop();
        int B = B(this.f6804c);
        ViewGroup viewGroup = this.f6804c;
        int paddingLeft = B - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f6804c.getPaddingRight() : 0);
        int z10 = z(this.f6804c);
        ViewGroup viewGroup2 = this.f6804c;
        return width <= Math.max(paddingLeft, B(this.f6810i) + B(this.f6812k)) || height <= (z10 - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f6804c.getPaddingBottom() : 0)) + (z(this.f6805d) * 2);
    }

    private void y(float f10) {
        ViewGroup viewGroup = this.f6809h;
        if (viewGroup != null) {
            this.f6809h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f10)));
        }
        ViewGroup viewGroup2 = this.f6810i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f6807f;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f10);
        }
    }

    private static int z(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return height;
    }

    public boolean A(@Nullable View view) {
        return view != null && this.f6826y.contains(view);
    }

    public void C() {
        int i9 = this.f6827z;
        if (i9 == 3 || i9 == 2) {
            return;
        }
        V();
        if (!this.C) {
            E();
        } else if (this.f6827z == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i9 = this.f6827z;
        if (i9 == 3 || i9 == 2) {
            return;
        }
        V();
        E();
    }

    public boolean I() {
        return this.f6827z == 0 && this.f6802a.h0();
    }

    public void O() {
        this.f6802a.addOnLayoutChangeListener(this.f6825x);
    }

    public void P() {
        this.f6802a.removeOnLayoutChangeListener(this.f6825x);
    }

    public void Q(boolean z10, int i9, int i10, int i11, int i12) {
        View view = this.f6803b;
        if (view != null) {
            view.layout(0, 0, i11 - i9, i12 - i10);
        }
    }

    public void V() {
        this.f6802a.removeCallbacks(this.f6824w);
        this.f6802a.removeCallbacks(this.f6821t);
        this.f6802a.removeCallbacks(this.f6823v);
        this.f6802a.removeCallbacks(this.f6822u);
    }

    public void W() {
        if (this.f6827z == 3) {
            return;
        }
        V();
        int showTimeoutMs = this.f6802a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                U(this.f6824w, showTimeoutMs);
            } else if (this.f6827z == 1) {
                U(this.f6822u, 2000L);
            } else {
                U(this.f6823v, showTimeoutMs);
            }
        }
    }

    public void X(boolean z10) {
        this.C = z10;
    }

    public void Y(@Nullable View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (!z10) {
            view.setVisibility(8);
            this.f6826y.remove(view);
            return;
        }
        if (this.A && a0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f6826y.add(view);
    }

    public void b0() {
        if (!this.f6802a.h0()) {
            this.f6802a.setVisibility(0);
            this.f6802a.s0();
            this.f6802a.n0();
        }
        c0();
    }
}
