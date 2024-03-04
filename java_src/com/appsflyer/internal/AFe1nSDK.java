package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
/* loaded from: classes.dex */
public abstract class AFe1nSDK extends AFe1iSDK {
    public AFe1nSDK(String str, String str2, Runnable runnable) {
        super(str, str2, runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean AFInAppEventType(@NonNull Context context) {
        AFa1aSDK.values();
        if (AFa1aSDK.valueOf(AFa1aSDK.AFKeystoreWrapper(context), false) > 0) {
            AFLogger.afRDLog("Install referrer will not load, the counter > 1, ");
            return false;
        }
        return true;
    }
}
