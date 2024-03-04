package com.appsflyer.internal;

import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFb1sSDK {
    @NonNull
    public final String AFInAppEventParameterName;
    @NonNull
    public final String AFInAppEventType;
    private final boolean AFKeystoreWrapper;
    @NonNull
    public final AFe1sSDK valueOf;

    public AFb1sSDK() {
    }

    public AFb1sSDK(String str) throws JSONException {
        AFe1sSDK aFe1sSDK;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("ver");
                this.AFInAppEventParameterName = string;
                this.AFKeystoreWrapper = jSONObject.optBoolean("test_mode");
                this.AFInAppEventType = str;
                if (string.startsWith(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND)) {
                    aFe1sSDK = AFe1sSDK.DEFAULT;
                } else {
                    aFe1sSDK = AFe1sSDK.CUSTOM;
                }
                this.valueOf = aFe1sSDK;
                return;
            } catch (JSONException unused) {
                throw new JSONException("Failed to parse remote configuration JSON");
            }
        }
        throw new JSONException("Failed to parse remote configuration JSON: originalJson is null");
    }

    public static Map<String, String> AFInAppEventType(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                hashMap.put(URLEncoder.encode(entry.getKey(), "utf-8"), URLEncoder.encode(entry.getValue(), "utf-8"));
            } catch (UnsupportedEncodingException e10) {
                AFLogger.afErrorLog(e10);
            }
        }
        return hashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AFb1sSDK.class != obj.getClass()) {
            return false;
        }
        AFb1sSDK aFb1sSDK = (AFb1sSDK) obj;
        if (this.AFKeystoreWrapper == aFb1sSDK.AFKeystoreWrapper && this.AFInAppEventParameterName.equals(aFb1sSDK.AFInAppEventParameterName)) {
            return this.AFInAppEventType.equals(aFb1sSDK.AFInAppEventType);
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.AFKeystoreWrapper ? 1 : 0) * 31) + this.AFInAppEventParameterName.hashCode()) * 31) + this.AFInAppEventType.hashCode();
    }
}
