package com.appsflyer.internal;

import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.appsflyer.AFLogger;
/* loaded from: classes.dex */
public final class AFb1tSDK {
    @VisibleForTesting
    private static String AFInAppEventParameterName;
    @VisibleForTesting
    private static String values;
    final long AFInAppEventType;
    private final boolean AFKeystoreWrapper;
    final String valueOf;

    public AFb1tSDK() {
    }

    public AFb1tSDK(String str, long j10, boolean z10) {
        this.valueOf = str;
        this.AFInAppEventType = j10;
        this.AFKeystoreWrapper = z10;
    }

    public static void AFKeystoreWrapper(String str) {
        if (AFInAppEventParameterName == null) {
            valueOf(AFa1aSDK.values().AFInAppEventType().AFLogger$LogLevel().AFInAppEventType);
        }
        String str2 = AFInAppEventParameterName;
        if (str2 != null) {
            AFLogger.afInfoLog(str.replace(str2, values));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void valueOf(String str) {
        AFInAppEventParameterName = str;
        if (str == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < str.length(); i9++) {
            if (i9 != 0 && i9 != str.length() - 1) {
                sb2.append(ProxyConfig.MATCH_ALL_SCHEMES);
            } else {
                sb2.append(str.charAt(i9));
            }
        }
        values = sb2.toString();
    }

    public final boolean valueOf() {
        return this.AFKeystoreWrapper;
    }
}
