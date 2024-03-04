package com.google.android.gms.internal.recaptcha;

import java.io.Serializable;
/* loaded from: classes2.dex */
public abstract class zzjj<T> implements Serializable {
    public static <T> zzjj<T> zzd() {
        return f7.f8668a;
    }

    public static <T> zzjj<T> zze(T t10) {
        return t10 == null ? f7.f8668a : new a8(t10);
    }

    public static <T> zzjj<T> zzf(T t10) {
        return new a8(t10);
    }

    public abstract T zza();

    public abstract T zzb();

    public abstract boolean zzc();
}
