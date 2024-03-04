package jc;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.j;
import com.guochao.faceshow.utils.DensityUtil;
import java.security.MessageDigest;
import java.util.Objects;
/* loaded from: classes4.dex */
public class e extends j {

    /* renamed from: c  reason: collision with root package name */
    private float f53206c;

    public e(Context context, int i9) {
        this.f53206c = 0.0f;
        this.f53206c = DensityUtil.dp2px(i9);
    }

    private Bitmap b(g0.d dVar, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap d10 = dVar.d(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        if (d10 == null) {
            d10 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(d10);
        Paint paint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        paint.setAntiAlias(true);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        float f10 = this.f53206c;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        return d10;
    }

    public String a() {
        return getClass().getName() + Math.round(this.f53206c);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, e0.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && Float.compare(((e) obj).f53206c, this.f53206c) == 0;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, e0.b
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Float.valueOf(this.f53206c));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, com.bumptech.glide.load.resource.bitmap.f
    public Bitmap transform(g0.d dVar, Bitmap bitmap, int i9, int i10) {
        return b(dVar, super.transform(dVar, bitmap, i9, i10));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.j, e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((a() + this.f53206c).getBytes());
    }
}
