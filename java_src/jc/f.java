package jc;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.tencent.bugly.BuglyStrategy;
import java.security.MessageDigest;
/* loaded from: classes4.dex */
public class f extends a {

    /* renamed from: f  reason: collision with root package name */
    private int f53207f;

    /* renamed from: g  reason: collision with root package name */
    private int f53208g;

    /* renamed from: h  reason: collision with root package name */
    public int f53209h;

    public f(int i9, int i10) {
        super(i9, i10);
        this.f53207f = Color.parseColor("#8f000000");
        this.f53208g = i9;
        this.f53209h = i10;
    }

    public static Bitmap c(Bitmap bitmap, g0.d dVar, int i9, int i10, int i11) {
        Bitmap d10 = dVar.d(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(d10);
        Paint paint = new Paint();
        paint.setColor(i11);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint());
        canvas.drawRect(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight(), paint);
        return d10;
    }

    @Override // jc.a, gi.a
    public Bitmap a(@NonNull Context context, @NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        return c(super.a(context, dVar, bitmap, i9, i10), dVar, i9, i10, this.f53207f);
    }

    @Override // jc.a, e0.b
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.f53208g == this.f53208g && fVar.f53209h == this.f53209h && this.f53207f == fVar.f53207f) {
                return true;
            }
        }
        return false;
    }

    @Override // jc.a, e0.b
    public int hashCode() {
        return 1413770578 + (this.f53208g * 1000) + (this.f53209h * 10) + (this.f53207f * BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
    }

    @Override // jc.a
    public String toString() {
        return super.toString() + "MaskBlurTransform(radius=" + this.f53208g + ", sampling=" + this.f53209h + ",color=" + this.f53207f + ")";
    }

    @Override // jc.a, e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(("com.image.glide.transform.MaskBlurTransform.2" + (this.f53208g * 1000) + (this.f53209h * 10) + (this.f53207f * 10000)).getBytes(e0.b.f38307a));
    }

    public f(int i9, int i10, @ColorInt int i11) {
        this(i9, i10);
        this.f53207f = i11;
    }
}
