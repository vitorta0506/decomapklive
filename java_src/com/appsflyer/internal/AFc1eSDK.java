package com.appsflyer.internal;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class AFc1eSDK extends AFc1hSDK<String> {
    @NonNull
    private final Map<String, Object> AFLogger$LogLevel;
    private final AFb1cSDK afRDLog;
    private final AFd1oSDK afWarnLog;
    @Nullable
    private final PurchaseHandler.PurchaseValidationCallback init;

    public AFc1eSDK(@NonNull AFc1lSDK aFc1lSDK, @NonNull AFc1lSDK[] aFc1lSDKArr, @NonNull AFc1ySDK aFc1ySDK, @Nullable String str, Map<String, Object> map, @Nullable PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        super(aFc1lSDK, aFc1lSDKArr, aFc1ySDK, str);
        AFb1cSDK valueOf = aFc1ySDK.valueOf();
        this.afRDLog = valueOf;
        AFd1oSDK afRDLog = aFc1ySDK.afRDLog();
        this.afWarnLog = afRDLog;
        HashMap hashMap = new HashMap(new HashMap(map));
        hashMap.put("app_id", valueOf.AFKeystoreWrapper.values.getPackageName());
        String valueOf2 = AFb1cSDK.valueOf();
        if (valueOf2 != null) {
            hashMap.put("cuid", valueOf2);
        }
        Context context = valueOf.AFKeystoreWrapper.values;
        hashMap.put(TPDownloadProxyEnum.USER_APP_VERSION, AFb1wSDK.AFInAppEventParameterName(context, context.getPackageName()));
        HashMap hashMap2 = new HashMap();
        AFa1qSDK AFKeystoreWrapper = AFb1xSDK.AFKeystoreWrapper(valueOf.AFKeystoreWrapper.values, new HashMap());
        String str2 = AFKeystoreWrapper != null ? AFKeystoreWrapper.valueOf : null;
        if (!AFb1nSDK.values(str2)) {
            hashMap2.put("advertising_id", str2);
        }
        AFa1qSDK AFKeystoreWrapper2 = AFb1xSDK.AFKeystoreWrapper(valueOf.AFKeystoreWrapper.values.getContentResolver());
        String str3 = AFKeystoreWrapper2 != null ? AFKeystoreWrapper2.valueOf : null;
        if (!AFb1nSDK.values(str3)) {
            hashMap2.put("oaid", str3);
        }
        AFa1qSDK AFKeystoreWrapper3 = AFb1xSDK.AFKeystoreWrapper(valueOf.AFKeystoreWrapper.values.getContentResolver());
        String str4 = AFKeystoreWrapper3 != null ? AFKeystoreWrapper3.valueOf : null;
        if (!AFb1nSDK.values(str4)) {
            hashMap2.put("amazon_aid", str4);
        }
        if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            String values = ((AFc1hSDK) this).afErrorLog.values(afRDLog);
            if (!AFb1nSDK.values(values)) {
                hashMap2.put("imei", values);
            }
        }
        hashMap2.put("appsflyer_id", AFb1uSDK.AFInAppEventParameterName(new WeakReference(valueOf.AFKeystoreWrapper.values)));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Build.VERSION.SDK_INT);
        hashMap2.put(TPDownloadProxyEnum.USER_OS_VERSION, sb2.toString());
        hashMap2.put(HianalyticsBaseData.SDK_VERSION, AFa1aSDK.valueOf);
        hashMap.put("device_data", hashMap2);
        this.AFLogger$LogLevel = hashMap;
        this.init = purchaseValidationCallback;
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback;
        PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback2;
        super.AFInAppEventParameterName();
        Throwable afInfoLog = afInfoLog();
        if (afInfoLog != null && (purchaseValidationCallback2 = this.init) != null) {
            purchaseValidationCallback2.onFailure(afInfoLog);
        }
        ResponseNetwork<String> responseNetwork = this.afDebugLog;
        if (responseNetwork == null || (purchaseValidationCallback = this.init) == null) {
            return;
        }
        purchaseValidationCallback.onResponse(responseNetwork);
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    @Nullable
    protected final AppsFlyerRequestListener afErrorLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final boolean afRDLog() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final Map<String, Object> init() {
        return this.AFLogger$LogLevel;
    }
}
