package com.guochao.faceshow.aaspring.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class LuckyNumberItemProgressView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23858a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f23859b;

    /* renamed from: c  reason: collision with root package name */
    Path f23860c;

    /* renamed from: d  reason: collision with root package name */
    PathMeasure f23861d;

    /* renamed from: e  reason: collision with root package name */
    int f23862e;

    /* renamed from: f  reason: collision with root package name */
    Path f23863f;

    /* renamed from: g  reason: collision with root package name */
    ValueAnimator f23864g;

    /* renamed from: h  reason: collision with root package name */
    float f23865h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            LuckyNumberItemProgressView.this.f23865h = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            LuckyNumberItemProgressView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            LuckyNumberItemProgressView.this.f23858a = false;
            LuckyNumberItemProgressView.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            LuckyNumberItemProgressView.this.f23858a = true;
        }
    }

    public LuckyNumberItemProgressView(@NonNull Context context) {
        this(context, null);
    }

    private void e(int i9) {
        f();
        this.f23858a = true;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f - ((i9 * 1.0f) / 15.0f), 1.0f);
        this.f23864g = ofFloat;
        ofFloat.addUpdateListener(new a());
        this.f23864g.addListener(new b());
        this.f23864g.setDuration(15000L);
        this.f23864g.setInterpolator(new LinearInterpolator());
        this.f23864g.start();
    }

    private void f() {
        ValueAnimator valueAnimator = this.f23864g;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.f23864g.removeAllListeners();
            this.f23864g.cancel();
            this.f23864g = null;
        }
        if (this.f23858a) {
            this.f23858a = false;
            invalidate();
        }
    }

    public void b() {
        f();
    }

    void c() {
        this.f23862e = DensityUtil.dp2px(2.0f);
        Paint paint = new Paint();
        this.f23859b = paint;
        paint.setStrokeWidth(this.f23862e);
        this.f23859b.setDither(true);
        this.f23859b.setAntiAlias(true);
        this.f23859b.setStyle(Paint.Style.STROKE);
        this.f23859b.setStrokeCap(Paint.Cap.ROUND);
        this.f23863f = new Path();
    }

    public void d(int i9) {
        e(i9);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f23858a && this.f23860c != null) {
            this.f23863f.reset();
            this.f23861d.getSegment(0.0f, this.f23861d.getLength() * (1.0f - this.f23865h), this.f23863f, true);
            canvas.drawPath(this.f23863f, this.f23859b);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.f23860c = new Path();
        float dp2px = DensityUtil.dp2px(4.0f);
        float f10 = this.f23862e / 2.0f;
        float f11 = i9;
        float f12 = f11 / 2.0f;
        float f13 = i10;
        float f14 = f13 - f10;
        this.f23860c.moveTo(f12, f14);
        float f15 = f11 - dp2px;
        this.f23860c.lineTo(f15, f14);
        float f16 = f11 - f10;
        float f17 = f13 - dp2px;
        this.f23860c.quadTo(f11, f13, f16, f17);
        this.f23860c.lineTo(f16, dp2px);
        this.f23860c.quadTo(f11, 0.0f, f15, f10);
        this.f23860c.lineTo(dp2px, f10);
        this.f23860c.quadTo(0.0f, 0.0f, f10, dp2px);
        this.f23860c.lineTo(f10, f17);
        this.f23860c.quadTo(0.0f, f13, dp2px, f14);
        this.f23860c.lineTo(f12, f14);
        this.f23859b.setShader(new LinearGradient(f12, f13, f11, 0.0f, new int[]{Color.parseColor("#FFF693"), Color.parseColor("#F04E86"), Color.parseColor("#FF680A")}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        PathMeasure pathMeasure = new PathMeasure();
        this.f23861d = pathMeasure;
        pathMeasure.setPath(this.f23860c, false);
    }

    public LuckyNumberItemProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LuckyNumberItemProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, 0);
    }

    public LuckyNumberItemProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.f23858a = false;
        this.f23862e = 10;
        c();
    }
}
