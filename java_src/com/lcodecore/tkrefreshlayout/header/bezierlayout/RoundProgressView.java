package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
/* loaded from: classes4.dex */
public class RoundProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f28002a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f28003b;

    /* renamed from: c  reason: collision with root package name */
    private float f28004c;

    /* renamed from: d  reason: collision with root package name */
    private int f28005d;

    /* renamed from: e  reason: collision with root package name */
    private int f28006e;

    /* renamed from: f  reason: collision with root package name */
    private int f28007f;

    /* renamed from: g  reason: collision with root package name */
    private int f28008g;

    /* renamed from: h  reason: collision with root package name */
    private int f28009h;

    /* renamed from: i  reason: collision with root package name */
    ValueAnimator f28010i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f28011j;

    /* renamed from: k  reason: collision with root package name */
    private RectF f28012k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            RoundProgressView.this.f28007f = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            RoundProgressView.this.postInvalidate();
        }
    }

    public RoundProgressView(Context context) {
        this(context, null, 0);
    }

    private void b() {
        this.f28002a = new Paint();
        Paint paint = new Paint();
        this.f28003b = paint;
        paint.setColor(-1);
        this.f28003b.setAntiAlias(true);
        this.f28002a.setAntiAlias(true);
        this.f28002a.setColor(Color.rgb(114, 114, 114));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 360);
        this.f28010i = ofInt;
        ofInt.setDuration(720L);
        this.f28010i.addUpdateListener(new a());
        this.f28010i.setRepeatCount(-1);
        this.f28010i.setInterpolator(new AccelerateDecelerateInterpolator());
    }

    public void c() {
        ValueAnimator valueAnimator = this.f28010i;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void d() {
        ValueAnimator valueAnimator = this.f28010i;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f28010i.cancel();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f28010i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth() / this.f28005d;
        this.f28002a.setStyle(Paint.Style.FILL);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f28004c, this.f28002a);
        canvas.save();
        this.f28002a.setStyle(Paint.Style.STROKE);
        this.f28002a.setStrokeWidth(6.0f);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f28004c + 15.0f, this.f28002a);
        canvas.restore();
        this.f28003b.setStyle(Paint.Style.FILL);
        if (this.f28011j == null) {
            this.f28011j = new RectF();
        }
        this.f28011j.set((getMeasuredWidth() / 2) - this.f28004c, (getMeasuredHeight() / 2) - this.f28004c, (getMeasuredWidth() / 2) + this.f28004c, (getMeasuredHeight() / 2) + this.f28004c);
        canvas.drawArc(this.f28011j, this.f28006e, this.f28007f, true, this.f28003b);
        canvas.save();
        this.f28003b.setStrokeWidth(6.0f);
        this.f28003b.setStyle(Paint.Style.STROKE);
        if (this.f28012k == null) {
            this.f28012k = new RectF();
        }
        this.f28012k.set(((getMeasuredWidth() / 2) - this.f28004c) - this.f28008g, ((getMeasuredHeight() / 2) - this.f28004c) - this.f28008g, (getMeasuredWidth() / 2) + this.f28004c + this.f28008g, (getMeasuredHeight() / 2) + this.f28004c + this.f28008g);
        canvas.drawArc(this.f28012k, this.f28006e, this.f28007f, false, this.f28003b);
        canvas.restore();
    }

    public void setCir_x(int i9) {
        this.f28009h = i9;
    }

    public RoundProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f28004c = 40.0f;
        this.f28005d = 7;
        this.f28006e = 270;
        this.f28007f = 0;
        this.f28008g = 15;
        b();
    }
}
