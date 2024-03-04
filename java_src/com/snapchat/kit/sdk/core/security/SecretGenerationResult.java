package com.snapchat.kit.sdk.core.security;

import androidx.annotation.NonNull;
import javax.crypto.SecretKey;
/* loaded from: classes4.dex */
public class SecretGenerationResult {
    private final boolean mIsNewSecret;
    private final SecretKey mSecretKey;

    public SecretGenerationResult(@NonNull SecretKey secretKey, boolean z10) {
        this.mSecretKey = secretKey;
        this.mIsNewSecret = z10;
    }

    @NonNull
    public SecretKey getSecretKey() {
        return this.mSecretKey;
    }

    public boolean isNewSecret() {
        return this.mIsNewSecret;
    }
}
