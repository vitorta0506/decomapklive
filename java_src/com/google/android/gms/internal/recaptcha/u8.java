package com.google.android.gms.internal.recaptcha;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class u8<K, V> {

    /* renamed from: a  reason: collision with root package name */
    Object[] f9083a = new Object[8];

    /* renamed from: b  reason: collision with root package name */
    int f9084b = 0;

    public final u8<K, V> a(K k10, V v10) {
        int i9 = this.f9084b + 1;
        int i10 = i9 + i9;
        Object[] objArr = this.f9083a;
        int length = objArr.length;
        if (i10 > length) {
            this.f9083a = Arrays.copyOf(objArr, p8.a(length, i10));
        }
        k8.a(k10, v10);
        Object[] objArr2 = this.f9083a;
        int i11 = this.f9084b;
        int i12 = i11 + i11;
        objArr2[i12] = k10;
        objArr2[i12 + 1] = v10;
        this.f9084b = i11 + 1;
        return this;
    }

    public final zzkl<K, V> b() {
        return e9.a(this.f9084b, this.f9083a);
    }
}
