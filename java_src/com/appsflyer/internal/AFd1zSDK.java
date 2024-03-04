package com.appsflyer.internal;

import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFc1mSDK;
/* loaded from: classes.dex */
public final class AFd1zSDK extends AFc1nSDK<Boolean> {
    private static volatile boolean afDebugLog = false;
    private final AFc1ySDK afErrorLog;
    private final AFa1lSDK afInfoLog;
    private final AFc1mSDK afRDLog;

    public AFd1zSDK(@NonNull AFc1ySDK aFc1ySDK) {
        super(AFc1lSDK.LOAD_CACHE, new AFc1lSDK[0], "LoadCachedRequests");
        this.afInfoLog = aFc1ySDK.init();
        this.afRDLog = aFc1ySDK.afErrorLog();
        this.afErrorLog = aFc1ySDK;
    }

    public static boolean afErrorLog() {
        return afDebugLog;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @NonNull
    public final AFc1qSDK AFKeystoreWrapper() throws Exception {
        for (AFa1fSDK aFa1fSDK : this.afInfoLog.valueOf()) {
            StringBuilder sb2 = new StringBuilder("CACHE: resending request: ");
            sb2.append(aFa1fSDK.AFKeystoreWrapper);
            AFLogger.afInfoLog(sb2.toString());
            try {
                long currentTimeMillis = System.currentTimeMillis();
                long parseLong = Long.parseLong(aFa1fSDK.valueOf, 10);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(aFa1fSDK.AFKeystoreWrapper);
                sb3.append("&isCachedRequest=true&timeincache=");
                sb3.append((currentTimeMillis - parseLong) / 1000);
                AFe1vSDK aFe1vSDK = new AFe1vSDK(sb3.toString(), aFa1fSDK.AFInAppEventParameterName(), aFa1fSDK.valueOf, aFa1fSDK.values);
                AFc1mSDK aFc1mSDK = this.afRDLog;
                aFc1mSDK.valueOf.execute(new AFc1mSDK.AnonymousClass5(new AFd1vSDK(aFe1vSDK, this.afErrorLog)));
            } catch (Exception e10) {
                AFLogger.afErrorLog("QUEUE: Failed to resend cached request", e10);
            }
        }
        afDebugLog = true;
        return AFc1qSDK.SUCCESS;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 30000L;
    }
}
