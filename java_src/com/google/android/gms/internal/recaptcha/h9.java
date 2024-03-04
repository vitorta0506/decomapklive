package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h9<E> extends zzkn<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f8729a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f8730b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h9(E e10) {
        Objects.requireNonNull(e10);
        this.f8729a = e10;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f8729a.equals(obj);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i9 = this.f8730b;
        if (i9 == 0) {
            int hashCode = this.f8729a.hashCode();
            this.f8730b = hashCode;
            return hashCode;
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new x8(this.f8729a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f8729a.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2);
        sb2.append('[');
        sb2.append(obj);
        sb2.append(']');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zza(Object[] objArr, int i9) {
        objArr[0] = this.f8729a;
        return 1;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke
    public final j9<E> zze() {
        return new x8(this.f8729a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn
    final zzkj<E> zzi() {
        return zzkj.zzp(this.f8729a);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn
    final boolean zzm() {
        return this.f8730b != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h9(E e10, int i9) {
        this.f8729a = e10;
        this.f8730b = i9;
    }
}
