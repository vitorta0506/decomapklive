package com.google.android.gms.internal.recaptcha;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t8 extends zzkj {

    /* renamed from: a  reason: collision with root package name */
    final transient int f9065a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f9066b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzkj f9067c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t8(zzkj zzkjVar, int i9, int i10) {
        this.f9067c = zzkjVar;
        this.f9065a = i9;
        this.f9066b = i10;
    }

    @Override // java.util.List
    public final Object get(int i9) {
        z7.a(i9, this.f9066b, "index");
        return this.f9067c.get(i9 + this.f9065a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9066b;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i9, int i10) {
        return subList(i9, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    final int zzb() {
        return this.f9067c.zzc() + this.f9065a + this.f9066b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zzc() {
        return this.f9067c.zzc() + this.f9065a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final Object[] zzg() {
        return this.f9067c.zzg();
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj
    public final zzkj zzi(int i9, int i10) {
        z7.h(i9, i10, this.f9066b);
        zzkj zzkjVar = this.f9067c;
        int i11 = this.f9065a;
        return zzkjVar.subList(i9 + i11, i10 + i11);
    }
}
