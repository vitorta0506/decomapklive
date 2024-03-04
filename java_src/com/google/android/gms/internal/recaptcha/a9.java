package com.google.android.gms.internal.recaptcha;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes2.dex */
final class a9 extends zzkj<Map.Entry> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b9 f8491a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a9(b9 b9Var) {
        this.f8491a = b9Var;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        int i10;
        Object[] objArr;
        Object[] objArr2;
        i10 = this.f8491a.f8521c;
        z7.a(i9, i10, "index");
        objArr = this.f8491a.f8520b;
        int i11 = i9 + i9;
        Object obj = objArr[i11];
        objArr2 = this.f8491a.f8520b;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i11 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i9;
        i9 = this.f8491a.f8521c;
        return i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        return true;
    }
}
