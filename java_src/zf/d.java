package zf;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* loaded from: classes5.dex */
public class d extends Drawable {

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f60443b;

    /* renamed from: d  reason: collision with root package name */
    private int f60445d;

    /* renamed from: e  reason: collision with root package name */
    private int f60446e;

    /* renamed from: a  reason: collision with root package name */
    private final Paint f60442a = new Paint(2);

    /* renamed from: c  reason: collision with root package name */
    private int f60444c = 255;

    public d(Bitmap bitmap) {
        b(bitmap);
    }

    public Bitmap a() {
        return this.f60443b;
    }

    public void b(Bitmap bitmap) {
        this.f60443b = bitmap;
        if (bitmap != null) {
            this.f60445d = bitmap.getWidth();
            this.f60446e = this.f60443b.getHeight();
            return;
        }
        this.f60446e = 0;
        this.f60445d = 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f60443b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f60443b, (Rect) null, getBounds(), this.f60442a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f60444c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f60446e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f60445d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f60446e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f60445d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.f60444c = i9;
        this.f60442a.setAlpha(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f60442a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f60442a.setFilterBitmap(z10);
    }
}
