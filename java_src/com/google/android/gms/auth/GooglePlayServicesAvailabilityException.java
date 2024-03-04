package com.google.android.gms.auth;

import android.content.Intent;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int zza;

    GooglePlayServicesAvailabilityException(int i9, @Nullable String str, @Nullable Intent intent) {
        super(str, intent);
        this.zza = i9;
    }

    public int getConnectionStatusCode() {
        return this.zza;
    }
}
