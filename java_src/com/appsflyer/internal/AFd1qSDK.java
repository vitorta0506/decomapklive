package com.appsflyer.internal;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class AFd1qSDK {
    public static final Charset values = Charset.forName("UTF-8");
    public long AFInAppEventParameterName;
    public long AFInAppEventType;
    public final AFd1oSDK AFKeystoreWrapper;
    public AFb1sSDK valueOf = values();

    public AFd1qSDK(AFd1oSDK aFd1oSDK) {
        this.AFKeystoreWrapper = aFd1oSDK;
        this.AFInAppEventType = aFd1oSDK.values("af_rc_timestamp");
        this.AFInAppEventParameterName = aFd1oSDK.values("af_rc_max_age");
    }

    @Nullable
    private AFb1sSDK values() {
        String AFInAppEventType = this.AFKeystoreWrapper.AFInAppEventType("af_remote_config", null);
        if (AFInAppEventType == null) {
            AFLogger.afDebugLog("CFG: No configuration found in cache");
            return null;
        }
        try {
            return new AFb1sSDK(new String(Base64.decode(AFInAppEventType, 2), values));
        } catch (Exception e10) {
            AFLogger.afErrorLog("CFG: Error reading malformed configuration from cache, requires fetching from remote again", e10, true);
            return null;
        }
    }
}
