package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import com.guochao.twink.R$id;
import com.guochao.twink.R$layout;
import com.lcodecore.tkrefreshlayout.header.bezierlayout.RippleView;
/* loaded from: classes4.dex */
public class BezierLayout extends FrameLayout implements kc.b {

    /* renamed from: a  reason: collision with root package name */
    View f27979a;

    /* renamed from: b  reason: collision with root package name */
    WaveView f27980b;

    /* renamed from: c  reason: collision with root package name */
    RippleView f27981c;

    /* renamed from: d  reason: collision with root package name */
    RoundDotView f27982d;

    /* renamed from: e  reason: collision with root package name */
    RoundProgressView f27983e;

    /* renamed from: f  reason: collision with root package name */
    private ValueAnimator f27984f;

    /* renamed from: g  reason: collision with root package name */
    private ValueAnimator f27985g;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BezierLayout.this.f27980b.setWaveHeight(((Integer) valueAnimator.getAnimatedValue()).intValue() / 2);
            BezierLayout.this.f27980b.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class b extends AnimatorListenerAdapter {

        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BezierLayout.this.f27983e.c();
            }
        }

        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            BezierLayout.this.f27982d.setVisibility(8);
            BezierLayout.this.f27983e.setVisibility(0);
            BezierLayout.this.f27983e.animate().scaleX(1.0f);
            BezierLayout.this.f27983e.animate().scaleY(1.0f);
            BezierLayout.this.f27983e.postDelayed(new a(), 200L);
        }
    }

    /* loaded from: classes4.dex */
    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BezierLayout.this.f27982d.setCir_x((int) ((-((Float) valueAnimator.getAnimatedValue()).floatValue()) * 40.0f));
            BezierLayout.this.f27982d.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class d implements RippleView.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kc.c f27990a;

        d(kc.c cVar) {
            this.f27990a = cVar;
        }

        @Override // com.lcodecore.tkrefreshlayout.header.bezierlayout.RippleView.c
        public void a() {
            this.f27990a.a();
        }
    }

    public BezierLayout(Context context) {
        this(context, null);
    }

    private void d(AttributeSet attributeSet) {
        View inflate = LayoutInflater.from(getContext()).inflate(R$layout.view_bezier, (ViewGroup) null);
        this.f27979a = inflate;
        this.f27980b = (WaveView) inflate.findViewById(R$id.draweeView);
        this.f27981c = (RippleView) this.f27979a.findViewById(R$id.ripple);
        this.f27982d = (RoundDotView) this.f27979a.findViewById(R$id.round1);
        RoundProgressView roundProgressView = (RoundProgressView) this.f27979a.findViewById(R$id.round2);
        this.f27983e = roundProgressView;
        roundProgressView.setVisibility(8);
        addView(this.f27979a);
    }

    @Override // kc.b
    public void a(float f10, float f11) {
        this.f27980b.setHeadHeight((int) f11);
        ValueAnimator ofInt = ValueAnimator.ofInt(this.f27980b.getWaveHeight(), 0, -300, 0, -100, 0);
        this.f27984f = ofInt;
        ofInt.addUpdateListener(new a());
        this.f27984f.setInterpolator(new DecelerateInterpolator());
        this.f27984f.setDuration(800L);
        this.f27984f.start();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f27985g = ofFloat;
        ofFloat.addListener(new b());
        this.f27985g.addUpdateListener(new c());
        this.f27985g.setInterpolator(new DecelerateInterpolator());
        this.f27985g.setDuration(300L);
        this.f27985g.start();
    }

    @Override // kc.b
    public void b(float f10, float f11, float f12) {
        this.f27980b.setHeadHeight((int) (f12 * e(1.0f, f10)));
        this.f27980b.setWaveHeight((int) (f11 * Math.max(0.0f, f10 - 1.0f)));
        this.f27980b.invalidate();
        this.f27982d.setCir_x((int) (e(1.0f, f10) * 30.0f));
        this.f27982d.invalidate();
    }

    @Override // kc.b
    public void c(float f10, float f11, float f12) {
        if (this.f27981c.getVisibility() == 0) {
            this.f27981c.setVisibility(8);
        }
        this.f27980b.setHeadHeight((int) (f12 * e(1.0f, f10)));
        this.f27980b.setWaveHeight((int) (f11 * Math.max(0.0f, f10 - 1.0f)));
        this.f27980b.invalidate();
        this.f27982d.setCir_x((int) (e(1.0f, f10) * 30.0f));
        this.f27982d.setVisibility(0);
        this.f27982d.invalidate();
        this.f27983e.setVisibility(8);
        this.f27983e.animate().scaleX(0.1f);
        this.f27983e.animate().scaleY(0.1f);
    }

    public float e(float f10, float f11) {
        float min = Math.min(f10, f11);
        float max = Math.max(f10, f11);
        if (0.0f > min) {
            min = 0.0f;
        }
        return min < max ? min : max;
    }

    @Override // kc.b
    public View getView() {
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f27984f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f27985g;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    @Override // kc.b
    public void onFinish(kc.c cVar) {
        this.f27983e.d();
        this.f27983e.animate().scaleX(0.0f);
        this.f27983e.animate().scaleY(0.0f);
        this.f27981c.setRippleEndListener(new d(cVar));
        this.f27981c.d();
    }

    @Override // kc.b
    public void reset() {
        ValueAnimator valueAnimator = this.f27984f;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f27984f.cancel();
        }
        this.f27980b.setWaveHeight(0);
        ValueAnimator valueAnimator2 = this.f27985g;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.f27985g.cancel();
        }
        this.f27982d.setVisibility(0);
        this.f27983e.d();
        this.f27983e.setScaleX(0.0f);
        this.f27983e.setScaleY(0.0f);
        this.f27983e.setVisibility(8);
        this.f27981c.e();
        this.f27981c.setVisibility(8);
    }

    public void setRippleColor(@ColorInt int i9) {
        this.f27981c.setRippleColor(i9);
    }

    public void setWaveColor(@ColorInt int i9) {
        this.f27980b.setWaveColor(i9);
    }

    public BezierLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezierLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        d(attributeSet);
    }
}
