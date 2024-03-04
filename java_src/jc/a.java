package jc;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.google.android.renderscript.Toolkit;
import java.security.MessageDigest;
/* loaded from: classes4.dex */
public class a extends gi.a {

    /* renamed from: d  reason: collision with root package name */
    private static int f53191d = 25;

    /* renamed from: e  reason: collision with root package name */
    private static int f53192e = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f53193b;

    /* renamed from: c  reason: collision with root package name */
    private int f53194c;

    public a() {
        this(f53191d, f53192e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gi.a
    public Bitmap a(@NonNull Context context, @NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i11 = this.f53194c;
        Bitmap d10 = dVar.d(width / i11, height / i11, Bitmap.Config.ARGB_8888);
        b(bitmap, d10);
        Canvas canvas = new Canvas(d10);
        int i12 = this.f53194c;
        canvas.scale(1.0f / i12, 1.0f / i12);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return Toolkit.INSTANCE.blur(d10, this.f53193b);
    }

    void b(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2) {
        bitmap2.setDensity(bitmap.getDensity());
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.f53193b == this.f53193b && aVar.f53194c == this.f53194c) {
                return true;
            }
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return (-1650726625) + (this.f53193b * 1000) + (this.f53194c * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.f53193b + ", sampling=" + this.f53194c + ")";
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(("com.image.glide.transform.BlurTransformation.2" + this.f53193b + this.f53194c).getBytes(e0.b.f38307a));
    }

    public a(int i9) {
        this(i9, f53192e);
    }

    public a(int i9, int i10) {
        this.f53193b = i9;
        this.f53194c = i10;
    }
}
