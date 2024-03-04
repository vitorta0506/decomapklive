package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
final class b9<K, V> extends zzkn<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private final transient zzkl<K, V> f8519a;

    /* renamed from: b  reason: collision with root package name */
    private final transient Object[] f8520b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f8521c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b9(zzkl<K, V> zzklVar, Object[] objArr, int i9, int i10) {
        this.f8519a = zzklVar;
        this.f8520b = objArr;
        this.f8521c = i10;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f8519a.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8521c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zza(Object[] objArr, int i9) {
        return zzd().zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke
    public final j9<Map.Entry<K, V>> zze() {
        return zzd().listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn
    final zzkj<Map.Entry<K, V>> zzi() {
        return new a9(this);
    }
}
