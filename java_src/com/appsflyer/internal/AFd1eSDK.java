package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFd1eSDK extends AFc1hSDK<Map<String, Object>> {
    private static final List<String> afRDLog = Arrays.asList("googleplay", "playstore", "googleplaystore");
    @Nullable
    private Map<String, Object> AFLogger$LogLevel;
    private final AFb1cSDK AFVersionDeclaration;
    private final AFd1oSDK afWarnLog;
    private final AFc1xSDK getLevel;
    private final AFd1dSDK init;
    @Nullable
    private String onInstallConversionFailureNative;

    public AFd1eSDK(@NonNull AFc1ySDK aFc1ySDK) {
        super(AFc1lSDK.GCDSDK, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, "GCD-FETCH");
        this.getLevel = aFc1ySDK.AFKeystoreWrapper();
        this.afWarnLog = aFc1ySDK.afRDLog();
        this.init = aFc1ySDK.afDebugLog();
        this.AFVersionDeclaration = aFc1ySDK.valueOf();
        this.valueOf.add(AFc1lSDK.CONVERSION);
        this.valueOf.add(AFc1lSDK.LAUNCH);
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        super.AFInAppEventParameterName();
        Map<String, Object> map = this.AFLogger$LogLevel;
        String str = this.onInstallConversionFailureNative;
        if (map != null) {
            AFd1hSDK.AFInAppEventType(map);
        } else if (str != null && !str.isEmpty()) {
            AFd1hSDK.values(str);
        } else {
            AFd1hSDK.values("Unknown error");
        }
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    public final AFb1aSDK<Map<String, Object>> AFKeystoreWrapper(@NonNull String str) {
        String str2;
        String valueOf = AFa1aSDK.valueOf(this.afWarnLog, this.AFVersionDeclaration.AFInAppEventParameterName());
        if (valueOf != null && !valueOf.trim().isEmpty()) {
            if (!afRDLog.contains(valueOf.toLowerCase())) {
                str2 = "-".concat(valueOf);
                AFb1aSDK<Map<String, Object>> AFKeystoreWrapper = this.getLevel.AFKeystoreWrapper(str2, str);
                StringBuilder sb2 = new StringBuilder("[GCD-B01] URL: ");
                sb2.append(AFKeystoreWrapper.AFKeystoreWrapper.AFInAppEventType);
                AFb1tSDK.AFKeystoreWrapper(sb2.toString());
                return AFKeystoreWrapper;
            }
            AFLogger.afWarnLog(String.format("[GCD] AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix.", valueOf));
        }
        str2 = "";
        AFb1aSDK<Map<String, Object>> AFKeystoreWrapper2 = this.getLevel.AFKeystoreWrapper(str2, str);
        StringBuilder sb22 = new StringBuilder("[GCD-B01] URL: ");
        sb22.append(AFKeystoreWrapper2.AFKeystoreWrapper.AFInAppEventType);
        AFb1tSDK.AFKeystoreWrapper(sb22.toString());
        return AFKeystoreWrapper2;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    @Nullable
    public final AppsFlyerRequestListener afErrorLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    public final boolean afRDLog() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007d A[Catch: all -> 0x0105, Exception -> 0x0107, AFc1kSDK -> 0x0136, TryCatch #3 {AFc1kSDK -> 0x0136, Exception -> 0x0107, blocks: (B:12:0x0025, B:15:0x002f, B:22:0x003f, B:30:0x0052, B:33:0x0069, B:35:0x007d, B:37:0x0097, B:39:0x009d, B:40:0x00a8, B:42:0x00ae, B:44:0x00b4, B:45:0x00ca, B:46:0x00db, B:48:0x00fa, B:49:0x00ff), top: B:68:0x0025, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae A[Catch: all -> 0x0105, Exception -> 0x0107, AFc1kSDK -> 0x0136, TryCatch #3 {AFc1kSDK -> 0x0136, Exception -> 0x0107, blocks: (B:12:0x0025, B:15:0x002f, B:22:0x003f, B:30:0x0052, B:33:0x0069, B:35:0x007d, B:37:0x0097, B:39:0x009d, B:40:0x00a8, B:42:0x00ae, B:44:0x00b4, B:45:0x00ca, B:46:0x00db, B:48:0x00fa, B:49:0x00ff), top: B:68:0x0025, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa A[Catch: all -> 0x0105, Exception -> 0x0107, AFc1kSDK -> 0x0136, TryCatch #3 {AFc1kSDK -> 0x0136, Exception -> 0x0107, blocks: (B:12:0x0025, B:15:0x002f, B:22:0x003f, B:30:0x0052, B:33:0x0069, B:35:0x007d, B:37:0x0097, B:39:0x009d, B:40:0x00a8, B:42:0x00ae, B:44:0x00b4, B:45:0x00ca, B:46:0x00db, B:48:0x00fa, B:49:0x00ff), top: B:68:0x0025, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0052 A[SYNTHETIC] */
    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFc1qSDK AFKeystoreWrapper() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1eSDK.AFKeystoreWrapper():com.appsflyer.internal.AFc1qSDK");
    }
}
