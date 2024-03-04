package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f7<T> extends zzjj<T> {

    /* renamed from: a  reason: collision with root package name */
    static final f7<Object> f8668a = new f7<>();

    private f7() {
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

    @Override // com.google.android.gms.internal.recaptcha.zzjj
    public final T zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.recaptcha.zzjj
    public final T zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzjj
    public final boolean zzc() {
        return false;
    }
}
