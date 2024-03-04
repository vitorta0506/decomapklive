package com.guochao.faceshow.aaspring.views;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.core.view.ViewCompat;
/* loaded from: classes3.dex */
public class e extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f24362a;

    /* renamed from: b  reason: collision with root package name */
    private final int f24363b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f24364c;

    /* renamed from: d  reason: collision with root package name */
    private float f24365d;

    /* renamed from: e  reason: collision with root package name */
    private Rect f24366e;

    /* renamed from: f  reason: collision with root package name */
    private RectF f24367f;

    public e(Bitmap bitmap, int i9) {
        this.f24363b = i9;
        Bitmap createBitmap = Bitmap.createBitmap(i9, i9, Bitmap.Config.ARGB_8888);
        this.f24362a = createBitmap;
        Canvas canvas = new Canvas(createBitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height);
        Rect rect = new Rect((width - min) / 2, (height - min) / 2, min, min);
        RectF rectF = new RectF(0.0f, 0.0f, i9, i9);
        Path path = new Path();
        path.addArc(rectF, 0.0f, 360.0f);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        Paint paint = new Paint();
        this.f24364c = paint;
        paint.setAntiAlias(true);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawPath(path, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rectF, paint);
        paint.setXfermode(null);
        this.f24365d = 1.0f;
        this.f24366e = new Rect(0, 0, i9, i9);
        this.f24367f = new RectF(0.0f, 0.0f, i9, i9);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f10 = this.f24365d;
        int i9 = this.f24363b;
        float f11 = (i9 - (f10 * i9)) / 2.0f;
        this.f24367f.set(f11, f11, i9 - f11, i9 - f11);
        canvas.drawBitmap(this.f24362a, this.f24366e, this.f24367f, (Paint) null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f24363b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f24363b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
