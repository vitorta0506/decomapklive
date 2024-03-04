package o0;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import v0.j;
/* loaded from: classes.dex */
public class b implements e<Bitmap, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f55459a;

    public b(@NonNull Resources resources) {
        this.f55459a = (Resources) j.d(resources);
    }

    @Override // o0.e
    @Nullable
    public u<BitmapDrawable> a(@NonNull u<Bitmap> uVar, @NonNull e0.e eVar) {
        return com.bumptech.glide.load.resource.bitmap.u.c(this.f55459a, uVar);
    }
}
