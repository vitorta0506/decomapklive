package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o<E> extends zzp<E> {

    /* renamed from: b  reason: collision with root package name */
    static final zzp<Object> f8477b = new o(new Object[0], 0);

    /* renamed from: a  reason: collision with root package name */
    final transient Object[] f8478a;

    o(Object[] objArr, int i9) {
        this.f8478a = objArr;
    }

    @Override // java.util.List
    public final E get(int i9) {
        j.a(i9, 0, "index");
        return (E) this.f8478a[i9];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzp, com.google.android.gms.internal.play_billing.zzm
    final int zza(Object[] objArr, int i9) {
        System.arraycopy(this.f8478a, 0, objArr, 0, 0);
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzm
    final int zzb() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzm
    public final int zzc() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzm
    public final Object[] zze() {
        return this.f8478a;
    }
}
