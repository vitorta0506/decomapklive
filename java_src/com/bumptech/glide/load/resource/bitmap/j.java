package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class j extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f4520b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(e0.b.f38307a);

    @Override // e0.b
    public boolean equals(Object obj) {
        return obj instanceof j;
    }

    @Override // e0.b
    public int hashCode() {
        return -599754482;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.resource.bitmap.f
    public Bitmap transform(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        return a0.b(dVar, bitmap, i9, i10);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4520b);
    }
}
