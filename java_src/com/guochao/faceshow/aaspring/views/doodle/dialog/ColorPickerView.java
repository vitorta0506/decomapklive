package com.guochao.faceshow.aaspring.views.doodle.dialog;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
/* loaded from: classes3.dex */
public class ColorPickerView extends View {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f24291a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f24292b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f24293c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f24294d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f24295e;

    /* renamed from: f  reason: collision with root package name */
    private Paint f24296f;

    /* renamed from: g  reason: collision with root package name */
    private Shader f24297g;

    /* renamed from: h  reason: collision with root package name */
    private float f24298h;

    /* renamed from: i  reason: collision with root package name */
    private float f24299i;

    /* renamed from: j  reason: collision with root package name */
    private float f24300j;

    /* renamed from: k  reason: collision with root package name */
    private float f24301k;

    /* renamed from: l  reason: collision with root package name */
    private int f24302l;

    /* renamed from: m  reason: collision with root package name */
    private int f24303m;

    /* renamed from: n  reason: collision with root package name */
    private float f24304n;

    /* renamed from: o  reason: collision with root package name */
    private float f24305o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f24306p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f24307q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f24308r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f24309s;

    /* renamed from: t  reason: collision with root package name */
    private RectF f24310t;

    /* renamed from: u  reason: collision with root package name */
    private a f24311u;

    /* renamed from: v  reason: collision with root package name */
    private Drawable f24312v;

    /* renamed from: w  reason: collision with root package name */
    private BitmapShader f24313w;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i9);
    }

    private int a(int i9, int i10, float f10) {
        return i9 + Math.round(f10 * (i10 - i9));
    }

    private boolean b(float f10, float f11, float f12) {
        double d10 = f12;
        return ((double) ((f10 * f10) + (f11 * f11))) * 3.141592653589793d < (d10 * 3.141592653589793d) * d10;
    }

    private boolean c(float f10, float f11, float f12, float f13) {
        double d10 = f12;
        double d11 = f13;
        double d12 = ((f10 * f10) + (f11 * f11)) * 3.141592653589793d;
        return d12 < (d10 * 3.141592653589793d) * d10 && d12 > (d11 * 3.141592653589793d) * d11;
    }

    private boolean d(float f10, float f11) {
        return f10 <= this.f24300j && f10 >= this.f24298h && f11 <= this.f24301k && f11 >= this.f24299i;
    }

    private int e(int[] iArr, float f10) {
        if (f10 <= 0.0f) {
            return iArr[0];
        }
        if (f10 >= 1.0f) {
            return iArr[iArr.length - 1];
        }
        float length = f10 * (iArr.length - 1);
        int i9 = (int) length;
        float f11 = length - i9;
        int i10 = iArr[i9];
        int i11 = iArr[i9 + 1];
        return Color.argb(a(Color.alpha(i10), Color.alpha(i11), f11), a(Color.red(i10), Color.red(i11), f11), a(Color.green(i10), Color.green(i11), f11), a(Color.blue(i10), Color.blue(i11), f11));
    }

    private int f(int[] iArr, float f10) {
        int i9;
        int i10;
        float f11;
        if (f10 < 0.0f) {
            i9 = iArr[0];
            i10 = iArr[1];
            f11 = this.f24300j;
            f10 += f11;
        } else {
            i9 = iArr[1];
            i10 = iArr[2];
            f11 = this.f24300j;
        }
        float f12 = f10 / f11;
        return Color.argb(a(Color.alpha(i9), Color.alpha(i10), f12), a(Color.red(i9), Color.red(i10), f12), a(Color.green(i9), Color.green(i10), f12), a(Color.blue(i9), Color.blue(i10), f12));
    }

    public int getColor() {
        return this.f24294d.getColor();
    }

    public Drawable getDrawable() {
        return this.f24312v;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.translate(this.f24303m / 2, (this.f24302l / 2) - 50);
        if (this.f24312v != null) {
            this.f24294d.setShader(this.f24313w);
        } else {
            this.f24294d.setShader(null);
        }
        canvas.drawCircle(0.0f, 0.0f, this.f24305o, this.f24294d);
        if (this.f24308r || this.f24309s) {
            int color = this.f24294d.getColor();
            this.f24294d.setStyle(Paint.Style.STROKE);
            if (this.f24308r) {
                this.f24294d.setAlpha(255);
            } else if (this.f24309s) {
                this.f24294d.setAlpha(144);
            }
            canvas.drawCircle(0.0f, 0.0f, this.f24305o + this.f24294d.getStrokeWidth(), this.f24294d);
            this.f24294d.setStyle(Paint.Style.FILL);
            this.f24294d.setColor(color);
        }
        RectF rectF = this.f24310t;
        float f10 = this.f24304n;
        rectF.set(-f10, -f10, f10, f10);
        canvas.drawOval(this.f24310t, this.f24293c);
        if (this.f24306p && this.f24292b[1] != this.f24294d.getColor()) {
            this.f24292b[1] = this.f24294d.getColor();
            this.f24297g = new LinearGradient(this.f24298h, 0.0f, this.f24300j, 0.0f, this.f24292b, (float[]) null, Shader.TileMode.MIRROR);
        }
        if (this.f24297g == null) {
            this.f24297g = new LinearGradient(this.f24298h, 0.0f, this.f24300j, 0.0f, this.f24292b, (float[]) null, Shader.TileMode.MIRROR);
        }
        this.f24296f.setShader(this.f24297g);
        canvas.drawRect(this.f24298h, this.f24299i, this.f24300j, this.f24301k, this.f24296f);
        float strokeWidth = this.f24295e.getStrokeWidth() / 2.0f;
        float f11 = this.f24298h;
        float f12 = 2.0f * strokeWidth;
        canvas.drawLine(f11 - strokeWidth, this.f24299i - f12, f11 - strokeWidth, this.f24301k + f12, this.f24295e);
        float f13 = this.f24298h - f12;
        float f14 = this.f24299i;
        canvas.drawLine(f13, f14 - strokeWidth, this.f24300j + f12, f14 - strokeWidth, this.f24295e);
        float f15 = this.f24300j;
        canvas.drawLine(f15 + strokeWidth, this.f24299i - f12, f15 + strokeWidth, this.f24301k + f12, this.f24295e);
        float f16 = this.f24298h - f12;
        float f17 = this.f24301k;
        canvas.drawLine(f16, f17 + strokeWidth, this.f24300j + f12, f17 + strokeWidth, this.f24295e);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(this.f24303m, this.f24302l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0044, code lost:
        if (r11 != 2) goto L28;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.doodle.dialog.ColorPickerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setColor(int i9) {
        this.f24294d.setColor(i9);
        this.f24292b[1] = this.f24294d.getColor();
    }

    public void setDrawable(BitmapDrawable bitmapDrawable) {
        this.f24312v = bitmapDrawable;
        Bitmap bitmap = bitmapDrawable.getBitmap();
        Shader.TileMode tileMode = Shader.TileMode.MIRROR;
        this.f24313w = new BitmapShader(bitmap, tileMode, tileMode);
        invalidate();
    }
}
