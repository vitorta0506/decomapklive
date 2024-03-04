package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
final class l extends zzdh {

    /* renamed from: a  reason: collision with root package name */
    private final Object f7896a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Object obj) {
        this.f7896a = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof l) {
            return this.f7896a.equals(((l) obj).f7896a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7896a.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f7896a + ")";
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final Object zza() {
        return this.f7896a;
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final boolean zzb() {
        return true;
    }
}
