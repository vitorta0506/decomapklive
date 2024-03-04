package com.appsflyer.internal;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.AFa1vSDK;
import java.util.Set;
/* loaded from: classes.dex */
public class AFd1tSDK extends AFc1hSDK<String> {
    private static final AFc1lSDK[] getLevel = {AFc1lSDK.DLSDK, AFc1lSDK.ONELINK, AFc1lSDK.MONITORSDK, AFc1lSDK.REGISTER};
    public final AFa1tSDK afRDLog;
    protected final AFd1oSDK init;

    public AFd1tSDK(@NonNull AFa1tSDK aFa1tSDK, @NonNull AFc1ySDK aFc1ySDK) {
        this(aFa1tSDK, aFc1ySDK, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b6  */
    @Override // com.appsflyer.internal.AFc1hSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.appsflyer.internal.AFb1aSDK<java.lang.String> AFKeystoreWrapper(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1tSDK.AFKeystoreWrapper(java.lang.String):com.appsflyer.internal.AFb1aSDK");
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    @Nullable
    protected final AppsFlyerRequestListener afErrorLog() {
        return this.afRDLog.valueOf;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected boolean afRDLog() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFd1tSDK(@NonNull AFa1tSDK aFa1tSDK, @NonNull AFc1ySDK aFc1ySDK, String str) {
        super(aFa1tSDK.AFInAppEventParameterName(), new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, str);
        this.afRDLog = aFa1tSDK;
        this.init = aFc1ySDK.afRDLog();
        for (AFc1lSDK aFc1lSDK : getLevel) {
            if (this.AFInAppEventParameterName == aFc1lSDK) {
                return;
            }
        }
        int i9 = this.afRDLog.AFLogger;
        AFc1lSDK aFc1lSDK2 = this.AFInAppEventParameterName;
        if (i9 <= 0) {
            AFc1lSDK aFc1lSDK3 = AFc1lSDK.CONVERSION;
            if (aFc1lSDK2 != aFc1lSDK3) {
                this.AFKeystoreWrapper.add(aFc1lSDK3);
                return;
            }
            return;
        }
        this.valueOf.add(AFc1lSDK.CONVERSION);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void AFKeystoreWrapper(AFa1tSDK aFa1tSDK) {
        if (aFa1tSDK.afErrorLog()) {
            aFa1tSDK.AFKeystoreWrapper(new AFa1vSDK.AFa1xSDK(aFa1tSDK.AFKeystoreWrapper(), ((AFc1hSDK) this).afErrorLog.valueOf.values));
        }
        if (aFa1tSDK.afDebugLog()) {
            aFa1tSDK.AFKeystoreWrapper(((AFc1hSDK) this).afErrorLog.AFInAppEventType());
        }
        Set<AFc1lSDK> set = this.AFKeystoreWrapper;
        boolean z10 = set.contains(AFc1lSDK.LAUNCH) || set.contains(AFc1lSDK.CONVERSION);
        if (afDebugLog() && z10) {
            aFa1tSDK.AFKeystoreWrapper(this.init.AFInAppEventType("appsFlyerCount"));
        }
        try {
            if (aFa1tSDK.AFKeystoreWrapper().containsKey("appsflyerKey") && aFa1tSDK.afErrorLog()) {
                new AFb1rSDK();
                aFa1tSDK.AFInAppEventType("af_v", AFb1rSDK.valueOf(aFa1tSDK.AFKeystoreWrapper()));
                new AFb1rSDK();
                aFa1tSDK.AFInAppEventType("af_v2", AFb1rSDK.AFInAppEventType(aFa1tSDK.AFKeystoreWrapper()));
            }
        } catch (Throwable th2) {
            AFLogger.afErrorLog("QUEUE: failed to update the event, is missing DevKey? Error: ".concat(String.valueOf(th2)), th2);
        }
    }
}
