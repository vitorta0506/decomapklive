package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class ah<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final zg<K, V> f8507a;

    /* renamed from: b  reason: collision with root package name */
    private final K f8508b;

    /* renamed from: c  reason: collision with root package name */
    private final V f8509c;

    private ah(zzuh zzuhVar, K k10, zzuh zzuhVar2, V v10) {
        this.f8507a = new zg<>(zzuhVar, k10, zzuhVar2, v10);
        this.f8508b = k10;
        this.f8509c = v10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int b(zg<K, V> zgVar, K k10, V v10) {
        return uf.a(zgVar.f9242a, 1, k10) + uf.a(zgVar.f9244c, 2, v10);
    }

    public static <K, V> ah<K, V> d(zzuh zzuhVar, K k10, zzuh zzuhVar2, V v10) {
        return new ah<>(zzuhVar, k10, zzuhVar2, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void e(hf hfVar, zg<K, V> zgVar, K k10, V v10) throws IOException {
        uf.e(hfVar, zgVar.f9242a, 1, k10);
        uf.e(hfVar, zgVar.f9244c, 2, v10);
    }

    public final int a(int i9, K k10, V v10) {
        int k11 = hf.k(i9);
        int b10 = b(this.f8507a, k10, v10);
        return k11 + hf.l(b10) + b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zg<K, V> c() {
        return this.f8507a;
    }
}
