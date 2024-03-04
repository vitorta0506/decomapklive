package com.google.android.gms.internal.play_billing;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n extends zzp {

    /* renamed from: a  reason: collision with root package name */
    final transient int f8474a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f8475b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzp f8476c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(zzp zzpVar, int i9, int i10) {
        this.f8476c = zzpVar;
        this.f8474a = i9;
        this.f8475b = i10;
    }

    @Override // java.util.List
    public final Object get(int i9) {
        j.a(i9, this.f8475b, "index");
        return this.f8476c.get(i9 + this.f8474a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8475b;
    }

    @Override // com.google.android.gms.internal.play_billing.zzp, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i9, int i10) {
        return subList(i9, i10);
    }

    @Override // com.google.android.gms.internal.play_billing.zzm
    final int zzb() {
        return this.f8476c.zzc() + this.f8474a + this.f8475b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzm
    public final int zzc() {
        return this.f8476c.zzc() + this.f8474a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzm
    public final Object[] zze() {
        return this.f8476c.zze();
    }

    @Override // com.google.android.gms.internal.play_billing.zzp
    public final zzp zzf(int i9, int i10) {
        j.c(i9, i10, this.f8475b);
        zzp zzpVar = this.f8476c;
        int i11 = this.f8474a;
        return zzpVar.subList(i9 + i11, i10 + i11);
    }
}
