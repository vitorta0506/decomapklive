package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class AFb1xSDK {
    @Nullable
    static Boolean AFKeystoreWrapper;
    static String valueOf;
    private final ExecutorService AFInAppEventType;
    public final AFc1vSDK values;

    public AFb1xSDK() {
    }

    public AFb1xSDK(AFc1vSDK aFc1vSDK, ExecutorService executorService) {
        this.values = aFc1vSDK;
        this.AFInAppEventType = executorService;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c A[RETURN] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.appsflyer.internal.AFa1qSDK AFInAppEventParameterName(android.content.Context r5) {
        /*
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = com.appsflyer.internal.AFb1xSDK.valueOf
            r2 = 1
            if (r1 == 0) goto Lb
            r3 = 1
            goto Lc
        Lb:
            r3 = 0
        Lc:
            r4 = 0
            if (r3 == 0) goto L11
        Lf:
            r5 = r4
            goto L4e
        L11:
            java.lang.Boolean r1 = com.appsflyer.internal.AFb1xSDK.AFKeystoreWrapper
            if (r1 == 0) goto L1b
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L27
        L1b:
            java.lang.Boolean r1 = com.appsflyer.internal.AFb1xSDK.AFKeystoreWrapper
            if (r1 != 0) goto L4c
            java.lang.String r1 = "collectOAID"
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 == 0) goto L4c
        L27:
            com.appsflyer.oaid.OaidClient r1 = new com.appsflyer.oaid.OaidClient     // Catch: java.lang.Throwable -> L45
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L45
            boolean r5 = r0.isEnableLog()     // Catch: java.lang.Throwable -> L45
            r1.setLogging(r5)     // Catch: java.lang.Throwable -> L45
            com.appsflyer.oaid.OaidClient$Info r5 = r1.fetch()     // Catch: java.lang.Throwable -> L45
            if (r5 == 0) goto L4c
            java.lang.String r0 = r5.getId()     // Catch: java.lang.Throwable -> L45
            java.lang.Boolean r5 = r5.getLat()     // Catch: java.lang.Throwable -> L43
            r1 = r0
            goto L4e
        L43:
            r1 = r0
            goto L46
        L45:
            r1 = r4
        L46:
            java.lang.String r5 = "No OAID library"
            com.appsflyer.AFLogger.afDebugLog(r5)
            goto Lf
        L4c:
            r5 = r4
            r1 = r5
        L4e:
            if (r1 == 0) goto L5c
            com.appsflyer.internal.AFa1qSDK r0 = new com.appsflyer.internal.AFa1qSDK
            r0.<init>(r1, r5)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r3)
            r0.AFKeystoreWrapper = r5
            return r0
        L5c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1xSDK.AFInAppEventParameterName(android.content.Context):com.appsflyer.internal.AFa1qSDK");
    }

    @Nullable
    public static AFa1qSDK AFKeystoreWrapper(ContentResolver contentResolver) {
        String str;
        if (AFInAppEventParameterName() && contentResolver != null && AppsFlyerProperties.getInstance().getString("amazon_aid") == null && "Amazon".equals(Build.MANUFACTURER)) {
            int i9 = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
            if (i9 == 0) {
                return new AFa1qSDK(Settings.Secure.getString(contentResolver, "advertising_id"), Boolean.FALSE);
            }
            if (i9 == 2) {
                return null;
            }
            try {
                str = Settings.Secure.getString(contentResolver, "advertising_id");
            } catch (Throwable th2) {
                AFLogger.afErrorLog("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th2);
                str = "";
            }
            return new AFa1qSDK(str, Boolean.TRUE);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        if (r8.length() == 0) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.appsflyer.internal.AFa1qSDK AFKeystoreWrapper(android.content.Context r12, java.util.Map<java.lang.String, java.lang.Object> r13) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1xSDK.AFKeystoreWrapper(android.content.Context, java.util.Map):com.appsflyer.internal.AFa1qSDK");
    }

    private static boolean AFInAppEventParameterName() {
        Boolean bool = AFKeystoreWrapper;
        return bool == null || bool.booleanValue();
    }
}
