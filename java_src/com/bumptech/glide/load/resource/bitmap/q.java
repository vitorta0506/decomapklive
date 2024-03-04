package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class q extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f4540b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(e0.b.f38307a);

    @Override // e0.b
    public boolean equals(Object obj) {
        return obj instanceof q;
    }

    @Override // e0.b
    public int hashCode() {
        return 1572326941;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected Bitmap transform(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        return a0.f(dVar, bitmap, i9, i10);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4540b);
    }
}
