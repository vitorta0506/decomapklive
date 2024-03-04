package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class l extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f4522b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(e0.b.f38307a);

    @Override // e0.b
    public boolean equals(Object obj) {
        return obj instanceof l;
    }

    @Override // e0.b
    public int hashCode() {
        return 1101716364;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected Bitmap transform(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        return a0.d(dVar, bitmap, i9, i10);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4522b);
    }
}
