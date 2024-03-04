package com.appsflyer.internal;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class AFe1vSDK extends AFa1tSDK {
    @Nullable
    public final AFc1lSDK getLevel;

    @Deprecated
    public AFe1vSDK() {
        this.getLevel = null;
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFc1lSDK AFInAppEventParameterName() {
        AFc1lSDK aFc1lSDK = this.getLevel;
        return aFc1lSDK != null ? aFc1lSDK : AFc1lSDK.CACHED_EVENT;
    }

    public AFe1vSDK(String str, byte[] bArr, String str2, @Nullable AFc1lSDK aFc1lSDK) {
        super(null, str, Boolean.FALSE, null);
        this.afDebugLog = str2;
        valueOf(bArr);
        this.getLevel = aFc1lSDK;
    }
}
