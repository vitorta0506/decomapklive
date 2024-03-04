package com.google.android.gms.internal.common;

import org.jspecify.nullness.NullMarked;
/* JADX INFO: Access modifiers changed from: package-private */
@NullMarked
/* loaded from: classes2.dex */
public final class h extends zzag {

    /* renamed from: c  reason: collision with root package name */
    static final zzag f7924c = new h(new Object[0], 0);

    /* renamed from: a  reason: collision with root package name */
    final transient Object[] f7925a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f7926b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Object[] objArr, int i9) {
        this.f7925a = objArr;
        this.f7926b = i9;
    }

    @Override // java.util.List
    public final Object get(int i9) {
        q.a(i9, this.f7926b, "index");
        Object obj = this.f7925a[i9];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7926b;
    }

    @Override // com.google.android.gms.internal.common.zzag, com.google.android.gms.internal.common.zzac
    final int zza(Object[] objArr, int i9) {
        System.arraycopy(this.f7925a, 0, objArr, 0, this.f7926b);
        return this.f7926b;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzb() {
        return this.f7926b;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final Object[] zzg() {
        return this.f7925a;
    }
}
