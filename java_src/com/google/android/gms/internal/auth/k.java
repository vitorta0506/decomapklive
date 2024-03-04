package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
final class k extends zzdh {

    /* renamed from: a  reason: collision with root package name */
    static final k f7894a = new k();

    private k() {
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final Object zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final boolean zzb() {
        return false;
    }
}
