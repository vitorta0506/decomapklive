package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes.dex */
final class d implements e0.b {

    /* renamed from: b  reason: collision with root package name */
    private final e0.b f4271b;

    /* renamed from: c  reason: collision with root package name */
    private final e0.b f4272c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(e0.b bVar, e0.b bVar2) {
        this.f4271b = bVar;
        this.f4272c = bVar2;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f4271b.equals(dVar.f4271b) && this.f4272c.equals(dVar.f4272c);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return (this.f4271b.hashCode() * 31) + this.f4272c.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f4271b + ", signature=" + this.f4272c + '}';
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f4271b.updateDiskCacheKey(messageDigest);
        this.f4272c.updateDiskCacheKey(messageDigest);
    }
}
