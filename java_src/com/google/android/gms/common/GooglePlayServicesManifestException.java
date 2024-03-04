package com.google.android.gms.common;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;
@KeepName
/* loaded from: classes2.dex */
public class GooglePlayServicesManifestException extends IllegalStateException {
    private final int zza;

    public GooglePlayServicesManifestException(int i9, @NonNull String str) {
        super(str);
        this.zza = i9;
    }

    public int getActualVersion() {
        return this.zza;
    }

    public int getExpectedVersion() {
        return b.f7623a;
    }
}
