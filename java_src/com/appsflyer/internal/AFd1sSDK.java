package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFd1sSDK extends AFc1hSDK<String> {
    private final Map<String, Object> afRDLog;

    public AFd1sSDK(@NonNull Map<String, Object> map, @NonNull AFc1ySDK aFc1ySDK) {
        super(AFc1lSDK.MONITORSDK, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, String.valueOf(map.hashCode()));
        this.afRDLog = new HashMap(map);
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<String> AFKeystoreWrapper(@NonNull String str) {
        return ((AFc1hSDK) this).AFLogger.AFKeystoreWrapper(this.afRDLog);
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    @Nullable
    protected final AppsFlyerRequestListener afErrorLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final boolean afRDLog() {
        return true;
    }
}
