package com.lcodecore.tkrefreshlayout.header.progresslayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
@Deprecated
/* loaded from: classes4.dex */
public class CircleImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Animation.AnimationListener f28018a;

    /* renamed from: b  reason: collision with root package name */
    private int f28019b;

    /* loaded from: classes4.dex */
    private class a extends OvalShape {

        /* renamed from: a  reason: collision with root package name */
        private RadialGradient f28020a;

        /* renamed from: b  reason: collision with root package name */
        private Paint f28021b = new Paint();

        /* renamed from: c  reason: collision with root package name */
        private int f28022c;

        public a(int i9, int i10) {
            CircleImageView.this.f28019b = i9;
            this.f28022c = i10;
            int i11 = this.f28022c;
            RadialGradient radialGradient = new RadialGradient(i11 / 2, i11 / 2, CircleImageView.this.f28019b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f28020a = radialGradient;
            this.f28021b.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = CircleImageView.this.getWidth() / 2;
            float height = CircleImageView.this.getHeight() / 2;
            canvas.drawCircle(width, height, (this.f28022c / 2) + CircleImageView.this.f28019b, this.f28021b);
            canvas.drawCircle(width, height, this.f28022c / 2, paint);
        }
    }

    public CircleImageView(Context context, int i9, float f10) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f11 = getContext().getResources().getDisplayMetrics().density;
        int i10 = (int) (f10 * f11 * 2.0f);
        int i11 = (int) (1.75f * f11);
        int i12 = (int) (0.0f * f11);
        this.f28019b = (int) (3.5f * f11);
        if (c()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f11 * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new a(this.f28019b, i10));
            ViewCompat.setLayerType(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f28019b, i12, i11, 503316480);
            int i13 = this.f28019b;
            setPadding(i13, i13, i13, i13);
        }
        shapeDrawable.getPaint().setColor(i9);
        setBackgroundDrawable(shapeDrawable);
    }

    private boolean c() {
        return true;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f28018a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f28018a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        if (c()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f28019b * 2), getMeasuredHeight() + (this.f28019b * 2));
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.f28018a = animationListener;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i9) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i9);
        }
    }

    public void setBackgroundColorRes(int i9) {
        setBackgroundColor(getContext().getResources().getColor(i9));
    }
}
