package o0;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.resource.gif.GifDrawable;
/* loaded from: classes.dex */
public final class c implements e<Drawable, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final g0.d f55460a;

    /* renamed from: b  reason: collision with root package name */
    private final e<Bitmap, byte[]> f55461b;

    /* renamed from: c  reason: collision with root package name */
    private final e<GifDrawable, byte[]> f55462c;

    public c(@NonNull g0.d dVar, @NonNull e<Bitmap, byte[]> eVar, @NonNull e<GifDrawable, byte[]> eVar2) {
        this.f55460a = dVar;
        this.f55461b = eVar;
        this.f55462c = eVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    private static u<GifDrawable> b(@NonNull u<Drawable> uVar) {
        return uVar;
    }

    @Override // o0.e
    @Nullable
    public u<byte[]> a(@NonNull u<Drawable> uVar, @NonNull e0.e eVar) {
        Drawable drawable = uVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f55461b.a(com.bumptech.glide.load.resource.bitmap.e.c(((BitmapDrawable) drawable).getBitmap(), this.f55460a), eVar);
        }
        if (drawable instanceof GifDrawable) {
            return this.f55462c.a(b(uVar), eVar);
        }
        return null;
    }
}
