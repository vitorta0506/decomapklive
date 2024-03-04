package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class b7 extends zzif {

    /* renamed from: a  reason: collision with root package name */
    private final Object f7957a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b7(Object obj) {
        this.f7957a = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b7) {
            return this.f7957a.equals(((b7) obj).f7957a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7957a.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f7957a + ")";
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final Object zza() {
        return this.f7957a;
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final boolean zzb() {
        return true;
    }
}
