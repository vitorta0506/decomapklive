package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class u implements com.bumptech.glide.load.engine.u<BitmapDrawable>, com.bumptech.glide.load.engine.q {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f4562a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.u<Bitmap> f4563b;

    private u(@NonNull Resources resources, @NonNull com.bumptech.glide.load.engine.u<Bitmap> uVar) {
        this.f4562a = (Resources) v0.j.d(resources);
        this.f4563b = (com.bumptech.glide.load.engine.u) v0.j.d(uVar);
    }

    @Nullable
    public static com.bumptech.glide.load.engine.u<BitmapDrawable> c(@NonNull Resources resources, @Nullable com.bumptech.glide.load.engine.u<Bitmap> uVar) {
        if (uVar == null) {
            return null;
        }
        return new u(resources, uVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f4562a, this.f4563b.get());
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f4563b.getSize();
    }

    @Override // com.bumptech.glide.load.engine.q
    public void initialize() {
        com.bumptech.glide.load.engine.u<Bitmap> uVar = this.f4563b;
        if (uVar instanceof com.bumptech.glide.load.engine.q) {
            ((com.bumptech.glide.load.engine.q) uVar).initialize();
        }
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        this.f4563b.recycle();
    }
}
