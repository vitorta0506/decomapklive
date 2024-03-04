package com.scwang.smartrefresh.header;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.j;
/* loaded from: classes4.dex */
public class BezierCircleHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected Path f28996d;

    /* renamed from: e  reason: collision with root package name */
    protected Paint f28997e;

    /* renamed from: f  reason: collision with root package name */
    protected Paint f28998f;

    /* renamed from: g  reason: collision with root package name */
    protected Paint f28999g;

    /* renamed from: h  reason: collision with root package name */
    protected float f29000h;

    /* renamed from: i  reason: collision with root package name */
    protected float f29001i;

    /* renamed from: j  reason: collision with root package name */
    protected float f29002j;

    /* renamed from: k  reason: collision with root package name */
    protected float f29003k;

    /* renamed from: l  reason: collision with root package name */
    protected float f29004l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f29005m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f29006n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f29007o;

    /* renamed from: p  reason: collision with root package name */
    protected float f29008p;

    /* renamed from: q  reason: collision with root package name */
    protected int f29009q;

    /* renamed from: r  reason: collision with root package name */
    protected int f29010r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f29011s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f29012t;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b  reason: collision with root package name */
        float f29014b;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f29017e;

        /* renamed from: a  reason: collision with root package name */
        float f29013a = 0.0f;

        /* renamed from: c  reason: collision with root package name */
        float f29015c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        int f29016d = 0;

        a(float f10) {
            this.f29017e = f10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (this.f29016d == 0 && floatValue <= 0.0f) {
                this.f29016d = 1;
                this.f29013a = Math.abs(floatValue - BezierCircleHeader.this.f29000h);
            }
            if (this.f29016d == 1) {
                float f10 = (-floatValue) / this.f29017e;
                this.f29015c = f10;
                BezierCircleHeader bezierCircleHeader = BezierCircleHeader.this;
                if (f10 >= bezierCircleHeader.f29002j) {
                    bezierCircleHeader.f29002j = f10;
                    bezierCircleHeader.f29004l = bezierCircleHeader.f29001i + floatValue;
                    this.f29013a = Math.abs(floatValue - bezierCircleHeader.f29000h);
                } else {
                    this.f29016d = 2;
                    bezierCircleHeader.f29002j = 0.0f;
                    bezierCircleHeader.f29005m = true;
                    bezierCircleHeader.f29006n = true;
                    this.f29014b = bezierCircleHeader.f29004l;
                }
            }
            if (this.f29016d == 2) {
                BezierCircleHeader bezierCircleHeader2 = BezierCircleHeader.this;
                float f11 = bezierCircleHeader2.f29004l;
                float f12 = bezierCircleHeader2.f29001i;
                if (f11 > f12 / 2.0f) {
                    bezierCircleHeader2.f29004l = Math.max(f12 / 2.0f, f11 - this.f29013a);
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    BezierCircleHeader bezierCircleHeader3 = BezierCircleHeader.this;
                    float f13 = this.f29014b;
                    float f14 = (animatedFraction * ((bezierCircleHeader3.f29001i / 2.0f) - f13)) + f13;
                    if (bezierCircleHeader3.f29004l > f14) {
                        bezierCircleHeader3.f29004l = f14;
                    }
                }
            }
            BezierCircleHeader bezierCircleHeader4 = BezierCircleHeader.this;
            if (bezierCircleHeader4.f29006n && floatValue < bezierCircleHeader4.f29000h) {
                bezierCircleHeader4.f29007o = true;
                bezierCircleHeader4.f29006n = false;
                bezierCircleHeader4.f29011s = true;
                bezierCircleHeader4.f29010r = 90;
                bezierCircleHeader4.f29009q = 90;
            }
            if (bezierCircleHeader4.f29012t) {
                return;
            }
            bezierCircleHeader4.f29000h = floatValue;
            bezierCircleHeader4.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BezierCircleHeader bezierCircleHeader = BezierCircleHeader.this;
            bezierCircleHeader.f29003k = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            bezierCircleHeader.invalidate();
        }
    }

    public BezierCircleHeader(Context context) {
        this(context, null);
    }

    private void r(Canvas canvas, int i9) {
        if (this.f29005m) {
            canvas.drawCircle(i9 / 2, this.f29004l, this.f29008p, this.f28998f);
            float f10 = this.f29001i;
            s(canvas, i9, (this.f29000h + f10) / f10);
        }
    }

    private void s(Canvas canvas, int i9, float f10) {
        float f11;
        if (this.f29006n) {
            float f12 = this.f29001i + this.f29000h;
            float f13 = this.f29004l + ((this.f29008p * f10) / 2.0f);
            float f14 = i9 / 2;
            float sqrt = ((float) Math.sqrt(f11 * f11 * (1.0f - ((f10 * f10) / 4.0f)))) + f14;
            float f15 = this.f29008p;
            float f16 = f14 + (((3.0f * f15) / 4.0f) * (1.0f - f10));
            float f17 = f15 + f16;
            this.f28996d.reset();
            this.f28996d.moveTo(sqrt, f13);
            this.f28996d.quadTo(f16, f12, f17, f12);
            float f18 = i9;
            this.f28996d.lineTo(f18 - f17, f12);
            this.f28996d.quadTo(f18 - f16, f12, f18 - sqrt, f13);
            canvas.drawPath(this.f28996d, this.f28998f);
        }
    }

    private void t(Canvas canvas, int i9) {
        int i10;
        int i11;
        if (this.f29003k > 0.0f) {
            int color = this.f28999g.getColor();
            if (this.f29003k < 0.3d) {
                canvas.drawCircle(i9 / 2, this.f29004l, this.f29008p, this.f28998f);
                float f10 = this.f29008p;
                float f11 = this.f29003k;
                int strokeWidth = (int) (f10 + (this.f28999g.getStrokeWidth() * 2.0f * ((f11 / 0.3f) + 1.0f)));
                this.f28999g.setColor(ColorUtils.setAlphaComponent(color, (int) ((1.0f - (f11 / 0.3f)) * 255.0f)));
                float f12 = this.f29004l;
                float f13 = strokeWidth;
                canvas.drawArc(new RectF(i11 - strokeWidth, f12 - f13, i11 + strokeWidth, f12 + f13), 0.0f, 360.0f, false, this.f28999g);
            }
            this.f28999g.setColor(color);
            float f14 = this.f29003k;
            if (f14 >= 0.3d && f14 < 0.7d) {
                float f15 = (f14 - 0.3f) / 0.4f;
                float f16 = this.f29001i;
                float f17 = (int) ((f16 / 2.0f) + ((f16 - (f16 / 2.0f)) * f15));
                this.f29004l = f17;
                canvas.drawCircle(i9 / 2, f17, this.f29008p, this.f28998f);
                if (this.f29004l >= this.f29001i - (this.f29008p * 2.0f)) {
                    this.f29006n = true;
                    s(canvas, i9, f15);
                }
                this.f29006n = false;
            }
            float f18 = this.f29003k;
            if (f18 < 0.7d || f18 > 1.0f) {
                return;
            }
            float f19 = (f18 - 0.7f) / 0.3f;
            float f20 = i9 / 2;
            float f21 = this.f29008p;
            this.f28996d.reset();
            this.f28996d.moveTo((int) ((f20 - f21) - ((f21 * 2.0f) * f19)), this.f29001i);
            Path path = this.f28996d;
            float f22 = this.f29001i;
            path.quadTo(f20, f22 - (this.f29008p * (1.0f - f19)), i9 - i10, f22);
            canvas.drawPath(this.f28996d, this.f28998f);
        }
    }

    private void u(Canvas canvas, int i9) {
        if (this.f29007o) {
            float strokeWidth = this.f29008p + (this.f28999g.getStrokeWidth() * 2.0f);
            int i10 = this.f29010r;
            boolean z10 = this.f29011s;
            int i11 = i10 + (z10 ? 3 : 10);
            this.f29010r = i11;
            int i12 = this.f29009q + (z10 ? 10 : 3);
            this.f29009q = i12;
            int i13 = i11 % 360;
            this.f29010r = i13;
            int i14 = i12 % 360;
            this.f29009q = i14;
            int i15 = i14 - i13;
            if (i15 < 0) {
                i15 += 360;
            }
            float f10 = i9 / 2;
            float f11 = this.f29004l;
            canvas.drawArc(new RectF(f10 - strokeWidth, f11 - strokeWidth, f10 + strokeWidth, f11 + strokeWidth), this.f29010r, i15, false, this.f28999g);
            if (i15 >= 270) {
                this.f29011s = false;
            } else if (i15 <= 10) {
                this.f29011s = true;
            }
            invalidate();
        }
    }

    private void v(Canvas canvas, int i9) {
        float f10 = this.f29002j;
        if (f10 > 0.0f) {
            float f11 = i9 / 2;
            float f12 = this.f29008p;
            float f13 = (f11 - (4.0f * f12)) + (3.0f * f10 * f12);
            if (f10 < 0.9d) {
                this.f28996d.reset();
                this.f28996d.moveTo(f13, this.f29004l);
                Path path = this.f28996d;
                float f14 = this.f29004l;
                path.quadTo(f11, f14 - ((this.f29008p * this.f29002j) * 2.0f), i9 - f13, f14);
                canvas.drawPath(this.f28996d, this.f28998f);
                return;
            }
            canvas.drawCircle(f11, this.f29004l, f12, this.f28998f);
        }
    }

    private void w(Canvas canvas, int i9, int i10) {
        float min = Math.min(this.f29001i, i10);
        if (this.f29000h != 0.0f) {
            this.f28996d.reset();
            float f10 = i9;
            this.f28996d.lineTo(f10, 0.0f);
            this.f28996d.lineTo(f10, min);
            this.f28996d.quadTo(i9 / 2, (this.f29000h * 2.0f) + min, 0.0f, min);
            this.f28996d.close();
            canvas.drawPath(this.f28996d, this.f28997e);
            return;
        }
        canvas.drawRect(0.0f, 0.0f, i9, min, this.f28997e);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        this.f29012t = false;
        this.f29001i = i9;
        this.f29008p = i9 / 6;
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        float min = Math.min(this.f29000h * 0.8f, this.f29001i / 2.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f29000h, 0.0f, -(1.0f * min), 0.0f, -(0.4f * min), 0.0f);
        ofFloat.addUpdateListener(new a(min));
        ofFloat.setInterpolator(decelerateInterpolator);
        ofFloat.setDuration(1000L);
        ofFloat.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        this.f29005m = false;
        this.f29007o = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new b());
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.setDuration(800L);
        ofFloat.start();
        return 800;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (isInEditMode()) {
            this.f29005m = true;
            this.f29007o = true;
            float f10 = height;
            this.f29001i = f10;
            this.f29009q = 270;
            this.f29004l = f10 / 2.0f;
            this.f29008p = f10 / 6.0f;
        }
        w(canvas, width, height);
        v(canvas, width);
        r(canvas, width);
        u(canvas, width);
        t(canvas, width);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (z10 || this.f29012t) {
            this.f29012t = true;
            this.f29001i = i10;
            this.f29000h = Math.max(i9 - i10, 0) * 0.8f;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f28997e.setColor(iArr[0]);
            if (iArr.length > 1) {
                this.f28998f.setColor(iArr[1]);
                this.f28999g.setColor(iArr[1]);
            }
        }
    }

    public BezierCircleHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezierCircleHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29009q = 90;
        this.f29010r = 90;
        this.f29011s = true;
        this.f29012t = false;
        this.f29434b = SpinnerStyle.Scale;
        setMinimumHeight(ae.b.b(100.0f));
        Paint paint = new Paint();
        this.f28997e = paint;
        paint.setColor(-15614977);
        this.f28997e.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f28998f = paint2;
        paint2.setColor(-1);
        this.f28998f.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f28999g = paint3;
        paint3.setAntiAlias(true);
        this.f28999g.setColor(-1);
        this.f28999g.setStyle(Paint.Style.STROKE);
        this.f28999g.setStrokeWidth(ae.b.b(2.0f));
        this.f28996d = new Path();
    }
}
