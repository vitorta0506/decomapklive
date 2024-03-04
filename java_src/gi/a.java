package gi;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.c;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.resource.bitmap.e;
import e0.h;
import g0.d;
import v0.k;
/* loaded from: classes7.dex */
public abstract class a implements h<Bitmap> {
    protected abstract Bitmap a(@NonNull Context context, @NonNull d dVar, @NonNull Bitmap bitmap, int i9, int i10);

    @Override // e0.h
    @NonNull
    public final u<Bitmap> transform(@NonNull Context context, @NonNull u<Bitmap> uVar, int i9, int i10) {
        if (k.u(i9, i10)) {
            d f10 = c.c(context).f();
            Bitmap bitmap = uVar.get();
            if (i9 == Integer.MIN_VALUE) {
                i9 = bitmap.getWidth();
            }
            int i11 = i9;
            if (i10 == Integer.MIN_VALUE) {
                i10 = bitmap.getHeight();
            }
            Bitmap a10 = a(context.getApplicationContext(), f10, bitmap, i11, i10);
            return bitmap.equals(a10) ? uVar : e.c(a10, f10);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i9 + " or height: " + i10 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
