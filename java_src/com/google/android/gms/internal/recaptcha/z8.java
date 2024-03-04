package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z8<E> extends zzkj<E> {

    /* renamed from: c  reason: collision with root package name */
    static final zzkj<Object> f9228c = new z8(new Object[0], 0);

    /* renamed from: a  reason: collision with root package name */
    final transient Object[] f9229a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f9230b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z8(Object[] objArr, int i9) {
        this.f9229a = objArr;
        this.f9230b = i9;
    }

    @Override // java.util.List
    public final E get(int i9) {
        z7.a(i9, this.f9230b, "index");
        E e10 = (E) this.f9229a[i9];
        e10.getClass();
        return e10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9230b;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj, com.google.android.gms.internal.recaptcha.zzke
    final int zza(Object[] objArr, int i9) {
        System.arraycopy(this.f9229a, 0, objArr, 0, this.f9230b);
        return this.f9230b;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    final int zzb() {
        return this.f9230b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zzc() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final Object[] zzg() {
        return this.f9229a;
    }
}
