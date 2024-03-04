package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes.dex */
final class w implements e0.b {

    /* renamed from: j  reason: collision with root package name */
    private static final v0.g<Class<?>, byte[]> f4448j = new v0.g<>(50);

    /* renamed from: b  reason: collision with root package name */
    private final g0.b f4449b;

    /* renamed from: c  reason: collision with root package name */
    private final e0.b f4450c;

    /* renamed from: d  reason: collision with root package name */
    private final e0.b f4451d;

    /* renamed from: e  reason: collision with root package name */
    private final int f4452e;

    /* renamed from: f  reason: collision with root package name */
    private final int f4453f;

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f4454g;

    /* renamed from: h  reason: collision with root package name */
    private final e0.e f4455h;

    /* renamed from: i  reason: collision with root package name */
    private final e0.h<?> f4456i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(g0.b bVar, e0.b bVar2, e0.b bVar3, int i9, int i10, e0.h<?> hVar, Class<?> cls, e0.e eVar) {
        this.f4449b = bVar;
        this.f4450c = bVar2;
        this.f4451d = bVar3;
        this.f4452e = i9;
        this.f4453f = i10;
        this.f4456i = hVar;
        this.f4454g = cls;
        this.f4455h = eVar;
    }

    private byte[] a() {
        v0.g<Class<?>, byte[]> gVar = f4448j;
        byte[] g10 = gVar.g(this.f4454g);
        if (g10 == null) {
            byte[] bytes = this.f4454g.getName().getBytes(e0.b.f38307a);
            gVar.k(this.f4454g, bytes);
            return bytes;
        }
        return g10;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof w) {
            w wVar = (w) obj;
            return this.f4453f == wVar.f4453f && this.f4452e == wVar.f4452e && v0.k.d(this.f4456i, wVar.f4456i) && this.f4454g.equals(wVar.f4454g) && this.f4450c.equals(wVar.f4450c) && this.f4451d.equals(wVar.f4451d) && this.f4455h.equals(wVar.f4455h);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        int hashCode = (((((this.f4450c.hashCode() * 31) + this.f4451d.hashCode()) * 31) + this.f4452e) * 31) + this.f4453f;
        e0.h<?> hVar = this.f4456i;
        if (hVar != null) {
            hashCode = (hashCode * 31) + hVar.hashCode();
        }
        return (((hashCode * 31) + this.f4454g.hashCode()) * 31) + this.f4455h.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f4450c + ", signature=" + this.f4451d + ", width=" + this.f4452e + ", height=" + this.f4453f + ", decodedResourceClass=" + this.f4454g + ", transformation='" + this.f4456i + "', options=" + this.f4455h + '}';
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f4449b.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f4452e).putInt(this.f4453f).array();
        this.f4451d.updateDiskCacheKey(messageDigest);
        this.f4450c.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        e0.h<?> hVar = this.f4456i;
        if (hVar != null) {
            hVar.updateDiskCacheKey(messageDigest);
        }
        this.f4455h.updateDiskCacheKey(messageDigest);
        messageDigest.update(a());
        this.f4449b.put(bArr);
    }
}
