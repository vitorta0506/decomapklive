package gi;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.a0;
import g0.d;
import java.security.MessageDigest;
@Deprecated
/* loaded from: classes7.dex */
public class b extends a {
    @Override // gi.a
    protected Bitmap a(@NonNull Context context, @NonNull d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        return a0.d(dVar, bitmap, i9, i10);
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        return obj instanceof b;
    }

    @Override // e0.b
    public int hashCode() {
        return 1288474723;
    }

    public String toString() {
        return "CropCircleTransformation()";
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update("jp.wasabeef.glide.transformations.CropCircleTransformation.1".getBytes(e0.b.f38307a));
    }
}
