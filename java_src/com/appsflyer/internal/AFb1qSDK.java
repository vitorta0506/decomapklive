package com.appsflyer.internal;

import androidx.annotation.NonNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes.dex */
public final class AFb1qSDK {
    public long AFInAppEventParameterName;
    @Nullable
    public String AFInAppEventType;
    public int AFKeystoreWrapper;
    @Nullable
    public String AFLogger;
    @Nullable
    public Throwable afDebugLog;
    @Nullable
    public AFe1rSDK afErrorLog;
    public long valueOf;
    @NonNull
    public String values;

    public AFb1qSDK() {
    }

    public AFb1qSDK(String str, String str2, long j10, long j11, int i9, AFe1rSDK aFe1rSDK, String str3, Throwable th2) {
        this.AFInAppEventType = str;
        this.values = str2;
        this.valueOf = j10;
        this.AFInAppEventParameterName = j11;
        this.AFKeystoreWrapper = i9;
        this.afErrorLog = aFe1rSDK;
        this.AFLogger = str3;
        this.afDebugLog = th2;
    }
}
