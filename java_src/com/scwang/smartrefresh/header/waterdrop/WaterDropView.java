package com.scwang.smartrefresh.header.waterdrop;

import ae.b;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
/* loaded from: classes4.dex */
public class WaterDropView extends View {

    /* renamed from: g  reason: collision with root package name */
    protected static int f29242g = 2;

    /* renamed from: a  reason: collision with root package name */
    protected ud.a f29243a;

    /* renamed from: b  reason: collision with root package name */
    protected ud.a f29244b;

    /* renamed from: c  reason: collision with root package name */
    protected Path f29245c;

    /* renamed from: d  reason: collision with root package name */
    protected Paint f29246d;

    /* renamed from: e  reason: collision with root package name */
    protected int f29247e;

    /* renamed from: f  reason: collision with root package name */
    protected int f29248f;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaterDropView.this.c(((Float) valueAnimator.getAnimatedValue()).floatValue());
            WaterDropView.this.postInvalidate();
        }
    }

    public WaterDropView(Context context) {
        super(context);
        this.f29243a = new ud.a();
        this.f29244b = new ud.a();
        this.f29245c = new Path();
        Paint paint = new Paint();
        this.f29246d = paint;
        paint.setColor(-7829368);
        this.f29246d.setAntiAlias(true);
        this.f29246d.setStyle(Paint.Style.FILL_AND_STROKE);
        Paint paint2 = this.f29246d;
        int b10 = b.b(1.0f);
        f29242g = b10;
        paint2.setStrokeWidth(b10);
        Paint paint3 = this.f29246d;
        int i9 = f29242g;
        paint3.setShadowLayer(i9, i9 / 2, i9, -1728053248);
        setLayerType(1, null);
        int i10 = f29242g * 4;
        setPadding(i10, i10, i10, i10);
        this.f29246d.setColor(-7829368);
        int b11 = b.b(20.0f);
        this.f29247e = b11;
        this.f29248f = b11 / 5;
        ud.a aVar = this.f29243a;
        aVar.f58395c = b11;
        ud.a aVar2 = this.f29244b;
        aVar2.f58395c = b11;
        int i11 = f29242g;
        aVar.f58393a = i11 + b11;
        aVar.f58394b = i11 + b11;
        aVar2.f58393a = i11 + b11;
        aVar2.f58394b = i11 + b11;
    }

    private void b() {
        this.f29245c.reset();
        Path path = this.f29245c;
        ud.a aVar = this.f29243a;
        path.addCircle(aVar.f58393a, aVar.f58394b, aVar.f58395c, Path.Direction.CCW);
        if (this.f29244b.f58394b > this.f29243a.f58394b + b.b(1.0f)) {
            Path path2 = this.f29245c;
            ud.a aVar2 = this.f29244b;
            path2.addCircle(aVar2.f58393a, aVar2.f58394b, aVar2.f58395c, Path.Direction.CCW);
            double angle = getAngle();
            ud.a aVar3 = this.f29243a;
            float cos = (float) (aVar3.f58393a - (aVar3.f58395c * Math.cos(angle)));
            ud.a aVar4 = this.f29243a;
            float sin = (float) (aVar4.f58394b + (aVar4.f58395c * Math.sin(angle)));
            ud.a aVar5 = this.f29243a;
            float cos2 = (float) (aVar5.f58393a + (aVar5.f58395c * Math.cos(angle)));
            ud.a aVar6 = this.f29244b;
            float cos3 = (float) (aVar6.f58393a - (aVar6.f58395c * Math.cos(angle)));
            ud.a aVar7 = this.f29244b;
            float sin2 = (float) (aVar7.f58394b + (aVar7.f58395c * Math.sin(angle)));
            ud.a aVar8 = this.f29244b;
            float cos4 = (float) (aVar8.f58393a + (aVar8.f58395c * Math.cos(angle)));
            Path path3 = this.f29245c;
            ud.a aVar9 = this.f29243a;
            path3.moveTo(aVar9.f58393a, aVar9.f58394b);
            this.f29245c.lineTo(cos, sin);
            Path path4 = this.f29245c;
            ud.a aVar10 = this.f29244b;
            path4.quadTo(aVar10.f58393a - aVar10.f58395c, (aVar10.f58394b + this.f29243a.f58394b) / 2.0f, cos3, sin2);
            this.f29245c.lineTo(cos4, sin2);
            Path path5 = this.f29245c;
            ud.a aVar11 = this.f29244b;
            path5.quadTo(aVar11.f58393a + aVar11.f58395c, (aVar11.f58394b + sin) / 2.0f, cos2, sin);
        }
        this.f29245c.close();
    }

    private double getAngle() {
        ud.a aVar = this.f29244b;
        float f10 = aVar.f58395c;
        ud.a aVar2 = this.f29243a;
        float f11 = aVar2.f58395c;
        if (f10 > f11) {
            return 0.0d;
        }
        return Math.asin((f11 - f10) / (aVar.f58394b - aVar2.f58394b));
    }

    public ValueAnimator a() {
        ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.001f).setDuration(180L);
        duration.setInterpolator(new DecelerateInterpolator());
        duration.addUpdateListener(new a());
        return duration;
    }

    public void c(float f10) {
        int i9 = this.f29247e;
        float f11 = f10 * 4.0f * i9;
        ud.a aVar = this.f29243a;
        aVar.f58395c = (float) (i9 - ((f10 * 0.25d) * i9));
        ud.a aVar2 = this.f29244b;
        aVar2.f58395c = ((this.f29248f - i9) * f10) + i9;
        aVar2.f58394b = aVar.f58394b + f11;
    }

    public void d(int i9) {
        float f10;
        float f11;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i10 = this.f29247e;
        if (i9 < (i10 * 2) + paddingTop + paddingBottom) {
            ud.a aVar = this.f29243a;
            aVar.f58395c = i10;
            ud.a aVar2 = this.f29244b;
            aVar2.f58395c = i10;
            aVar2.f58394b = aVar.f58394b;
            return;
        }
        float pow = (float) ((i10 - this.f29248f) * (1.0d - Math.pow(100.0d, (-Math.max(0.0f, f11 - f10)) / b.b(200.0f))));
        ud.a aVar3 = this.f29243a;
        int i11 = this.f29247e;
        aVar3.f58395c = i11 - (pow / 4.0f);
        ud.a aVar4 = this.f29244b;
        float f12 = i11 - pow;
        aVar4.f58395c = f12;
        aVar4.f58394b = ((i9 - paddingTop) - paddingBottom) - f12;
    }

    public void e(int i9, int i10) {
    }

    public ud.a getBottomCircle() {
        return this.f29244b;
    }

    public int getIndicatorColor() {
        return this.f29246d.getColor();
    }

    public int getMaxCircleRadius() {
        return this.f29247e;
    }

    public ud.a getTopCircle() {
        return this.f29243a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        canvas.save();
        float f10 = height;
        float f11 = this.f29243a.f58395c;
        float f12 = paddingTop;
        float f13 = paddingBottom;
        if (f10 <= (f11 * 2.0f) + f12 + f13) {
            canvas.translate(paddingLeft, (f10 - (f11 * 2.0f)) - f13);
            ud.a aVar = this.f29243a;
            canvas.drawCircle(aVar.f58393a, aVar.f58394b, aVar.f58395c, this.f29246d);
        } else {
            canvas.translate(paddingLeft, f12);
            b();
            canvas.drawPath(this.f29245c, this.f29246d);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        d(getHeight());
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int i11 = this.f29247e;
        int i12 = f29242g;
        ud.a aVar = this.f29244b;
        super.setMeasuredDimension(((i11 + i12) * 2) + getPaddingLeft() + getPaddingRight(), View.resolveSize(((int) Math.ceil(aVar.f58394b + aVar.f58395c + (i12 * 2))) + getPaddingTop() + getPaddingBottom(), i10));
    }

    public void setIndicatorColor(@ColorInt int i9) {
        this.f29246d.setColor(i9);
    }
}
