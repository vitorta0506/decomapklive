package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public abstract class f implements e0.h<Bitmap> {
    protected abstract Bitmap transform(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10);

    @Override // e0.h
    @NonNull
    public final com.bumptech.glide.load.engine.u<Bitmap> transform(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.u<Bitmap> uVar, int i9, int i10) {
        if (v0.k.u(i9, i10)) {
            g0.d f10 = com.bumptech.glide.c.c(context).f();
            Bitmap bitmap = uVar.get();
            if (i9 == Integer.MIN_VALUE) {
                i9 = bitmap.getWidth();
            }
            if (i10 == Integer.MIN_VALUE) {
                i10 = bitmap.getHeight();
            }
            Bitmap transform = transform(f10, bitmap, i9, i10);
            return bitmap.equals(transform) ? uVar : e.c(transform, f10);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i9 + " or height: " + i10 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
