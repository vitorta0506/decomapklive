package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes2.dex */
final class y {
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I;
    private Rect J;

    /* renamed from: a  reason: collision with root package name */
    private final float f6840a;

    /* renamed from: b  reason: collision with root package name */
    private final float f6841b;

    /* renamed from: c  reason: collision with root package name */
    private final float f6842c;

    /* renamed from: d  reason: collision with root package name */
    private final float f6843d;

    /* renamed from: e  reason: collision with root package name */
    private final float f6844e;

    /* renamed from: f  reason: collision with root package name */
    private final TextPaint f6845f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f6846g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f6847h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f6848i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Layout.Alignment f6849j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Bitmap f6850k;

    /* renamed from: l  reason: collision with root package name */
    private float f6851l;

    /* renamed from: m  reason: collision with root package name */
    private int f6852m;

    /* renamed from: n  reason: collision with root package name */
    private int f6853n;

    /* renamed from: o  reason: collision with root package name */
    private float f6854o;

    /* renamed from: p  reason: collision with root package name */
    private int f6855p;

    /* renamed from: q  reason: collision with root package name */
    private float f6856q;

    /* renamed from: r  reason: collision with root package name */
    private float f6857r;

    /* renamed from: s  reason: collision with root package name */
    private int f6858s;

    /* renamed from: t  reason: collision with root package name */
    private int f6859t;

    /* renamed from: u  reason: collision with root package name */
    private int f6860u;

    /* renamed from: v  reason: collision with root package name */
    private int f6861v;

    /* renamed from: w  reason: collision with root package name */
    private int f6862w;

    /* renamed from: x  reason: collision with root package name */
    private float f6863x;

    /* renamed from: y  reason: collision with root package name */
    private float f6864y;

    /* renamed from: z  reason: collision with root package name */
    private float f6865z;

    public y(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f6844e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f6843d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f6840a = round;
        this.f6841b = round;
        this.f6842c = round;
        TextPaint textPaint = new TextPaint();
        this.f6845f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f6846g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f6847h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean a(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    private void c(Canvas canvas) {
        canvas.drawBitmap(this.f6850k, (Rect) null, this.J, this.f6847h);
    }

    private void d(Canvas canvas, boolean z10) {
        if (z10) {
            e(canvas);
            return;
        }
        com.google.android.exoplayer2.util.a.e(this.J);
        com.google.android.exoplayer2.util.a.e(this.f6850k);
        c(canvas);
    }

    private void e(Canvas canvas) {
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f6860u) > 0) {
            this.f6846g.setColor(this.f6860u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f6846g);
        }
        int i9 = this.f6862w;
        if (i9 == 1) {
            this.f6845f.setStrokeJoin(Paint.Join.ROUND);
            this.f6845f.setStrokeWidth(this.f6840a);
            this.f6845f.setColor(this.f6861v);
            this.f6845f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i9 == 2) {
            TextPaint textPaint = this.f6845f;
            float f10 = this.f6841b;
            float f11 = this.f6842c;
            textPaint.setShadowLayer(f10, f11, f11, this.f6861v);
        } else if (i9 == 3 || i9 == 4) {
            boolean z10 = i9 == 3;
            int i10 = z10 ? -1 : this.f6861v;
            int i11 = z10 ? this.f6861v : -1;
            float f12 = this.f6841b / 2.0f;
            this.f6845f.setColor(this.f6858s);
            this.f6845f.setStyle(Paint.Style.FILL);
            float f13 = -f12;
            this.f6845f.setShadowLayer(this.f6841b, f13, f13, i10);
            staticLayout2.draw(canvas);
            this.f6845f.setShadowLayer(this.f6841b, f12, f12, i11);
        }
        this.f6845f.setColor(this.f6858s);
        this.f6845f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f6845f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f() {
        /*
            r7 = this;
            android.graphics.Bitmap r0 = r7.f6850k
            int r1 = r7.C
            int r2 = r7.A
            int r1 = r1 - r2
            int r3 = r7.D
            int r4 = r7.B
            int r3 = r3 - r4
            float r2 = (float) r2
            float r1 = (float) r1
            float r5 = r7.f6854o
            float r5 = r5 * r1
            float r2 = r2 + r5
            float r4 = (float) r4
            float r3 = (float) r3
            float r5 = r7.f6851l
            float r5 = r5 * r3
            float r4 = r4 + r5
            float r5 = r7.f6856q
            float r1 = r1 * r5
            int r1 = java.lang.Math.round(r1)
            float r5 = r7.f6857r
            r6 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 == 0) goto L32
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
            goto L44
        L32:
            float r3 = (float) r1
            int r5 = r0.getHeight()
            float r5 = (float) r5
            int r0 = r0.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
        L44:
            int r3 = r7.f6855p
            r5 = 1
            r6 = 2
            if (r3 != r6) goto L4d
            float r3 = (float) r1
        L4b:
            float r2 = r2 - r3
            goto L53
        L4d:
            if (r3 != r5) goto L53
            int r3 = r1 / 2
            float r3 = (float) r3
            goto L4b
        L53:
            int r2 = java.lang.Math.round(r2)
            int r3 = r7.f6853n
            if (r3 != r6) goto L5e
            float r3 = (float) r0
        L5c:
            float r4 = r4 - r3
            goto L64
        L5e:
            if (r3 != r5) goto L64
            int r3 = r0 / 2
            float r3 = (float) r3
            goto L5c
        L64:
            int r3 = java.lang.Math.round(r4)
            android.graphics.Rect r4 = new android.graphics.Rect
            int r1 = r1 + r2
            int r0 = r0 + r3
            r4.<init>(r2, r3, r1, r0)
            r7.J = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.y.f():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g() {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.y.g():void");
    }

    public void b(x2.b bVar, i3.b bVar2, float f10, float f11, float f12, Canvas canvas, int i9, int i10, int i11, int i12) {
        boolean z10 = bVar.f59549d == null;
        int i13 = ViewCompat.MEASURED_STATE_MASK;
        if (z10) {
            if (TextUtils.isEmpty(bVar.f59546a)) {
                return;
            }
            i13 = bVar.f59557l ? bVar.f59558m : bVar2.f40942c;
        }
        if (a(this.f6848i, bVar.f59546a) && l0.c(this.f6849j, bVar.f59547b) && this.f6850k == bVar.f59549d && this.f6851l == bVar.f59550e && this.f6852m == bVar.f59551f && l0.c(Integer.valueOf(this.f6853n), Integer.valueOf(bVar.f59552g)) && this.f6854o == bVar.f59553h && l0.c(Integer.valueOf(this.f6855p), Integer.valueOf(bVar.f59554i)) && this.f6856q == bVar.f59555j && this.f6857r == bVar.f59556k && this.f6858s == bVar2.f40940a && this.f6859t == bVar2.f40941b && this.f6860u == i13 && this.f6862w == bVar2.f40943d && this.f6861v == bVar2.f40944e && l0.c(this.f6845f.getTypeface(), bVar2.f40945f) && this.f6863x == f10 && this.f6864y == f11 && this.f6865z == f12 && this.A == i9 && this.B == i10 && this.C == i11 && this.D == i12) {
            d(canvas, z10);
            return;
        }
        this.f6848i = bVar.f59546a;
        this.f6849j = bVar.f59547b;
        this.f6850k = bVar.f59549d;
        this.f6851l = bVar.f59550e;
        this.f6852m = bVar.f59551f;
        this.f6853n = bVar.f59552g;
        this.f6854o = bVar.f59553h;
        this.f6855p = bVar.f59554i;
        this.f6856q = bVar.f59555j;
        this.f6857r = bVar.f59556k;
        this.f6858s = bVar2.f40940a;
        this.f6859t = bVar2.f40941b;
        this.f6860u = i13;
        this.f6862w = bVar2.f40943d;
        this.f6861v = bVar2.f40944e;
        this.f6845f.setTypeface(bVar2.f40945f);
        this.f6863x = f10;
        this.f6864y = f11;
        this.f6865z = f12;
        this.A = i9;
        this.B = i10;
        this.C = i11;
        this.D = i12;
        if (z10) {
            com.google.android.exoplayer2.util.a.e(this.f6848i);
            g();
        } else {
            com.google.android.exoplayer2.util.a.e(this.f6850k);
            f();
        }
        d(canvas, z10);
    }
}
