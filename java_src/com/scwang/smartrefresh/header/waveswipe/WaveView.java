package com.scwang.smartrefresh.header.waveswipe;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.BounceInterpolator;
import androidx.annotation.ColorInt;
/* loaded from: classes4.dex */
public class WaveView extends View implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: u  reason: collision with root package name */
    protected static final float[][] f29250u = {new float[]{0.1655f, 0.0f}, new float[]{0.4188f, -0.0109f}, new float[]{0.4606f, -0.0049f}, new float[]{0.4893f, 0.0f}, new float[]{0.4893f, 0.0f}, new float[]{0.5f, 0.0f}};

    /* renamed from: v  reason: collision with root package name */
    protected static final float[][] f29251v = {new float[]{0.1655f, 0.0f}, new float[]{0.5237f, 0.0553f}, new float[]{0.4557f, 0.0936f}, new float[]{0.3908f, 0.1302f}, new float[]{0.4303f, 0.2173f}, new float[]{0.5f, 0.2173f}};

    /* renamed from: w  reason: collision with root package name */
    protected static final float[][] f29252w = {new float[]{0.1655f, 0.0f}, new float[]{0.5909f, 0.0f}, new float[]{0.4557f, 0.1642f}, new float[]{0.3941f, 0.2061f}, new float[]{0.4303f, 0.2889f}, new float[]{0.5f, 0.2889f}};

    /* renamed from: a  reason: collision with root package name */
    protected float f29253a;

    /* renamed from: b  reason: collision with root package name */
    protected Paint f29254b;

    /* renamed from: c  reason: collision with root package name */
    protected Path f29255c;

    /* renamed from: d  reason: collision with root package name */
    protected Path f29256d;

    /* renamed from: e  reason: collision with root package name */
    protected Path f29257e;

    /* renamed from: f  reason: collision with root package name */
    protected Path f29258f;

    /* renamed from: g  reason: collision with root package name */
    protected RectF f29259g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29260h;

    /* renamed from: i  reason: collision with root package name */
    protected float f29261i;

    /* renamed from: j  reason: collision with root package name */
    protected int f29262j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f29263k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f29264l;

    /* renamed from: m  reason: collision with root package name */
    protected int f29265m;

    /* renamed from: n  reason: collision with root package name */
    protected ValueAnimator f29266n;

    /* renamed from: o  reason: collision with root package name */
    protected ValueAnimator f29267o;

    /* renamed from: p  reason: collision with root package name */
    protected ValueAnimator f29268p;

    /* renamed from: q  reason: collision with root package name */
    protected ValueAnimator f29269q;

    /* renamed from: r  reason: collision with root package name */
    protected ValueAnimator f29270r;

    /* renamed from: s  reason: collision with root package name */
    protected ValueAnimator f29271s;

    /* renamed from: t  reason: collision with root package name */
    protected ValueAnimator.AnimatorUpdateListener f29272t;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaveView.this.postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaveView.this.f29261i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            WaveView.this.postInvalidateOnAnimation();
        }
    }

    /* loaded from: classes4.dex */
    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            WaveView.this.g();
            WaveView.this.f29263k = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            WaveView.this.f29255c.moveTo(0.0f, 0.0f);
            WaveView waveView = WaveView.this;
            Path path = waveView.f29255c;
            int i9 = waveView.f29260h;
            float f10 = floatValue * 0.5f;
            path.quadTo(i9 * 0.25f, 0.0f, i9 * 0.333f, f10);
            WaveView waveView2 = WaveView.this;
            Path path2 = waveView2.f29255c;
            int i10 = waveView2.f29260h;
            path2.quadTo(i10 * 0.5f, floatValue * 1.4f, i10 * 0.666f, f10);
            WaveView waveView3 = WaveView.this;
            Path path3 = waveView3.f29255c;
            int i11 = waveView3.f29260h;
            path3.quadTo(i11 * 0.75f, 0.0f, i11, 0.0f);
            WaveView.this.postInvalidate();
        }
    }

    public WaveView(Context context) {
        super(context);
        this.f29253a = 100.0f;
        this.f29263k = false;
        this.f29264l = false;
        this.f29272t = new a();
        float f10 = getResources().getDisplayMetrics().density;
        Paint paint = new Paint();
        this.f29254b = paint;
        paint.setColor(-14575885);
        this.f29254b.setAntiAlias(true);
        this.f29254b.setStyle(Paint.Style.FILL);
        this.f29254b.setShadowLayer((int) ((f10 * 2.0f) + 0.5f), 0.0f, 0.0f, -1728053248);
        this.f29255c = new Path();
        this.f29256d = new Path();
        this.f29257e = new Path();
        this.f29258f = new Path();
        g();
        this.f29259g = new RectF();
        setLayerType(1, null);
        getViewTreeObserver().addOnPreDrawListener(this);
    }

    public void a() {
        if (this.f29270r.isRunning()) {
            return;
        }
        j();
        k(0.1f);
    }

    public void b(float f10, float f11) {
        f();
        this.f29255c.moveTo(0.0f, 0.0f);
        Path path = this.f29255c;
        int i9 = this.f29260h;
        float[][] fArr = f29251v;
        float[][] fArr2 = f29250u;
        path.cubicTo(fArr[0][0] * i9, fArr[0][1] * i9, Math.min(fArr2[1][0] + f11, fArr[1][0]) * i9, Math.max((fArr2[1][1] + f10) - f11, fArr[1][1]) * this.f29260h, Math.max(fArr2[2][0] - f11, fArr[2][0]) * this.f29260h, Math.max((fArr2[2][1] + f10) - f11, fArr[2][1]) * this.f29260h);
        Path path2 = this.f29255c;
        float max = this.f29260h * Math.max(fArr2[3][0] - f11, fArr[3][0]);
        float min = this.f29260h * Math.min(fArr2[3][1] + f10 + f11, fArr[3][1]);
        float max2 = this.f29260h * Math.max(fArr2[4][0] - f11, fArr[4][0]);
        float min2 = this.f29260h * Math.min(fArr2[4][1] + f10 + f11, fArr[4][1]);
        int i10 = this.f29260h;
        path2.cubicTo(max, min, max2, min2, i10 * fArr[5][0], i10 * Math.min(fArr2[0][1] + f10 + f11, fArr[5][1]));
        Path path3 = this.f29255c;
        int i11 = this.f29260h;
        float max3 = i11 - (i11 * Math.max(fArr2[4][0] - f11, fArr[4][0]));
        float min3 = this.f29260h * Math.min(fArr2[4][1] + f10 + f11, fArr[4][1]);
        int i12 = this.f29260h;
        float max4 = i12 - (i12 * Math.max(fArr2[3][0] - f11, fArr[3][0]));
        float min4 = this.f29260h * Math.min(fArr2[3][1] + f10 + f11, fArr[3][1]);
        int i13 = this.f29260h;
        path3.cubicTo(max3, min3, max4, min4, i13 - (i13 * Math.max(fArr2[2][0] - f11, fArr[2][0])), this.f29260h * Math.max((fArr2[2][1] + f10) - f11, fArr[2][1]));
        Path path4 = this.f29255c;
        int i14 = this.f29260h;
        float min5 = i14 - (i14 * Math.min(fArr2[1][0] + f11, fArr[1][0]));
        float max5 = this.f29260h * Math.max((fArr2[1][1] + f10) - f11, fArr[1][1]);
        int i15 = this.f29260h;
        path4.cubicTo(min5, max5, i15 - (i15 * fArr[0][0]), i15 * fArr[0][1], i15, 0.0f);
        this.f29261i = (this.f29260h * Math.min(fArr2[3][1] + f10 + f11, fArr[3][1])) + this.f29253a;
        postInvalidateOnAnimation();
    }

    public void c(float f10) {
        f();
        this.f29255c.moveTo(0.0f, 0.0f);
        Path path = this.f29255c;
        int i9 = this.f29260h;
        float[][] fArr = f29250u;
        path.cubicTo(fArr[0][0] * i9, fArr[0][1], fArr[1][0] * i9, (fArr[1][1] + f10) * i9, fArr[2][0] * i9, i9 * (fArr[2][1] + f10));
        Path path2 = this.f29255c;
        int i10 = this.f29260h;
        path2.cubicTo(i10 * fArr[3][0], i10 * (fArr[3][1] + f10), i10 * fArr[4][0], i10 * (fArr[4][1] + f10), i10 * fArr[5][0], i10 * (fArr[5][1] + f10));
        Path path3 = this.f29255c;
        int i11 = this.f29260h;
        path3.cubicTo(i11 - (i11 * fArr[4][0]), i11 * (fArr[4][1] + f10), i11 - (i11 * fArr[3][0]), i11 * (fArr[3][1] + f10), i11 - (i11 * fArr[2][0]), i11 * (fArr[2][1] + f10));
        Path path4 = this.f29255c;
        int i12 = this.f29260h;
        path4.cubicTo(i12 - (i12 * fArr[1][0]), i12 * (fArr[1][1] + f10), i12 - (i12 * fArr[0][0]), fArr[0][1], i12, 0.0f);
        postInvalidateOnAnimation();
    }

    public void d(float f10, float f11, float f12) {
        f();
        this.f29255c.moveTo(0.0f, 0.0f);
        Path path = this.f29255c;
        int i9 = this.f29260h;
        float[][] fArr = f29252w;
        float[][] fArr2 = f29250u;
        float[][] fArr3 = f29251v;
        path.cubicTo(fArr[0][0] * i9, fArr[0][1] * i9, Math.min(Math.min(fArr2[1][0] + f11, fArr3[1][0]) + f12, fArr[1][0]) * i9, Math.max(Math.max((fArr2[1][1] + f10) - f11, fArr3[1][1]) - f12, fArr[1][1]) * this.f29260h, Math.max(fArr2[2][0] - f11, fArr[2][0]) * this.f29260h, Math.min(Math.max((fArr2[2][1] + f10) - f11, fArr3[2][1]) + f12, fArr[2][1]) * this.f29260h);
        Path path2 = this.f29255c;
        float min = this.f29260h * Math.min(Math.max(fArr2[3][0] - f11, fArr3[3][0]) + f12, fArr[3][0]);
        float min2 = this.f29260h * Math.min(Math.min(fArr2[3][1] + f10 + f11, fArr3[3][1]) + f12, fArr[3][1]);
        float max = this.f29260h * Math.max(fArr2[4][0] - f11, fArr[4][0]);
        float min3 = this.f29260h * Math.min(Math.min(fArr2[4][1] + f10 + f11, fArr3[4][1]) + f12, fArr[4][1]);
        int i10 = this.f29260h;
        path2.cubicTo(min, min2, max, min3, i10 * fArr[5][0], i10 * Math.min(Math.min(fArr2[0][1] + f10 + f11, fArr3[5][1]) + f12, fArr[5][1]));
        Path path3 = this.f29255c;
        int i11 = this.f29260h;
        float max2 = i11 - (i11 * Math.max(fArr2[4][0] - f11, fArr[4][0]));
        float min4 = this.f29260h * Math.min(Math.min(fArr2[4][1] + f10 + f11, fArr3[4][1]) + f12, fArr[4][1]);
        int i12 = this.f29260h;
        float min5 = i12 - (i12 * Math.min(Math.max(fArr2[3][0] - f11, fArr3[3][0]) + f12, fArr[3][0]));
        float min6 = this.f29260h * Math.min(Math.min(fArr2[3][1] + f10 + f11, fArr3[3][1]) + f12, fArr[3][1]);
        int i13 = this.f29260h;
        path3.cubicTo(max2, min4, min5, min6, i13 - (i13 * Math.max(fArr2[2][0] - f11, fArr[2][0])), this.f29260h * Math.min(Math.max((fArr2[2][1] + f10) - f11, fArr3[2][1]) + f12, fArr[2][1]));
        Path path4 = this.f29255c;
        int i14 = this.f29260h;
        float min7 = i14 - (i14 * Math.min(Math.min(fArr2[1][0] + f11, fArr3[1][0]) + f12, fArr[1][0]));
        float max3 = this.f29260h * Math.max(Math.max((fArr2[1][1] + f10) - f11, fArr3[1][1]) - f12, fArr[1][1]);
        int i15 = this.f29260h;
        path4.cubicTo(min7, max3, i15 - (i15 * fArr[0][0]), i15 * fArr[0][1], i15, 0.0f);
        this.f29261i = (this.f29260h * Math.min(Math.min(fArr2[3][1] + f10 + f11, fArr3[3][1]) + f12, fArr[3][1])) + this.f29253a;
        postInvalidateOnAnimation();
    }

    public void e() {
        if (this.f29263k) {
            return;
        }
        this.f29263k = true;
        int i9 = this.f29262j;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(i9, i9);
        this.f29269q = ofFloat;
        ofFloat.start();
        int i10 = this.f29262j;
        float f10 = this.f29253a;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(i10 - f10, i10 - f10);
        this.f29266n = ofFloat2;
        ofFloat2.start();
        this.f29261i = this.f29262j;
        postInvalidate();
    }

    protected void f() {
        ValueAnimator valueAnimator = this.f29271s;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f29271s.cancel();
    }

    protected void g() {
        this.f29266n = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f29267o = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f29268p = ValueAnimator.ofFloat(0.0f, 0.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(-1000.0f, -1000.0f);
        this.f29269q = ofFloat;
        ofFloat.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 1.0f);
        this.f29270r = ofFloat2;
        ofFloat2.setDuration(1L);
        this.f29270r.start();
    }

    public float getCurrentCircleCenterY() {
        return this.f29261i;
    }

    public void h(int i9, int i10) {
        this.f29254b.setShadowLayer(i9, 0.0f, 0.0f, i10);
    }

    public void i() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f29270r = ofFloat;
        ofFloat.addUpdateListener(this.f29272t);
        this.f29270r.setDuration(200L);
        this.f29270r.addListener(new c());
        this.f29270r.start();
    }

    public void j() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 1.0f);
        this.f29270r = ofFloat;
        ofFloat.setDuration(1L);
        this.f29270r.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat((this.f29260h / 1440.0f) * 500.0f, this.f29262j);
        this.f29269q = ofFloat2;
        ofFloat2.setDuration(500L);
        this.f29269q.addUpdateListener(new b());
        this.f29269q.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f29269q.start();
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, this.f29262j - this.f29253a);
        this.f29266n = ofFloat3;
        ofFloat3.setDuration(500L);
        this.f29266n.addUpdateListener(this.f29272t);
        this.f29266n.start();
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f29267o = ofFloat4;
        ofFloat4.setDuration(500L);
        this.f29267o.addUpdateListener(this.f29272t);
        this.f29267o.setInterpolator(new vd.a());
        this.f29267o.setStartDelay(500L);
        this.f29267o.start();
        ValueAnimator ofFloat5 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f29268p = ofFloat5;
        ofFloat5.setDuration(500L);
        this.f29268p.addUpdateListener(this.f29272t);
        this.f29268p.setInterpolator(new vd.a());
        this.f29268p.setStartDelay(625L);
        this.f29268p.start();
    }

    public void k(float f10) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(Math.min(f10, 0.2f) * this.f29260h, 0.0f);
        this.f29271s = ofFloat;
        ofFloat.setDuration(1000L);
        this.f29271s.addUpdateListener(new d());
        this.f29271s.setInterpolator(new BounceInterpolator());
        this.f29271s.start();
    }

    protected void l(int i9) {
        float f10 = i9;
        if ((this.f29260h / 1440.0f) * 500.0f > f10) {
            return;
        }
        this.f29262j = (int) Math.min(f10, getHeight() - this.f29253a);
        if (this.f29263k) {
            this.f29263k = false;
            e();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f29270r;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f29270r.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator2 = this.f29269q;
        if (valueAnimator2 != null) {
            valueAnimator2.end();
            this.f29269q.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator3 = this.f29266n;
        if (valueAnimator3 != null) {
            valueAnimator3.end();
            this.f29266n.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator4 = this.f29271s;
        if (valueAnimator4 != null) {
            valueAnimator4.end();
            this.f29271s.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator5 = this.f29268p;
        if (valueAnimator5 != null) {
            valueAnimator5.end();
            this.f29268p.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator6 = this.f29267o;
        if (valueAnimator6 != null) {
            valueAnimator6.end();
            this.f29267o.removeAllUpdateListeners();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float floatValue;
        super.onDraw(canvas);
        canvas.drawPath(this.f29255c, this.f29254b);
        if (!isInEditMode()) {
            this.f29255c.rewind();
            this.f29256d.rewind();
            this.f29257e.rewind();
        }
        float floatValue2 = ((Float) this.f29269q.getAnimatedValue()).floatValue();
        float f10 = this.f29260h / 2.0f;
        float floatValue3 = ((Float) this.f29270r.getAnimatedValue()).floatValue();
        float floatValue4 = ((Float) this.f29267o.getAnimatedValue()).floatValue();
        float floatValue5 = ((Float) this.f29268p.getAnimatedValue()).floatValue();
        RectF rectF = this.f29259g;
        float f11 = this.f29253a;
        float f12 = floatValue4 + 1.0f;
        float f13 = 1.0f + floatValue5;
        rectF.set((f10 - ((f11 * f12) * floatValue3)) + ((f11 * floatValue5) / 2.0f), (((f11 * f13) * floatValue3) + floatValue2) - ((f11 * floatValue4) / 2.0f), (((f12 * f11) * floatValue3) + f10) - ((floatValue5 * f11) / 2.0f), (floatValue2 - ((f13 * f11) * floatValue3)) + ((f11 * floatValue4) / 2.0f));
        this.f29256d.moveTo(f10, ((Float) this.f29266n.getAnimatedValue()).floatValue());
        double d10 = floatValue2;
        double pow = ((Math.pow(this.f29253a, 2.0d) + (floatValue2 * floatValue)) - Math.pow(d10, 2.0d)) / (floatValue - floatValue2);
        double d11 = (this.f29260h * (-2.0d)) / 2.0d;
        double d12 = -d11;
        double pow2 = (d11 * d11) - (((Math.pow(pow - d10, 2.0d) + Math.pow(f10, 2.0d)) - Math.pow(this.f29253a, 2.0d)) * 4.0d);
        float f14 = (float) pow;
        this.f29256d.lineTo((float) ((Math.sqrt(pow2) + d12) / 2.0d), f14);
        this.f29256d.lineTo((float) ((d12 - Math.sqrt(pow2)) / 2.0d), f14);
        this.f29256d.close();
        this.f29258f.set(this.f29256d);
        this.f29258f.addOval(this.f29259g, Path.Direction.CCW);
        this.f29257e.addOval(this.f29259g, Path.Direction.CCW);
        canvas.drawPath(this.f29256d, this.f29254b);
        canvas.drawPath(this.f29257e, this.f29254b);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        getViewTreeObserver().removeOnPreDrawListener(this);
        if (this.f29264l) {
            l(this.f29265m);
            return false;
        }
        return false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        this.f29260h = i9;
        this.f29253a = i9 / 14.4f;
        l((int) Math.min(Math.min(i9, i10), getHeight() - this.f29253a));
        super.onSizeChanged(i9, i10, i11, i12);
    }

    public void setWaveColor(@ColorInt int i9) {
        this.f29254b.setColor(i9);
        invalidate();
    }
}
