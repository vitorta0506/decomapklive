package com.snapchat.kit.sdk.core.security;

import android.util.Base64;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class InsecureEncryptDecrypt implements EncryptDecryptAlgorithm {
    @Override // com.snapchat.kit.sdk.core.security.EncryptDecryptAlgorithm
    public String decrypt(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return new String(Base64.decode(str, 0));
    }

    @Override // com.snapchat.kit.sdk.core.security.EncryptDecryptAlgorithm
    public String encrypt(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.encodeToString(str.getBytes(), 0);
    }
}
