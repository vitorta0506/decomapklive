package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFb1mSDK {
    private boolean AFInAppEventParameterName;
    @NonNull
    public AFe1rSDK values;

    public AFb1mSDK() {
    }

    public AFb1mSDK(boolean z10, AFe1rSDK aFe1rSDK) {
        this.AFInAppEventParameterName = z10;
        this.values = aFe1rSDK;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static JSONObject values(String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            boolean z10 = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
            if (jSONObject.optBoolean("monitor", false) && !z10) {
                AFb1pSDK.AFKeystoreWrapper().AFInAppEventType();
            } else {
                AFb1pSDK.AFKeystoreWrapper().AFInAppEventParameterName();
                AFb1pSDK.AFKeystoreWrapper().valueOf();
            }
            if (jSONObject.has("ol_id")) {
                String optString = jSONObject.optString("ol_scheme", null);
                String optString2 = jSONObject.optString("ol_domain", null);
                String optString3 = jSONObject.optString("ol_ver", null);
                if (optString != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_SCHEME, optString);
                }
                if (optString2 != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_DOMAIN, optString2);
                }
                if (optString3 != null) {
                    AppsFlyerProperties.getInstance().set("onelinkVersion", optString3);
                    return jSONObject;
                }
                return jSONObject;
            }
            return jSONObject;
        } catch (Throwable th3) {
            th = th3;
            jSONObject2 = jSONObject;
            AFLogger.afErrorLog(th.getMessage(), th);
            AFb1pSDK.AFKeystoreWrapper().AFInAppEventParameterName();
            AFb1pSDK.AFKeystoreWrapper().valueOf();
            return jSONObject2;
        }
    }

    public final boolean AFInAppEventParameterName() {
        return this.AFInAppEventParameterName;
    }
}
