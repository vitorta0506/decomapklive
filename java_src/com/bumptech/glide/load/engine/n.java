package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;
/* loaded from: classes.dex */
class n implements e0.b {

    /* renamed from: b  reason: collision with root package name */
    private final Object f4411b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4412c;

    /* renamed from: d  reason: collision with root package name */
    private final int f4413d;

    /* renamed from: e  reason: collision with root package name */
    private final Class<?> f4414e;

    /* renamed from: f  reason: collision with root package name */
    private final Class<?> f4415f;

    /* renamed from: g  reason: collision with root package name */
    private final e0.b f4416g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, e0.h<?>> f4417h;

    /* renamed from: i  reason: collision with root package name */
    private final e0.e f4418i;

    /* renamed from: j  reason: collision with root package name */
    private int f4419j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Object obj, e0.b bVar, int i9, int i10, Map<Class<?>, e0.h<?>> map, Class<?> cls, Class<?> cls2, e0.e eVar) {
        this.f4411b = v0.j.d(obj);
        this.f4416g = (e0.b) v0.j.e(bVar, "Signature must not be null");
        this.f4412c = i9;
        this.f4413d = i10;
        this.f4417h = (Map) v0.j.d(map);
        this.f4414e = (Class) v0.j.e(cls, "Resource class must not be null");
        this.f4415f = (Class) v0.j.e(cls2, "Transcode class must not be null");
        this.f4418i = (e0.e) v0.j.d(eVar);
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            return this.f4411b.equals(nVar.f4411b) && this.f4416g.equals(nVar.f4416g) && this.f4413d == nVar.f4413d && this.f4412c == nVar.f4412c && this.f4417h.equals(nVar.f4417h) && this.f4414e.equals(nVar.f4414e) && this.f4415f.equals(nVar.f4415f) && this.f4418i.equals(nVar.f4418i);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        if (this.f4419j == 0) {
            int hashCode = this.f4411b.hashCode();
            this.f4419j = hashCode;
            int hashCode2 = (((((hashCode * 31) + this.f4416g.hashCode()) * 31) + this.f4412c) * 31) + this.f4413d;
            this.f4419j = hashCode2;
            int hashCode3 = (hashCode2 * 31) + this.f4417h.hashCode();
            this.f4419j = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f4414e.hashCode();
            this.f4419j = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f4415f.hashCode();
            this.f4419j = hashCode5;
            this.f4419j = (hashCode5 * 31) + this.f4418i.hashCode();
        }
        return this.f4419j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f4411b + ", width=" + this.f4412c + ", height=" + this.f4413d + ", resourceClass=" + this.f4414e + ", transcodeClass=" + this.f4415f + ", signature=" + this.f4416g + ", hashCode=" + this.f4419j + ", transformations=" + this.f4417h + ", options=" + this.f4418i + '}';
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
