package com.scwang.smartrefresh.header.flyrefresh;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.ColorInt;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.scwang.smartrefresh.header.R$styleable;
/* loaded from: classes4.dex */
public class MountainSceneView extends View {

    /* renamed from: a  reason: collision with root package name */
    protected int f29186a;

    /* renamed from: b  reason: collision with root package name */
    protected int f29187b;

    /* renamed from: c  reason: collision with root package name */
    protected int f29188c;

    /* renamed from: d  reason: collision with root package name */
    protected int f29189d;

    /* renamed from: e  reason: collision with root package name */
    protected int f29190e;

    /* renamed from: f  reason: collision with root package name */
    protected int f29191f;

    /* renamed from: g  reason: collision with root package name */
    protected int f29192g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29193h;

    /* renamed from: i  reason: collision with root package name */
    protected int f29194i;

    /* renamed from: j  reason: collision with root package name */
    protected int f29195j;

    /* renamed from: k  reason: collision with root package name */
    protected Paint f29196k;

    /* renamed from: l  reason: collision with root package name */
    protected Paint f29197l;

    /* renamed from: m  reason: collision with root package name */
    protected Paint f29198m;

    /* renamed from: n  reason: collision with root package name */
    protected Paint f29199n;

    /* renamed from: o  reason: collision with root package name */
    protected Path f29200o;

    /* renamed from: p  reason: collision with root package name */
    protected Path f29201p;

    /* renamed from: q  reason: collision with root package name */
    protected Path f29202q;

    /* renamed from: r  reason: collision with root package name */
    protected Path f29203r;

    /* renamed from: s  reason: collision with root package name */
    protected Path f29204s;

    /* renamed from: t  reason: collision with root package name */
    protected Matrix f29205t;

    /* renamed from: u  reason: collision with root package name */
    protected float f29206u;

    /* renamed from: v  reason: collision with root package name */
    protected float f29207v;

    /* renamed from: w  reason: collision with root package name */
    protected float f29208w;

    /* renamed from: x  reason: collision with root package name */
    protected float f29209x;

    /* renamed from: y  reason: collision with root package name */
    protected float f29210y;

    /* renamed from: z  reason: collision with root package name */
    protected int f29211z;

    public MountainSceneView(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas, float f10, float f11, float f12, int i9, int i10) {
        canvas.save();
        canvas.translate(f11 - ((100.0f * f10) / 2.0f), f12 - (200.0f * f10));
        canvas.scale(f10, f10);
        this.f29198m.setColor(i10);
        canvas.drawPath(this.f29204s, this.f29198m);
        this.f29197l.setColor(i9);
        canvas.drawPath(this.f29203r, this.f29197l);
        this.f29199n.setColor(i9);
        canvas.drawPath(this.f29204s, this.f29199n);
        canvas.restore();
    }

    private void b(float f10, int i9) {
        this.f29205t.reset();
        this.f29205t.setScale(this.f29206u, this.f29207v);
        float f11 = 10.0f * f10;
        this.f29200o.reset();
        this.f29200o.moveTo(0.0f, 95.0f + f11);
        this.f29200o.lineTo(55.0f, 74.0f + f11);
        this.f29200o.lineTo(146.0f, f11 + 104.0f);
        this.f29200o.lineTo(227.0f, 72.0f + f11);
        this.f29200o.lineTo(240.0f, f11 + 80.0f);
        this.f29200o.lineTo(240.0f, 180.0f);
        this.f29200o.lineTo(0.0f, 180.0f);
        this.f29200o.close();
        this.f29200o.transform(this.f29205t);
        float f12 = 20.0f * f10;
        this.f29201p.reset();
        this.f29201p.moveTo(0.0f, 103.0f + f12);
        this.f29201p.lineTo(67.0f, 90.0f + f12);
        this.f29201p.lineTo(165.0f, 115.0f + f12);
        this.f29201p.lineTo(221.0f, 87.0f + f12);
        this.f29201p.lineTo(240.0f, f12 + 100.0f);
        this.f29201p.lineTo(240.0f, 180.0f);
        this.f29201p.lineTo(0.0f, 180.0f);
        this.f29201p.close();
        this.f29201p.transform(this.f29205t);
        float f13 = f10 * 30.0f;
        this.f29202q.reset();
        this.f29202q.moveTo(0.0f, 114.0f + f13);
        this.f29202q.cubicTo(30.0f, f13 + 106.0f, 196.0f, f13 + 97.0f, 240.0f, f13 + 104.0f);
        float f14 = i9;
        this.f29202q.lineTo(240.0f, f14 / this.f29207v);
        this.f29202q.lineTo(0.0f, f14 / this.f29207v);
        this.f29202q.close();
        this.f29202q.transform(this.f29205t);
    }

    private void d(float f10, boolean z10) {
        int i9;
        if (f10 != this.f29210y || z10) {
            Interpolator create = PathInterpolatorCompat.create(0.8f, (-0.5f) * f10);
            float f11 = f10 * 30.000002f;
            float[] fArr = new float[26];
            float[] fArr2 = new float[26];
            int i10 = 0;
            float f12 = 0.0f;
            float f13 = 200.0f;
            while (true) {
                if (i10 > 25) {
                    break;
                }
                fArr[i10] = (create.getInterpolation(f12) * f11) + 50.0f;
                fArr2[i10] = f13;
                f13 -= 8.0f;
                f12 += 0.04f;
                i10++;
            }
            this.f29203r.reset();
            this.f29203r.moveTo(45.0f, 200.0f);
            int i11 = (int) (17 * 0.5f);
            float f14 = 17 - i11;
            for (int i12 = 0; i12 < 17; i12++) {
                if (i12 < i11) {
                    this.f29203r.lineTo(fArr[i12] - 5.0f, fArr2[i12]);
                } else {
                    this.f29203r.lineTo(fArr[i12] - (((17 - i12) * 5.0f) / f14), fArr2[i12]);
                }
            }
            for (int i13 = 16; i13 >= 0; i13--) {
                if (i13 < i11) {
                    this.f29203r.lineTo(fArr[i13] + 5.0f, fArr2[i13]);
                } else {
                    this.f29203r.lineTo(fArr[i13] + (((17 - i13) * 5.0f) / f14), fArr2[i13]);
                }
            }
            this.f29203r.close();
            this.f29204s.reset();
            float f15 = 15;
            this.f29204s.moveTo(fArr[10] - 20.0f, fArr2[10]);
            this.f29204s.addArc(new RectF(fArr[10] - 20.0f, fArr2[10] - 20.0f, fArr[10] + 20.0f, fArr2[10] + 20.0f), 0.0f, 180.0f);
            for (int i14 = 10; i14 <= 25; i14++) {
                float f16 = (i14 - 10) / f15;
                this.f29204s.lineTo((fArr[i14] - 20.0f) + (f16 * f16 * 20.0f), fArr2[i14]);
            }
            for (i9 = 25; i9 >= 10; i9--) {
                float f17 = (i9 - 10) / f15;
                this.f29204s.lineTo((fArr[i9] + 20.0f) - ((f17 * f17) * 20.0f), fArr2[i9]);
            }
        }
    }

    public void c(float f10) {
        this.f29209x = f10;
        float max = Math.max(0.0f, f10);
        this.f29208w = Math.max(0.0f, this.f29209x);
        int measuredHeight = getMeasuredHeight();
        float f11 = this.f29208w;
        if (measuredHeight <= 0) {
            measuredHeight = 180;
        }
        b(f11, measuredHeight);
        d(max, false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(this.f29186a);
        this.f29196k.setColor(this.f29187b);
        canvas.drawPath(this.f29200o, this.f29196k);
        canvas.save();
        canvas.scale(-1.0f, 1.0f, getWidth() / 2, 0.0f);
        float f10 = this.f29206u;
        a(canvas, f10 * 0.12f, f10 * 180.0f, ((this.f29208w * 20.0f) + 93.0f) * this.f29207v, this.f29195j, this.f29194i);
        float f11 = this.f29206u;
        a(canvas, f11 * 0.1f, f11 * 200.0f, ((this.f29208w * 20.0f) + 96.0f) * this.f29207v, this.f29195j, this.f29194i);
        canvas.restore();
        this.f29196k.setColor(this.f29188c);
        canvas.drawPath(this.f29201p, this.f29196k);
        float f12 = this.f29206u;
        a(canvas, f12 * 0.2f, f12 * 160.0f, ((this.f29208w * 30.0f) + 105.0f) * this.f29207v, this.f29191f, this.f29190e);
        float f13 = this.f29206u;
        a(canvas, f13 * 0.14f, f13 * 180.0f, ((this.f29208w * 30.0f) + 105.0f) * this.f29207v, this.f29193h, this.f29192g);
        float f14 = this.f29206u;
        a(canvas, f14 * 0.16f, f14 * 140.0f, ((this.f29208w * 30.0f) + 105.0f) * this.f29207v, this.f29193h, this.f29192g);
        this.f29196k.setColor(this.f29189d);
        canvas.drawPath(this.f29202q, this.f29196k);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f29206u = (measuredWidth * 1.0f) / 240.0f;
        int i11 = this.f29211z;
        if (i11 <= 0) {
            i11 = measuredHeight;
        }
        this.f29207v = (i11 * 1.0f) / 180.0f;
        b(this.f29208w, measuredHeight);
        d(this.f29208w, true);
    }

    public void setPrimaryColor(@ColorInt int i9) {
        this.f29186a = i9;
        this.f29187b = ColorUtils.compositeColors(-1711276033, i9);
        this.f29188c = ColorUtils.compositeColors(-1724083556, i9);
        this.f29189d = ColorUtils.compositeColors(-868327565, i9);
        this.f29190e = ColorUtils.compositeColors(1428124023, i9);
        this.f29191f = ColorUtils.compositeColors(-871612856, i9);
        this.f29192g = ColorUtils.compositeColors(1429506191, i9);
        this.f29193h = ColorUtils.compositeColors(-870620823, i9);
        this.f29194i = ColorUtils.compositeColors(1431810478, i9);
        this.f29195j = ColorUtils.compositeColors(-865950547, i9);
    }

    public MountainSceneView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29186a = -8466743;
        this.f29187b = -7939369;
        this.f29188c = -12807524;
        this.f29189d = -12689549;
        this.f29190e = -14716553;
        this.f29191f = -15974840;
        this.f29192g = -13334385;
        this.f29193h = -14982807;
        this.f29194i = -11030098;
        this.f29195j = -10312531;
        this.f29196k = new Paint();
        this.f29197l = new Paint();
        this.f29198m = new Paint();
        this.f29199n = new Paint();
        this.f29200o = new Path();
        this.f29201p = new Path();
        this.f29202q = new Path();
        this.f29203r = new Path();
        this.f29204s = new Path();
        this.f29205t = new Matrix();
        this.f29206u = 5.0f;
        this.f29207v = 5.0f;
        this.f29208w = 0.0f;
        this.f29209x = 1.0f;
        this.f29210y = Float.MAX_VALUE;
        this.f29211z = 0;
        this.f29196k.setAntiAlias(true);
        this.f29196k.setStyle(Paint.Style.FILL);
        this.f29197l.setAntiAlias(true);
        this.f29198m.setAntiAlias(true);
        this.f29199n.setAntiAlias(true);
        this.f29199n.setStyle(Paint.Style.STROKE);
        this.f29199n.setStrokeWidth(2.0f);
        this.f29199n.setStrokeJoin(Paint.Join.ROUND);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MountainSceneView);
        int i9 = R$styleable.MountainSceneView_msvPrimaryColor;
        if (obtainStyledAttributes.hasValue(i9)) {
            setPrimaryColor(obtainStyledAttributes.getColor(i9, ViewCompat.MEASURED_STATE_MASK));
        }
        this.f29211z = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.MountainSceneView_msvViewportHeight, 0);
        obtainStyledAttributes.recycle();
        b(this.f29208w, 180);
        d(this.f29208w, true);
    }
}
