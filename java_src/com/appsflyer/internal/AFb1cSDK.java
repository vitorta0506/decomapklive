package com.appsflyer.internal;

import android.content.pm.PackageItemInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
/* loaded from: classes.dex */
public final class AFb1cSDK {
    private static String values = "126";
    private Bundle AFInAppEventParameterName = null;
    public final AFd1oSDK AFInAppEventType;
    public final AFb1dSDK AFKeystoreWrapper;

    public AFb1cSDK(AFb1dSDK aFb1dSDK, AFd1oSDK aFd1oSDK) {
        this.AFKeystoreWrapper = aFb1dSDK;
        this.AFInAppEventType = aFd1oSDK;
    }

    public static String valueOf() {
        return AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
    }

    @Nullable
    public static String values() {
        StringBuilder sb2 = new StringBuilder("version: 6.9.0 (build ");
        sb2.append(values);
        sb2.append(")");
        return sb2.toString();
    }

    public final String AFInAppEventParameterName() {
        String string = AppsFlyerProperties.getInstance().getString("channel");
        if (string == null) {
            string = valueOf("CHANNEL");
        }
        if (string == null || !string.equals("")) {
            return string;
        }
        return null;
    }

    @Nullable
    public final String valueOf(String str) {
        Object obj;
        try {
            if (this.AFInAppEventParameterName == null) {
                this.AFInAppEventParameterName = ((PackageItemInfo) this.AFKeystoreWrapper.values.getPackageManager().getApplicationInfo(this.AFKeystoreWrapper.values.getPackageName(), 128)).metaData;
            }
            Bundle bundle = this.AFInAppEventParameterName;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj.toString();
        } catch (Throwable th2) {
            StringBuilder sb2 = new StringBuilder("Could not load manifest metadata!");
            sb2.append(th2.getMessage());
            AFLogger.afErrorLog(sb2.toString(), th2);
            return null;
        }
    }
}
