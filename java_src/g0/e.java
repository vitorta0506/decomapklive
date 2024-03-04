package g0;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class e implements d {
    @Override // g0.d
    public void a(int i9) {
    }

    @Override // g0.d
    public void b() {
    }

    @Override // g0.d
    public void c(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // g0.d
    @NonNull
    public Bitmap d(int i9, int i10, Bitmap.Config config) {
        return Bitmap.createBitmap(i9, i10, config);
    }

    @Override // g0.d
    @NonNull
    public Bitmap e(int i9, int i10, Bitmap.Config config) {
        return d(i9, i10, config);
    }
}
