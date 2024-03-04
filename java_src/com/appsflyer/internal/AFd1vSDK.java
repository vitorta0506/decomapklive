package com.appsflyer.internal;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes.dex */
public final class AFd1vSDK extends AFc1hSDK<String> {
    private final AFe1vSDK afRDLog;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AFd1vSDK(@androidx.annotation.NonNull com.appsflyer.internal.AFe1vSDK r8, @androidx.annotation.NonNull com.appsflyer.internal.AFc1ySDK r9) {
        /*
            r7 = this;
            com.appsflyer.internal.AFc1lSDK r0 = r8.getLevel
            if (r0 == 0) goto L5
            goto L7
        L5:
            com.appsflyer.internal.AFc1lSDK r0 = com.appsflyer.internal.AFc1lSDK.CACHED_EVENT
        L7:
            r2 = r0
            r0 = 1
            com.appsflyer.internal.AFc1lSDK[] r3 = new com.appsflyer.internal.AFc1lSDK[r0]
            r0 = 0
            com.appsflyer.internal.AFc1lSDK r1 = com.appsflyer.internal.AFc1lSDK.RC_CDN
            r3[r0] = r1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r8.afDebugLog
            r0.append(r1)
            java.lang.String r1 = "-"
            r0.append(r1)
            java.lang.String r1 = AFInAppEventParameterName(r8)
            r0.append(r1)
            java.lang.String r5 = r0.toString()
            java.lang.String r6 = r8.afDebugLog
            r1 = r7
            r4 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            r7.afRDLog = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1vSDK.<init>(com.appsflyer.internal.AFe1vSDK, com.appsflyer.internal.AFc1ySDK):void");
    }

    private static String AFInAppEventParameterName(AFe1vSDK aFe1vSDK) {
        try {
            return new URL(aFe1vSDK.afInfoLog).getHost();
        } catch (MalformedURLException unused) {
            return "";
        }
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<String> AFKeystoreWrapper(String str) {
        String encodeToString = Base64.encodeToString(this.afRDLog.values(), 2);
        AFLogger.afInfoLog("cached data: ".concat(String.valueOf(encodeToString)));
        ((AFc1hSDK) this).afInfoLog.AFInAppEventParameterName(this.afRDLog.afInfoLog, encodeToString);
        return ((AFc1hSDK) this).AFLogger.valueOf(this.afRDLog);
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    @Nullable
    protected final AppsFlyerRequestListener afErrorLog() {
        return this.afRDLog.valueOf;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final boolean afRDLog() {
        return false;
    }
}
