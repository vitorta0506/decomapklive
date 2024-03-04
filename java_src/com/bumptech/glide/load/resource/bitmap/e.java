package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class e implements com.bumptech.glide.load.engine.u<Bitmap>, com.bumptech.glide.load.engine.q {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f4516a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.d f4517b;

    public e(@NonNull Bitmap bitmap, @NonNull g0.d dVar) {
        this.f4516a = (Bitmap) v0.j.e(bitmap, "Bitmap must not be null");
        this.f4517b = (g0.d) v0.j.e(dVar, "BitmapPool must not be null");
    }

    @Nullable
    public static e c(@Nullable Bitmap bitmap, @NonNull g0.d dVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, dVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Bitmap> a() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public Bitmap get() {
        return this.f4516a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return v0.k.h(this.f4516a);
    }

    @Override // com.bumptech.glide.load.engine.q
    public void initialize() {
        this.f4516a.prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        this.f4517b.c(this.f4516a);
    }
}
