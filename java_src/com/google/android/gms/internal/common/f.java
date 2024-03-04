package com.google.android.gms.internal.common;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f extends zzag {

    /* renamed from: a  reason: collision with root package name */
    final transient int f7921a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f7922b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzag f7923c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(zzag zzagVar, int i9, int i10) {
        this.f7923c = zzagVar;
        this.f7921a = i9;
        this.f7922b = i10;
    }

    @Override // java.util.List
    public final Object get(int i9) {
        q.a(i9, this.f7922b, "index");
        return this.f7923c.get(i9 + this.f7921a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7922b;
    }

    @Override // com.google.android.gms.internal.common.zzag, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i9, int i10) {
        return subList(i9, i10);
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzb() {
        return this.f7923c.zzc() + this.f7921a + this.f7922b;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzc() {
        return this.f7923c.zzc() + this.f7921a;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final Object[] zzg() {
        return this.f7923c.zzg();
    }

    @Override // com.google.android.gms.internal.common.zzag
    public final zzag zzh(int i9, int i10) {
        q.c(i9, i10, this.f7922b);
        zzag zzagVar = this.f7923c;
        int i11 = this.f7921a;
        return zzagVar.subList(i9 + i11, i10 + i11);
    }
}
