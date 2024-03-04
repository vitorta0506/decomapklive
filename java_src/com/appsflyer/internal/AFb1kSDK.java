package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.deeplink.DeepLink;
import com.appsflyer.deeplink.DeepLinkResult;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class AFb1kSDK {
    private static void AFInAppEventParameterName(Map<String, String> map) {
        if (AFa1aSDK.AFInAppEventType != null) {
            try {
                StringBuilder sb2 = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb2.append(map.toString());
                AFLogger.afDebugLog(sb2.toString());
                AFa1aSDK.AFInAppEventType.onAppOpenAttribution(map);
            } catch (Throwable th2) {
                AFLogger.afErrorLog(th2.getLocalizedMessage(), th2);
            }
        }
    }

    public static void AFInAppEventType(String str, DeepLinkResult.Error error) {
        if (AFa1uSDK.values().AFInAppEventType != null) {
            AFLogger.afDebugLog("[DDL] Error occurred: ".concat(String.valueOf(str)));
            AFInAppEventType(new DeepLinkResult(null, error));
            return;
        }
        AFInAppEventType(str);
    }

    public static void valueOf(Map<String, String> map) {
        DeepLinkResult deepLinkResult;
        if (AFa1uSDK.values().AFInAppEventType != null) {
            try {
                try {
                    DeepLink valueOf = DeepLink.valueOf(map);
                    valueOf.values.put("is_deferred", false);
                    deepLinkResult = new DeepLinkResult(valueOf, null);
                } catch (JSONException e10) {
                    AFLogger.afErrorLog("[DDL] Error occurred", e10, true);
                    deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
                }
                AFInAppEventType(deepLinkResult);
                return;
            } catch (Throwable th2) {
                AFInAppEventType(new DeepLinkResult(null, null));
                throw th2;
            }
        }
        AFInAppEventParameterName(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void AFInAppEventType(DeepLinkResult deepLinkResult) {
        if (AFa1uSDK.values().AFInAppEventType != null) {
            StringBuilder sb2 = new StringBuilder("[DDL] Calling onDeepLinking with:\n");
            sb2.append(deepLinkResult.toString());
            AFLogger.afDebugLog(sb2.toString());
            try {
                AFa1uSDK.values().AFInAppEventType.onDeepLinking(deepLinkResult);
                return;
            } catch (Throwable th2) {
                AFLogger.afErrorLog(th2.getLocalizedMessage(), th2);
                return;
            }
        }
        AFLogger.afDebugLog("[DDL] skipping, no callback registered");
    }

    private static void AFInAppEventType(String str) {
        if (AFa1aSDK.AFInAppEventType != null) {
            try {
                AFLogger.afDebugLog("Calling onAppOpenAttributionFailure with: ".concat(String.valueOf(str)));
                AFa1aSDK.AFInAppEventType.onAttributionFailure(str);
            } catch (Throwable th2) {
                AFLogger.afErrorLog(th2.getLocalizedMessage(), th2);
            }
        }
    }
}
