package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFd1hSDK {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void AFInAppEventType(Map<String, Object> map) {
        if (AFa1aSDK.AFInAppEventType != null) {
            StringBuilder sb2 = new StringBuilder("[GCD-A02] Calling onConversionDataSuccess with:\n");
            sb2.append(map.toString());
            AFLogger.afDebugLog(sb2.toString());
            AFa1aSDK.AFInAppEventType.onConversionDataSuccess(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void values(String str) {
        if (AFa1aSDK.AFInAppEventType != null) {
            AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(String.valueOf(str)));
            AFa1aSDK.AFInAppEventType.onConversionDataFail(str);
        }
    }
}
