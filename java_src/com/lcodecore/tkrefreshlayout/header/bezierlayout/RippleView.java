package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
/* loaded from: classes4.dex */
public class RippleView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f27992a;

    /* renamed from: b  reason: collision with root package name */
    private int f27993b;

    /* renamed from: c  reason: collision with root package name */
    private c f27994c;

    /* renamed from: d  reason: collision with root package name */
    ValueAnimator f27995d;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            RippleView.this.f27993b = ((Integer) valueAnimator.getAnimatedValue()).intValue() * 2;
            RippleView.this.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (RippleView.this.f27994c != null) {
                RippleView.this.f27994c.a();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a();
    }

    public RippleView(Context context) {
        this(context, null, 0);
    }

    private void c() {
        Paint paint = new Paint();
        this.f27992a = paint;
        paint.setAntiAlias(true);
        this.f27992a.setColor(-1);
        this.f27992a.setStyle(Paint.Style.FILL);
    }

    public void d() {
        setVisibility(0);
        if (this.f27995d == null) {
            int sqrt = (int) Math.sqrt(Math.pow(getHeight(), 2.0d) + Math.pow(getWidth(), 2.0d));
            ValueAnimator ofInt = ValueAnimator.ofInt(0, sqrt / 2);
            this.f27995d = ofInt;
            ofInt.setDuration(sqrt);
            this.f27995d.addUpdateListener(new a());
            this.f27995d.addListener(new b());
        }
        this.f27995d.start();
    }

    public void e() {
        ValueAnimator valueAnimator = this.f27995d;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f27995d.cancel();
    }

    public int getR() {
        return this.f27993b;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f27995d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f27993b, this.f27992a);
    }

    public void setR(int i9) {
        this.f27993b = i9;
    }

    public void setRippleColor(@ColorInt int i9) {
        Paint paint = this.f27992a;
        if (paint != null) {
            paint.setColor(i9);
        }
    }

    public void setRippleEndListener(c cVar) {
        this.f27994c = cVar;
    }

    public RippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RippleView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        c();
    }
}
