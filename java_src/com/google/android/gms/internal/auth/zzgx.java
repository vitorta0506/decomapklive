package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
public final class zzgx extends RuntimeException {
    public zzgx(b0 b0Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzfa zza() {
        return new zzfa(getMessage());
    }
}
