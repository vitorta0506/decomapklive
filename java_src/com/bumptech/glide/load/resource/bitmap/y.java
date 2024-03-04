package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class y extends f {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f4573c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(e0.b.f38307a);

    /* renamed from: b  reason: collision with root package name */
    private final int f4574b;

    public y(int i9) {
        v0.j.a(i9 > 0, "roundingRadius must be greater than 0.");
        this.f4574b = i9;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        return (obj instanceof y) && this.f4574b == ((y) obj).f4574b;
    }

    @Override // e0.b
    public int hashCode() {
        return v0.k.o(-569625254, v0.k.n(this.f4574b));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected Bitmap transform(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        return a0.o(dVar, bitmap, this.f4574b);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4573c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f4574b).array());
    }
}
