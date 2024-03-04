package jc;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import com.bumptech.glide.load.resource.bitmap.j;
import java.security.MessageDigest;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes4.dex */
public class d extends j {

    /* renamed from: c  reason: collision with root package name */
    private Paint f53203c;

    /* renamed from: d  reason: collision with root package name */
    private float f53204d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53205e;

    public d(float f10, int i9, boolean z10) {
        this.f53205e = z10;
        b(f10, i9);
    }

    private void b(float f10, int i9) {
        this.f53204d = f10;
        Paint paint = new Paint();
        this.f53203c = paint;
        paint.setDither(true);
        this.f53203c.setAntiAlias(true);
        this.f53203c.setColor(i9);
        this.f53203c.setStyle(Paint.Style.STROKE);
        this.f53203c.setStrokeWidth(this.f53204d);
    }

    public Bitmap a(g0.d dVar, Bitmap bitmap, int i9, int i10) {
        Bitmap transform = super.transform(dVar, bitmap, i9, i10);
        if (transform == null) {
            return null;
        }
        Bitmap d10 = dVar.d(transform.getWidth(), transform.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(d10);
        Paint paint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(transform, tileMode, tileMode));
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        float width = transform.getWidth() / 2.0f;
        if (this.f53204d > 0.0f) {
            canvas.drawCircle(width, width, width, paint);
            if (this.f53205e) {
                canvas.drawCircle(width, width, (width - (this.f53204d / 2.0f)) + 0.5f, this.f53203c);
            } else {
                canvas.drawCircle(width, width, width - (this.f53204d / 2.0f), this.f53203c);
            }
        } else {
            canvas.drawCircle(width, width, width, paint);
        }
        return d10;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, e0.b
    public boolean equals(Object obj) {
        return (obj instanceof d) && ((d) obj).f53204d == this.f53204d;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, e0.b
    public int hashCode() {
        return ("com.image.glide.transform.GlideCircleWithBorder3" + this.f53204d + "" + this.f53203c.getColor()).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.resource.bitmap.j, com.bumptech.glide.load.resource.bitmap.f
    public Bitmap transform(@NotNull g0.d dVar, @NotNull Bitmap bitmap, int i9, int i10) {
        return a(dVar, bitmap, i9, i10);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, e0.b
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("com.image.glide.transform.GlideCircleWithBorder3" + this.f53204d + "" + this.f53203c.getColor()).getBytes(e0.b.f38307a));
    }

    public d(float f10, int i9) {
        b(f10, i9);
    }
}
