package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFc1bSDK extends AFc1eSDK {
    private final AFb1cSDK afRDLog;

    public AFc1bSDK(@NonNull Map<String, Object> map, @Nullable PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback, @NonNull AFc1ySDK aFc1ySDK) {
        super(AFc1lSDK.PURCHASE_VALIDATE, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, null, map, purchaseValidationCallback);
        this.afRDLog = aFc1ySDK.valueOf();
        this.valueOf.add(AFc1lSDK.CONVERSION);
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        ResponseNetwork responseNetwork = this.afDebugLog;
        if (responseNetwork == null || responseNetwork.getStatusCode() != 503) {
            return super.AFInAppEventType();
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<String> AFKeystoreWrapper(@NonNull String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("https://%sviap.%s/api/v1/android/validate_purchase?app_id=", AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(this.afRDLog.AFKeystoreWrapper.values.getPackageName());
        String obj = sb2.toString();
        String jSONObject = new JSONObject(init()).toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this);
        sb3.append(": preparing data: ");
        sb3.append(jSONObject);
        AFb1tSDK.AFKeystoreWrapper(sb3.toString());
        ((AFc1hSDK) this).afInfoLog.AFInAppEventParameterName(obj, jSONObject);
        return ((AFc1hSDK) this).AFLogger.AFInAppEventParameterName(init(), str);
    }
}
