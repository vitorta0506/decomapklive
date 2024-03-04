package jc;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes4.dex */
public class g extends com.bumptech.glide.load.resource.bitmap.f {
    @Override // e0.b
    public boolean equals(Object obj) {
        return obj instanceof g;
    }

    @Override // e0.b
    public int hashCode() {
        return -1336346852;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected Bitmap transform(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        Bitmap d10 = dVar.d(i9, i10, Bitmap.Config.ARGB_8888);
        Matrix matrix = new Matrix();
        float width = (i9 * 1.0f) / bitmap.getWidth();
        matrix.setScale(width, width);
        new Canvas(d10).drawBitmap(bitmap, matrix, new Paint());
        return d10;
    }

    @Override // e0.b
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update("com.image.glide.transform.ScaleTopTransform2".getBytes(e0.b.f38307a));
    }
}
