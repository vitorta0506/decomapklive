package com.linecorp.android.security.encryption;

import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class EncryptionException extends RuntimeException {
    public EncryptionException(@Nullable String str) {
        super(str);
    }

    public EncryptionException(@Nullable Throwable th2) {
        super(th2);
    }

    public EncryptionException(@Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
    }
}
