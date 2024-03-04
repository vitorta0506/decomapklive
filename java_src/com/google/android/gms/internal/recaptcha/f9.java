package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f9<E> extends zzkn<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final Object[] f8672f;

    /* renamed from: g  reason: collision with root package name */
    static final f9<Object> f8673g;

    /* renamed from: a  reason: collision with root package name */
    final transient Object[] f8674a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f8675b;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f8676c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f8677d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f8678e;

    static {
        Object[] objArr = new Object[0];
        f8672f = objArr;
        f8673g = new f9<>(objArr, 0, objArr, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f9(Object[] objArr, int i9, Object[] objArr2, int i10, int i11) {
        this.f8674a = objArr;
        this.f8675b = i9;
        this.f8676c = objArr2;
        this.f8677d = i10;
        this.f8678e = i11;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object[] objArr = this.f8676c;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int a10 = n8.a(obj.hashCode());
        while (true) {
            int i9 = a10 & this.f8677d;
            Object obj2 = objArr[i9];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a10 = i9 + 1;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8675b;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8678e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zza(Object[] objArr, int i9) {
        System.arraycopy(this.f8674a, 0, objArr, 0, this.f8678e);
        return this.f8678e;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    final int zzb() {
        return this.f8678e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke
    public final j9<E> zze() {
        return zzd().listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final Object[] zzg() {
        return this.f8674a;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn
    final zzkj<E> zzi() {
        return zzkj.zzl(this.f8674a, this.f8678e);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn
    final boolean zzm() {
        return true;
    }
}
