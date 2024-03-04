package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.FirebaseMessagingServiceListener;
import com.appsflyer.internal.AFc1mSDK;
/* loaded from: classes.dex */
public final class AFd1kSDK {
    @VisibleForTesting
    public static String AFKeystoreWrapper;
    public final AFd1oSDK valueOf;

    static {
        StringBuilder sb2 = new StringBuilder("https://%sregister.%s/api/v");
        sb2.append(AFa1aSDK.AFKeystoreWrapper);
        AFKeystoreWrapper = sb2.toString();
    }

    public AFd1kSDK(@NonNull Context context) {
        this.valueOf = AFa1aSDK.values().valueOf(context);
    }

    public static boolean AFInAppEventParameterName(Context context) {
        if (AppsFlyerLib.getInstance().isStopped()) {
            return false;
        }
        try {
            Class.forName("com.google.firebase.messaging.FirebaseMessagingService");
        } catch (ClassNotFoundException unused) {
        } catch (Throwable th2) {
            AFLogger.afErrorLog("An error occurred while trying to verify manifest declarations: ", th2);
        }
        return AFb1wSDK.values(context, new Intent("com.google.firebase.MESSAGING_EVENT", null, context, FirebaseMessagingServiceListener.class));
    }

    public static void AFInAppEventType(String str) {
        AFc1ySDK AFInAppEventType = AFa1aSDK.values().AFInAppEventType();
        AFd1xSDK aFd1xSDK = new AFd1xSDK(str, AFInAppEventType);
        AFc1mSDK afErrorLog = AFInAppEventType.afErrorLog();
        afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1xSDK));
    }

    public static boolean valueOf(@NonNull SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean("sentRegisterRequestToAF", false);
    }

    @Nullable
    public final AFb1tSDK values() {
        String string;
        String string2;
        String AFInAppEventType = this.valueOf.AFInAppEventType("afUninstallToken", null);
        long values = this.valueOf.values("afUninstallToken_received_time");
        boolean AFKeystoreWrapper2 = this.valueOf.AFKeystoreWrapper("afUninstallToken_queued");
        this.valueOf.values("afUninstallToken_queued", false);
        if (AFInAppEventType == null && (string2 = AppsFlyerProperties.getInstance().getString("afUninstallToken")) != null) {
            String[] split = string2.split(",");
            AFInAppEventType = split[split.length - 1];
        }
        if (values == 0 && (string = AppsFlyerProperties.getInstance().getString("afUninstallToken")) != null) {
            String[] split2 = string.split(",");
            if (split2.length >= 2) {
                try {
                    values = Long.parseLong(split2[split2.length - 2]);
                } catch (NumberFormatException unused) {
                }
            }
        }
        if (AFInAppEventType != null) {
            return new AFb1tSDK(AFInAppEventType, values, AFKeystoreWrapper2);
        }
        return null;
    }
}
