package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.PurchaseHandler;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFc1dSDK extends AFc1eSDK {
    public AFc1dSDK(@NonNull Map<String, Object> map, @Nullable PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback, @NonNull AFc1ySDK aFc1ySDK) {
        super(AFc1lSDK.ARS_VALIDATE, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, null, map, purchaseValidationCallback);
        this.valueOf.add(AFc1lSDK.CONVERSION);
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<String> AFKeystoreWrapper(@NonNull String str) {
        return ((AFc1hSDK) this).AFLogger.AFKeystoreWrapper(init(), str);
    }
}
