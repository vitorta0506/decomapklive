package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class AFd1gSDK extends AFc1nSDK<Void> {
    @Nullable
    private final AFc1pSDK<String> afDebugLog;
    private final AFd1oSDK afErrorLog;
    @Nullable
    private final Throwable afInfoLog;

    public AFd1gSDK(AFd1wSDK aFd1wSDK, AFd1oSDK aFd1oSDK) {
        super(AFc1lSDK.GCDSDK, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, "GCD-CHECK");
        this.afInfoLog = aFd1wSDK.afInfoLog();
        this.afDebugLog = aFd1wSDK.afDebugLog;
        this.afErrorLog = aFd1oSDK;
    }

    @Nullable
    private Map<String, Object> afRDLog() {
        String AFInAppEventType = this.afErrorLog.AFInAppEventType("attributionId", null);
        if (AFInAppEventType == null) {
            return null;
        }
        try {
            return AFc1zSDK.AFKeystoreWrapper(AFInAppEventType);
        } catch (JSONException e10) {
            StringBuilder sb2 = new StringBuilder("[GCD] Failed to parse GCD response: ");
            sb2.append(e10.getMessage());
            AFLogger.afErrorLog(sb2.toString(), e10);
            return null;
        }
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @NonNull
    public final AFc1qSDK AFKeystoreWrapper() throws Exception {
        AFLogger.afDebugLog("[GCD-A01] Loading conversion data. Counter: ".concat(String.valueOf(this.afErrorLog.AFInAppEventType("appsFlyerCount"))));
        long values = this.afErrorLog.values("appsflyerConversionDataCacheExpiration");
        if (values != 0 && System.currentTimeMillis() - values > 5184000000L) {
            AFLogger.afDebugLog("[GCD-E02] Cached conversion data expired");
            this.afErrorLog.values("sixtyDayConversionData", true);
            this.afErrorLog.valueOf("attributionId", null);
            this.afErrorLog.AFInAppEventParameterName("appsflyerConversionDataCacheExpiration", 0L);
        }
        Map<String, Object> afRDLog = afRDLog();
        if (afRDLog != null) {
            try {
                if (!afRDLog.containsKey("is_first_launch")) {
                    afRDLog.put("is_first_launch", Boolean.FALSE);
                }
                AFd1hSDK.AFInAppEventType(afRDLog);
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder("[GCD] Error executing conversion data callback: ");
                sb2.append(e10.getLocalizedMessage());
                AFLogger.afErrorLog(sb2.toString(), e10);
            }
            return AFc1qSDK.SUCCESS;
        }
        try {
        } catch (Exception e11) {
            StringBuilder sb3 = new StringBuilder("[GCD] Error executing conversion data callback: ");
            sb3.append(e11.getLocalizedMessage());
            AFLogger.afErrorLog(sb3.toString(), e11);
        }
        if (this.afInfoLog != null) {
            StringBuilder sb4 = new StringBuilder("Launch exception: ");
            sb4.append(this.afInfoLog.getMessage());
            AFd1hSDK.values(sb4.toString());
            return AFc1qSDK.SUCCESS;
        }
        AFc1pSDK<String> aFc1pSDK = this.afDebugLog;
        if (aFc1pSDK != null && !aFc1pSDK.isSuccessful()) {
            StringBuilder sb5 = new StringBuilder("Launch status code: ");
            sb5.append(this.afDebugLog.getStatusCode());
            AFd1hSDK.values(sb5.toString());
            return AFc1qSDK.SUCCESS;
        }
        return AFc1qSDK.FAILURE;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 1000L;
    }
}
