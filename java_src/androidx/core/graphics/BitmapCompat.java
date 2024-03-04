package androidx.core.graphics;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class BitmapCompat {
    private BitmapCompat() {
    }

    public static int getAllocationByteCount(@NonNull Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    public static boolean hasMipMap(@NonNull Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    public static void setHasMipMap(@NonNull Bitmap bitmap, boolean z10) {
        bitmap.setHasMipMap(z10);
    }
}
