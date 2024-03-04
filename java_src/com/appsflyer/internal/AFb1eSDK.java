package com.appsflyer.internal;

import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
/* loaded from: classes.dex */
public final class AFb1eSDK implements AFd1oSDK {
    private final SharedPreferences AFInAppEventType;

    public AFb1eSDK(SharedPreferences sharedPreferences) {
        this.AFInAppEventType = sharedPreferences;
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final void AFInAppEventParameterName(String str, long j10) {
        this.AFInAppEventType.edit().putLong(str, j10).apply();
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final String AFInAppEventType(String str, String str2) {
        try {
            return this.AFInAppEventType.getString(str, str2);
        } catch (ClassCastException e10) {
            AFLogger.afErrorLog("Unexpected data type found for key ".concat(String.valueOf(str)), e10);
            return str2;
        }
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final boolean AFKeystoreWrapper(String str) {
        try {
            return this.AFInAppEventType.getBoolean(str, false);
        } catch (ClassCastException e10) {
            AFLogger.afErrorLog("Unexpected data type found for key ".concat(String.valueOf(str)), e10);
            return false;
        }
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final void valueOf(String str, String str2) {
        this.AFInAppEventType.edit().putString(str, str2).apply();
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final void values(String str, boolean z10) {
        this.AFInAppEventType.edit().putBoolean(str, z10).apply();
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final void valueOf(String str) {
        this.AFInAppEventType.edit().remove(str).apply();
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final long values(String str) {
        try {
            return this.AFInAppEventType.getLong(str, 0L);
        } catch (ClassCastException e10) {
            AFLogger.afErrorLog("Unexpected data type found for key ".concat(String.valueOf(str)), e10);
            return 0L;
        }
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final int AFInAppEventType(String str) {
        try {
            return this.AFInAppEventType.getInt(str, 0);
        } catch (ClassCastException e10) {
            AFLogger.afErrorLog("Unexpected data type found for key ".concat(String.valueOf(str)), e10);
            return 0;
        }
    }

    @Override // com.appsflyer.internal.AFd1oSDK
    public final void AFKeystoreWrapper(String str, int i9) {
        this.AFInAppEventType.edit().putInt(str, i9).apply();
    }
}
