package ic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.h;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import java.io.File;
/* loaded from: classes4.dex */
public class d extends h {
    public d(@NonNull com.bumptech.glide.c cVar, @NonNull p0.e eVar, @NonNull p0.h hVar, @NonNull Context context) {
        super(cVar, eVar, hVar, context);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: A */
    public <ResourceType> c<ResourceType> a(@NonNull Class<ResourceType> cls) {
        return new c<>(this.f4188a, this, cls, this.f4189b);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: B */
    public c<Bitmap> b() {
        return (c) super.b();
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: C */
    public c<Drawable> c() {
        return (c) super.c();
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: D */
    public c<File> d() {
        return (c) super.d();
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: E */
    public c<GifDrawable> e() {
        return (c) super.e();
    }

    @NonNull
    @CheckResult
    public c<File> F(@Nullable Object obj) {
        return (c) super.h(obj);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: G */
    public c<File> i() {
        return (c) super.i();
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: H */
    public c<Drawable> m(@Nullable Drawable drawable) {
        return (c) super.m(drawable);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: I */
    public c<Drawable> n(@Nullable Uri uri) {
        return (c) super.n(uri);
    }

    @NonNull
    @CheckResult
    public c<Drawable> J(@Nullable File file) {
        return (c) super.o(file);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: K */
    public c<Drawable> p(@Nullable @DrawableRes @RawRes Integer num) {
        return (c) super.p(num);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: L */
    public c<Drawable> q(@Nullable Object obj) {
        return (c) super.q(obj);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: M */
    public c<Drawable> r(@Nullable String str) {
        return (c) super.r(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.h
    public void w(@NonNull com.bumptech.glide.request.h hVar) {
        if (hVar instanceof b) {
            super.w(hVar);
        } else {
            super.w(new b().a(hVar));
        }
    }
}
