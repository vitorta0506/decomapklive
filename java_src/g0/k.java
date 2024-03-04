package g0;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
interface k {
    String a(Bitmap bitmap);

    String b(int i9, int i10, Bitmap.Config config);

    void c(Bitmap bitmap);

    @Nullable
    Bitmap d(int i9, int i10, Bitmap.Config config);

    int e(Bitmap bitmap);

    @Nullable
    Bitmap removeLast();
}
