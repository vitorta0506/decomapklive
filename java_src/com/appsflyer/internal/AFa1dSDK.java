package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.attribution.RequestError;
import com.appsflyer.internal.AFc1mSDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFa1dSDK implements Runnable {
    private static String AFInAppEventParameterName = null;
    private static String AFKeystoreWrapper = "https://%ssdk-services.%s/validate-android-signature";
    private WeakReference<Context> AFInAppEventType;
    private Map<String, String> AFLogger;
    private String afDebugLog;
    private String afErrorLog;
    private String afInfoLog;
    private String afRDLog;
    private String valueOf;
    private String values;

    static {
        StringBuilder sb2 = new StringBuilder("https://%svalidate.%s/api/v");
        sb2.append(AFa1aSDK.valueOf);
        sb2.append("/androidevent?buildnumber=6.9.0&app_id=");
        AFInAppEventParameterName = sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AFa1dSDK(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map) {
        this.AFInAppEventType = new WeakReference<>(context);
        this.values = str;
        this.valueOf = str2;
        this.afInfoLog = str4;
        this.afDebugLog = str5;
        this.afErrorLog = str6;
        this.AFLogger = map;
        this.afRDLog = str3;
    }

    private static AFd1tSDK values(Context context, @NonNull AFe1wSDK aFe1wSDK) {
        AFa1aSDK.values().AFInAppEventParameterName(context);
        AFc1ySDK AFInAppEventType = AFa1aSDK.values().AFInAppEventType();
        AFd1tSDK aFd1tSDK = new AFd1tSDK(aFe1wSDK, AFInAppEventType);
        AFc1mSDK afErrorLog = AFInAppEventType.afErrorLog();
        afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1tSDK));
        return aFd1tSDK;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.values;
        if (str == null || str.length() == 0 || AppsFlyerLib.getInstance().isStopped()) {
            return;
        }
        try {
            Context context = this.AFInAppEventType.get();
            if (context == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("public-key", this.valueOf);
            hashMap.put("sig-data", this.afInfoLog);
            hashMap.put("signature", this.afRDLog);
            Object hashMap2 = new HashMap(hashMap);
            Object obj = this.AFLogger;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(String.format(AFInAppEventParameterName, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
            sb2.append(context.getPackageName());
            String obj2 = sb2.toString();
            String string = AFa1aSDK.AFKeystoreWrapper(context).getString("referrer", "");
            AFa1tSDK aFe1pSDK = new AFe1pSDK(context);
            aFe1pSDK.afRDLog = string;
            AFa1aSDK values = AFa1aSDK.values();
            Map<String, Object> values2 = values.values(aFe1pSDK);
            values2.put(InAppPurchaseMetaData.KEY_PRICE, this.afDebugLog);
            values2.put(InAppPurchaseMetaData.KEY_CURRENCY, this.afErrorLog);
            values2.put("receipt_data", hashMap2);
            if (obj != null) {
                values2.put("extra_prms", obj);
            }
            values2.putAll(values.AFInAppEventType().AFLogger$LogLevel().AFInAppEventType());
            values(context, (AFe1pSDK) aFe1pSDK.AFKeystoreWrapper(values2).AFKeystoreWrapper(obj2));
            hashMap.put("dev_key", this.values);
            hashMap.put("app_id", context.getPackageName());
            hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
            String string2 = AppsFlyerProperties.getInstance().getString("advertiserId");
            if (string2 != null) {
                hashMap.put("advertiserId", string2);
            }
            AFe1tSDK aFe1tSDK = (AFe1tSDK) new AFe1tSDK().AFKeystoreWrapper(hashMap).AFKeystoreWrapper(String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
            final AFd1tSDK values3 = values(context, aFe1tSDK);
            aFe1tSDK.valueOf = new AppsFlyerRequestListener() { // from class: com.appsflyer.internal.AFa1dSDK.5
                @Override // com.appsflyer.attribution.AppsFlyerRequestListener
                public final void onError(int i9, @NonNull String str2) {
                    ResponseNetwork responseNetwork;
                    if (i9 == RequestError.RESPONSE_CODE_FAILURE && (responseNetwork = values3.afDebugLog) != null) {
                        str2 = responseNetwork.toString();
                    }
                    AFa1dSDK.valueOf(false, AFa1dSDK.this.afInfoLog, AFa1dSDK.this.afDebugLog, AFa1dSDK.this.afErrorLog, str2);
                }

                @Override // com.appsflyer.attribution.AppsFlyerRequestListener
                public final void onSuccess() {
                    try {
                        JSONObject jSONObject = new JSONObject((String) values3.afDebugLog.getBody());
                        AFLogger.afInfoLog("Validate response ok: ".concat(String.valueOf(jSONObject)));
                        AFa1dSDK.valueOf(jSONObject.optBoolean("result"), AFa1dSDK.this.afInfoLog, AFa1dSDK.this.afDebugLog, AFa1dSDK.this.afErrorLog, jSONObject.toString());
                    } catch (Exception e10) {
                        AFLogger.afErrorLog("Failed Validate request: ".concat(String.valueOf(e10)), e10);
                        AFa1dSDK.valueOf(false, AFa1dSDK.this.afInfoLog, AFa1dSDK.this.afDebugLog, AFa1dSDK.this.afErrorLog, e10.getMessage());
                    }
                }
            };
        } catch (Throwable th2) {
            if (AFa1aSDK.AFInAppEventParameterName != null) {
                AFLogger.afErrorLog("Failed Validate request + ex", th2);
                valueOf(false, this.afInfoLog, this.afDebugLog, this.afErrorLog, th2.getMessage());
            }
            AFLogger.afErrorLog(th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void valueOf(boolean z10, String str, String str2, String str3, String str4) {
        if (AFa1aSDK.AFInAppEventParameterName != null) {
            StringBuilder sb2 = new StringBuilder("Validate callback parameters: ");
            sb2.append(str);
            sb2.append(" ");
            sb2.append(str2);
            sb2.append(" ");
            sb2.append(str3);
            AFLogger.afDebugLog(sb2.toString());
            if (z10) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AFa1aSDK.AFInAppEventParameterName.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AFa1aSDK.AFInAppEventParameterName;
            if (str4 == null) {
                str4 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str4);
        }
    }
}
