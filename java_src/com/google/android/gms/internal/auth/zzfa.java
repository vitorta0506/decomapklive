package com.google.android.gms.internal.auth;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzfa extends IOException {
    private b0 zza;

    public zzfa(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.zza = null;
    }

    static zzfa zza() {
        return new zzfa("Protocol message contained an invalid tag (zero).");
    }

    static zzfa zzb() {
        return new zzfa("Protocol message had invalid UTF-8.");
    }

    static zzfa zzc() {
        return new zzfa("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzfa zzd() {
        return new zzfa("Failed to parse the message.");
    }

    static zzfa zzf() {
        return new zzfa("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzfa zze(b0 b0Var) {
        this.zza = b0Var;
        return this;
    }

    public zzfa(String str) {
        super(str);
        this.zza = null;
    }
}
