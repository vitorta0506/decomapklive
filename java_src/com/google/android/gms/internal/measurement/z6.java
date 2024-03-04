package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class z6 extends zzif {

    /* renamed from: a  reason: collision with root package name */
    static final z6 f8463a = new z6();

    private z6() {
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

    @Override // com.google.android.gms.internal.measurement.zzif
    public final Object zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final boolean zzb() {
        return false;
    }
}
