package com.appsflyer.internal;

import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
/* loaded from: classes.dex */
public final class AFd1xSDK extends AFd1tSDK {
    private static int onAppOpenAttributionNative = 1;
    private static int onInstallConversionFailureNative;
    private final String afWarnLog;
    private final AFb1dSDK getLevel;
    private static char[] AFVersionDeclaration = {'b', 'r', 'a', 'n', 'd', 'c', 'e', 'f', 'g'};
    private static char AFLogger$LogLevel = 3;

    public AFd1xSDK(@NonNull String str, @NonNull AFc1ySDK aFc1ySDK) {
        super(new AFd1nSDK(aFc1ySDK.AFVersionDeclaration().values), aFc1ySDK, str);
        this.getLevel = aFc1ySDK.AFVersionDeclaration();
        this.afWarnLog = str;
    }

    private void AFVersionDeclaration() {
        int i9 = onInstallConversionFailureNative + 1;
        onAppOpenAttributionNative = i9 % 128;
        if (i9 % 2 == 0) {
        }
        ((AFd1tSDK) this).init.values("sentRegisterRequestToAF", true);
        AFLogger.afDebugLog("[register] Successfully registered for Uninstall Tracking");
        int i10 = onAppOpenAttributionNative + 55;
        onInstallConversionFailureNative = i10 % 128;
        int i11 = i10 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String valueOf(java.lang.String r8, int r9, byte r10) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1xSDK.valueOf(java.lang.String, int, byte):java.lang.String");
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        ResponseNetwork responseNetwork;
        int i9 = onInstallConversionFailureNative + 99;
        onAppOpenAttributionNative = i9 % 128;
        if (i9 % 2 == 0) {
            super.AFInAppEventParameterName();
            responseNetwork = this.afDebugLog;
            int i10 = 80 / 0;
            if (!(responseNetwork != null)) {
                return;
            }
        } else {
            super.AFInAppEventParameterName();
            responseNetwork = this.afDebugLog;
            if (responseNetwork == null) {
                return;
            }
        }
        if (responseNetwork.isSuccessful() ? false : true) {
            return;
        }
        int i11 = onAppOpenAttributionNative + 59;
        onInstallConversionFailureNative = i11 % 128;
        if (i11 % 2 == 0) {
            AFVersionDeclaration();
        } else {
            AFVersionDeclaration();
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r0 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        if (r3.valueOf() != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
        r1 = r0.getPackageManager();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        r4 = r1.getPackageInfo(r0.getPackageName(), 0);
        r10.AFInAppEventType(com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum.USER_APP_VERSION_CODE, java.lang.Integer.toString(r4.versionCode));
        r10.AFInAppEventType(com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum.USER_APP_VERSION, r4.versionName);
        r10.AFInAppEventType("app_name", r1.getApplicationLabel(r4.applicationInfo).toString());
        r10.AFInAppEventType("installDate", com.appsflyer.internal.AFa1aSDK.AFInAppEventType(new java.text.SimpleDateFormat("yyyy-MM-dd_HHmmssZ", java.util.Locale.US), r4.firstInstallTime));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007d, code lost:
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting application version info.", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x017f, code lost:
        com.appsflyer.AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x018b, code lost:
        throw new java.lang.IllegalStateException("CustomerUserId not set, register is not sent");
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0193, code lost:
        throw new java.lang.IllegalStateException("Context is not provided, can't send register request");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r0 != null) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017e A[ORIG_RETURN, RETURN] */
    @Override // com.appsflyer.internal.AFd1tSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AFKeystoreWrapper(com.appsflyer.internal.AFa1tSDK r10) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1xSDK.AFKeystoreWrapper(com.appsflyer.internal.AFa1tSDK):void");
    }

    @Override // com.appsflyer.internal.AFd1tSDK, com.appsflyer.internal.AFc1hSDK
    protected final boolean afRDLog() {
        int i9 = onInstallConversionFailureNative + 97;
        int i10 = i9 % 128;
        onAppOpenAttributionNative = i10;
        int i11 = i9 % 2;
        int i12 = i10 + 81;
        onInstallConversionFailureNative = i12 % 128;
        if ((i12 % 2 != 0 ? 'U' : (char) 30) == 30) {
            return false;
        }
        throw null;
    }
}
