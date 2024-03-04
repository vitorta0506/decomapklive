package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a8<T> extends zzjj<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f8490a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a8(T t10) {
        this.f8490a = t10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a8) {
            return this.f8490a.equals(((a8) obj).f8490a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8490a.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8490a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13);
        sb2.append("Optional.of(");
        sb2.append(valueOf);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.zzjj
    public final T zza() {
        return this.f8490a;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzjj
    public final T zzb() {
        return this.f8490a;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzjj
    public final boolean zzc() {
        return true;
    }
}
