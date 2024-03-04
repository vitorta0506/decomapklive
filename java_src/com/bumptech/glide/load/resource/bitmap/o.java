package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class o implements e0.h<Drawable> {

    /* renamed from: b  reason: collision with root package name */
    private final e0.h<Bitmap> f4538b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4539c;

    public o(e0.h<Bitmap> hVar, boolean z10) {
        this.f4538b = hVar;
        this.f4539c = z10;
    }

    private com.bumptech.glide.load.engine.u<Drawable> b(Context context, com.bumptech.glide.load.engine.u<Bitmap> uVar) {
        return u.c(context.getResources(), uVar);
    }

    public e0.h<BitmapDrawable> a() {
        return this;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f4538b.equals(((o) obj).f4538b);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return this.f4538b.hashCode();
    }

    @Override // e0.h
    @NonNull
    public com.bumptech.glide.load.engine.u<Drawable> transform(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.u<Drawable> uVar, int i9, int i10) {
        g0.d f10 = com.bumptech.glide.c.c(context).f();
        Drawable drawable = uVar.get();
        com.bumptech.glide.load.engine.u<Bitmap> a10 = n.a(f10, drawable, i9, i10);
        if (a10 == null) {
            if (this.f4539c) {
                throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
            }
            return uVar;
        }
        com.bumptech.glide.load.engine.u<Bitmap> transform = this.f4538b.transform(context, a10, i9, i10);
        if (transform.equals(a10)) {
            transform.recycle();
            return uVar;
        }
        return b(context, transform);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f4538b.updateDiskCacheKey(messageDigest);
    }
}
