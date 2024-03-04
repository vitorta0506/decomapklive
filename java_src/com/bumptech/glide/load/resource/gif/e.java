package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import java.security.MessageDigest;
import v0.j;
/* loaded from: classes.dex */
public class e implements e0.h<GifDrawable> {

    /* renamed from: b  reason: collision with root package name */
    private final e0.h<Bitmap> f4602b;

    public e(e0.h<Bitmap> hVar) {
        this.f4602b = (e0.h) j.d(hVar);
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f4602b.equals(((e) obj).f4602b);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return this.f4602b.hashCode();
    }

    @Override // e0.h
    @NonNull
    public u<GifDrawable> transform(@NonNull Context context, @NonNull u<GifDrawable> uVar, int i9, int i10) {
        GifDrawable gifDrawable = uVar.get();
        u<Bitmap> eVar = new com.bumptech.glide.load.resource.bitmap.e(gifDrawable.e(), com.bumptech.glide.c.c(context).f());
        u<Bitmap> transform = this.f4602b.transform(context, eVar, i9, i10);
        if (!eVar.equals(transform)) {
            eVar.recycle();
        }
        gifDrawable.m(this.f4602b, transform.get());
        return uVar;
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f4602b.updateDiskCacheKey(messageDigest);
    }
}
