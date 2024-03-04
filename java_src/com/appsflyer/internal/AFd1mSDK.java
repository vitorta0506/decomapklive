package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class AFd1mSDK {
    private static final long AFInAppEventParameterName = TimeUnit.HOURS.toSeconds(24);
    private final AFd1qSDK AFKeystoreWrapper;
    private final AFb1cSDK values;

    public AFd1mSDK(AFb1cSDK aFb1cSDK, AFd1qSDK aFd1qSDK) {
        this.values = aFb1cSDK;
        this.AFKeystoreWrapper = aFd1qSDK;
    }

    public final boolean AFInAppEventType() {
        if (this.AFKeystoreWrapper.valueOf == null) {
            AFLogger.afInfoLog("CFG: active config is missing - fetching from CDN");
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        AFd1qSDK aFd1qSDK = this.AFKeystoreWrapper;
        return currentTimeMillis - aFd1qSDK.AFInAppEventType > TimeUnit.SECONDS.toMillis(aFd1qSDK.AFInAppEventParameterName);
    }

    public final long AFKeystoreWrapper() {
        String valueOf = this.values.valueOf("com.appsflyer.rc.cache.max-age-fallback");
        if (valueOf != null) {
            try {
                return Long.parseLong(valueOf);
            } catch (NumberFormatException e10) {
                StringBuilder sb2 = new StringBuilder("Can't read maxAgeFallback from Manifest: ");
                sb2.append(e10.getMessage());
                AFLogger.afErrorLog(sb2.toString(), e10);
                return AFInAppEventParameterName;
            }
        }
        return AFInAppEventParameterName;
    }

    public final boolean valueOf() {
        return Boolean.parseBoolean(this.values.valueOf("com.appsflyer.rc.sandbox"));
    }
}
