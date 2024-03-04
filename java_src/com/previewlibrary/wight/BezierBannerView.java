package com.previewlibrary.wight;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import com.previewlibrary.R$styleable;
/* loaded from: classes4.dex */
public class BezierBannerView extends View implements ViewPager.OnPageChangeListener {
    public static int L = 1;
    public static int M = 2;
    private static final String N = BezierBannerView.class.getName();
    private int A;
    private int B;
    private int C;
    float D;
    float E;
    float F;
    float G;
    float H;
    float I;
    private int J;
    Interpolator K;

    /* renamed from: a  reason: collision with root package name */
    private Paint f28919a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f28920b;

    /* renamed from: c  reason: collision with root package name */
    private Path f28921c;

    /* renamed from: d  reason: collision with root package name */
    private Path f28922d;

    /* renamed from: e  reason: collision with root package name */
    private int f28923e;

    /* renamed from: f  reason: collision with root package name */
    private int f28924f;

    /* renamed from: g  reason: collision with root package name */
    private float f28925g;

    /* renamed from: h  reason: collision with root package name */
    private float f28926h;

    /* renamed from: i  reason: collision with root package name */
    private float f28927i;

    /* renamed from: j  reason: collision with root package name */
    private float f28928j;

    /* renamed from: k  reason: collision with root package name */
    private float f28929k;

    /* renamed from: l  reason: collision with root package name */
    private float f28930l;

    /* renamed from: m  reason: collision with root package name */
    private float f28931m;

    /* renamed from: n  reason: collision with root package name */
    float f28932n;

    /* renamed from: o  reason: collision with root package name */
    float f28933o;

    /* renamed from: p  reason: collision with root package name */
    float f28934p;

    /* renamed from: q  reason: collision with root package name */
    float f28935q;

    /* renamed from: r  reason: collision with root package name */
    float f28936r;

    /* renamed from: s  reason: collision with root package name */
    float f28937s;

    /* renamed from: t  reason: collision with root package name */
    float f28938t;

    /* renamed from: u  reason: collision with root package name */
    float f28939u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f28940v;

    /* renamed from: w  reason: collision with root package name */
    private float f28941w;

    /* renamed from: x  reason: collision with root package name */
    private float f28942x;

    /* renamed from: y  reason: collision with root package name */
    private float f28943y;

    /* renamed from: z  reason: collision with root package name */
    private int f28944z;

    public BezierBannerView(Context context) {
        this(context, null);
    }

    private float b(int i9) {
        if (i9 == 0) {
            return this.f28926h;
        }
        float f10 = this.f28925g;
        float f11 = this.f28928j;
        return (i9 * (f10 + (2.0f * f11))) + f11 + (this.f28926h - f11);
    }

    private void f() {
        Paint paint = new Paint(1);
        paint.setColor(this.f28923e);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setDither(true);
        this.f28919a = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(this.f28924f);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        this.f28920b = paint2;
    }

    private void g(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BezierBannerView);
        this.f28923e = obtainStyledAttributes.getColor(R$styleable.BezierBannerView_selectedColor, -1);
        this.f28924f = obtainStyledAttributes.getColor(R$styleable.BezierBannerView_unSelectedColor, -5592406);
        this.f28926h = obtainStyledAttributes.getDimension(R$styleable.BezierBannerView_selectedRaduis, this.f28926h);
        this.f28928j = obtainStyledAttributes.getDimension(R$styleable.BezierBannerView_unSelectedRaduis, this.f28928j);
        this.f28925g = obtainStyledAttributes.getDimension(R$styleable.BezierBannerView_spacing, this.f28925g);
        obtainStyledAttributes.recycle();
    }

    private void h() {
        this.f28921c.reset();
        this.f28922d.reset();
        float interpolation = this.K.getInterpolation(this.f28943y);
        this.f28932n = d(b(this.f28944z), b(this.f28944z + 1) - this.f28926h, this.C);
        float f10 = this.f28926h;
        this.f28933o = f10;
        this.f28927i = c(f10, 0.0f, interpolation);
        double radians = Math.toRadians(d(45.0f, 0.0f, this.B));
        float sin = (float) (Math.sin(radians) * this.f28927i);
        float cos = (float) (Math.cos(radians) * this.f28927i);
        this.f28934p = d(b(this.f28944z) + this.f28926h, b(this.f28944z + 1), this.B);
        float f11 = this.f28926h;
        this.f28935q = f11;
        this.f28930l = c(0.0f, f11, interpolation);
        double radians2 = Math.toRadians(d(0.0f, 45.0f, this.C));
        float cos2 = (float) (Math.cos(radians2) * this.f28930l);
        this.F = this.f28932n + sin;
        this.G = this.f28933o - cos;
        this.H = this.f28934p - ((float) (Math.sin(radians2) * this.f28930l));
        this.I = this.f28926h - cos2;
        this.D = e(b(this.f28944z) + this.f28926h, b(this.f28944z + 1) - this.f28926h);
        this.E = this.f28926h;
        this.f28921c.moveTo(this.F, this.G);
        this.f28921c.quadTo(this.D, this.E, this.H, this.I);
        this.f28921c.lineTo(this.H, this.f28926h + cos2);
        this.f28921c.quadTo(this.D, this.f28926h, this.F, this.G + (cos * 2.0f));
        this.f28921c.lineTo(this.F, this.G);
        this.f28938t = d(b(this.f28944z + 1), b(this.f28944z) + this.f28928j, this.C);
        this.f28939u = this.f28926h;
        this.f28929k = c(this.f28928j, 0.0f, interpolation);
        double radians3 = Math.toRadians(d(45.0f, 0.0f, this.B));
        float sin2 = (float) (Math.sin(radians3) * this.f28929k);
        float cos3 = (float) (Math.cos(radians3) * this.f28929k);
        this.f28936r = d(b(this.f28944z + 1) - this.f28928j, b(this.f28944z), this.B);
        this.f28937s = this.f28926h;
        this.f28931m = c(0.0f, this.f28928j, interpolation);
        double radians4 = Math.toRadians(d(0.0f, 45.0f, this.C));
        float sin3 = (float) (Math.sin(radians4) * this.f28931m);
        float cos4 = (float) (Math.cos(radians4) * this.f28931m);
        float f12 = this.f28938t - sin2;
        float f13 = this.f28939u - cos3;
        float f14 = this.f28936r + sin3;
        float e10 = e(b(this.f28944z + 1) - this.f28928j, b(this.f28944z) + this.f28928j);
        float f15 = this.f28926h;
        this.f28922d.moveTo(f12, f13);
        this.f28922d.quadTo(e10, f15, f14, this.f28937s - cos4);
        this.f28922d.lineTo(f14, this.f28926h + cos4);
        this.f28922d.quadTo(e10, f15, f12, (cos3 * 2.0f) + f13);
        this.f28922d.lineTo(f12, f13);
    }

    private void i() {
        this.f28921c.reset();
        this.f28922d.reset();
        float interpolation = this.K.getInterpolation(this.f28943y);
        this.f28932n = d(b(this.f28944z), b(this.f28944z - 1) + this.f28926h, this.C);
        float f10 = this.f28926h;
        this.f28933o = f10;
        this.f28927i = c(f10, 0.0f, interpolation);
        double radians = Math.toRadians(d(45.0f, 0.0f, this.B));
        float sin = (float) (Math.sin(radians) * this.f28927i);
        float cos = (float) (Math.cos(radians) * this.f28927i);
        this.f28934p = d(b(this.f28944z) - this.f28926h, b(this.f28944z - 1), this.B);
        float f11 = this.f28926h;
        this.f28935q = f11;
        this.f28930l = c(0.0f, f11, interpolation);
        double radians2 = Math.toRadians(d(0.0f, 45.0f, this.C));
        float cos2 = (float) (Math.cos(radians2) * this.f28930l);
        this.F = this.f28932n - sin;
        this.G = this.f28933o - cos;
        this.H = this.f28934p + ((float) (Math.sin(radians2) * this.f28930l));
        this.I = this.f28926h - cos2;
        this.D = e(b(this.f28944z) - this.f28926h, b(this.f28944z - 1) + this.f28926h);
        this.E = this.f28926h;
        this.f28921c.moveTo(this.F, this.G);
        this.f28921c.quadTo(this.D, this.E, this.H, this.I);
        this.f28921c.lineTo(this.H, this.f28926h + cos2);
        this.f28921c.quadTo(this.D, this.f28926h, this.F, this.G + (cos * 2.0f));
        this.f28921c.lineTo(this.F, this.G);
        this.f28938t = d(b(this.f28944z - 1), b(this.f28944z) - this.f28928j, this.C);
        this.f28939u = this.f28926h;
        this.f28929k = c(this.f28928j, 0.0f, interpolation);
        double radians3 = Math.toRadians(d(45.0f, 0.0f, this.B));
        float sin2 = (float) (Math.sin(radians3) * this.f28929k);
        float cos3 = (float) (Math.cos(radians3) * this.f28929k);
        this.f28936r = d(b(this.f28944z - 1) + this.f28928j, b(this.f28944z), this.B);
        this.f28937s = this.f28926h;
        this.f28931m = c(0.0f, this.f28928j, interpolation);
        double radians4 = Math.toRadians(d(0.0f, 45.0f, this.C));
        float sin3 = (float) (Math.sin(radians4) * this.f28931m);
        float cos4 = (float) (Math.cos(radians4) * this.f28931m);
        float f12 = this.f28938t + sin2;
        float f13 = this.f28939u - cos3;
        float f14 = this.f28936r - sin3;
        float e10 = e(b(this.f28944z - 1) + this.f28928j, b(this.f28944z) - this.f28928j);
        float f15 = this.f28926h;
        this.f28922d.moveTo(f12, f13);
        this.f28922d.quadTo(e10, f15, f14, this.f28937s - cos4);
        this.f28922d.lineTo(f14, this.f28926h + cos4);
        this.f28922d.quadTo(e10, f15, f12, (cos3 * 2.0f) + f13);
        this.f28922d.lineTo(f12, f13);
    }

    public void a(ViewPager viewPager) {
        viewPager.addOnPageChangeListener(this);
        this.A = viewPager.getAdapter().getCount();
        this.f28944z = viewPager.getCurrentItem();
        h();
        this.J = M;
        invalidate();
    }

    public float c(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    public float d(float f10, float f11, int i9) {
        float f12;
        float f13;
        if (i9 == this.B) {
            f12 = f11 - f10;
            f13 = this.f28941w;
        } else {
            f12 = f11 - f10;
            f13 = this.f28942x;
        }
        return f10 + (f12 * f13);
    }

    public float e(float f10, float f11) {
        return f10 + ((f11 - f10) * this.f28943y);
    }

    public void j() {
        this.f28941w = 0.0f;
        this.f28942x = 0.0f;
        this.f28943y = 0.0f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i9;
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        for (int i10 = 0; i10 < this.A; i10++) {
            int i11 = this.J;
            if (i11 == M) {
                int i12 = this.f28944z;
                if (i10 != i12 && i10 != i12 + 1) {
                    canvas.drawCircle(b(i10), this.f28926h, this.f28928j, this.f28920b);
                }
            } else if (i11 == L && i10 != (i9 = this.f28944z) && i10 != i9 - 1) {
                canvas.drawCircle(b(i10), this.f28926h, this.f28928j, this.f28920b);
            }
        }
        canvas.drawCircle(this.f28936r, this.f28937s, this.f28931m, this.f28920b);
        canvas.drawCircle(this.f28938t, this.f28939u, this.f28929k, this.f28920b);
        canvas.drawPath(this.f28922d, this.f28920b);
        canvas.drawCircle(this.f28934p, this.f28935q, this.f28930l, this.f28919a);
        canvas.drawCircle(this.f28932n, this.f28933o, this.f28927i, this.f28919a);
        canvas.drawPath(this.f28921c, this.f28919a);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        float f10 = this.f28928j;
        int i11 = this.A;
        int paddingLeft = (int) ((f10 * 2.0f * i11) + ((this.f28926h - f10) * 2.0f) + ((i11 - 1) * this.f28925g) + getPaddingLeft() + getPaddingRight());
        int paddingTop = (int) ((this.f28926h * 2.0f) + getPaddingTop() + getPaddingBottom());
        if (mode != 1073741824 && mode == Integer.MIN_VALUE) {
            size = Math.min(size, paddingLeft);
        }
        if (mode2 != 1073741824 && mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(size2, paddingTop);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
        if (f10 == 0.0f) {
            this.f28944z = i9;
            Log.d(N, "到达");
            j();
        }
        float f11 = i9 + f10;
        int i11 = this.f28944z;
        if (f11 - i11 > 0.0f) {
            this.J = M;
            if (f11 > i11 + 1) {
                this.f28944z = i9;
                Log.d(N, "向左快速滑动");
                return;
            }
            setProgress(f10);
        } else if (f11 - i11 < 0.0f) {
            this.J = L;
            if (f11 < i11 - 1) {
                this.f28944z = i9;
                Log.d(N, "向右快速滑动");
                return;
            }
            setProgress(1.0f - f10);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
    }

    public void setDirection(int i9) {
        this.J = i9;
    }

    public void setProgress(float f10) {
        if (f10 == 0.0f) {
            return;
        }
        this.f28943y = f10;
        if (f10 <= 0.5d) {
            this.f28941w = f10 / 0.5f;
            this.f28942x = 0.0f;
        } else {
            this.f28942x = (f10 - 0.5f) / 0.5f;
            this.f28941w = 1.0f;
        }
        if (this.J == M) {
            h();
        } else {
            i();
        }
        invalidate();
    }

    public BezierBannerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezierBannerView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f28921c = new Path();
        this.f28922d = new Path();
        this.f28925g = 80.0f;
        this.f28926h = 30.0f;
        this.f28928j = 20.0f;
        this.f28940v = false;
        this.f28941w = 0.0f;
        this.f28942x = 0.0f;
        this.f28944z = 0;
        this.B = 1;
        this.C = 2;
        this.K = new AccelerateDecelerateInterpolator();
        g(attributeSet);
        f();
    }
}
