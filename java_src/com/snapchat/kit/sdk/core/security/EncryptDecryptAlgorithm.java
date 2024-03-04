package com.snapchat.kit.sdk.core.security;

import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public interface EncryptDecryptAlgorithm {
    @Nullable
    String decrypt(@Nullable String str);

    @Nullable
    String encrypt(@Nullable String str);
}
