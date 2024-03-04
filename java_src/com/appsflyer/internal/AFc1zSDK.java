package com.appsflyer.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFc1zSDK implements AFc1rSDK<Map<String, Object>> {
    public static Map<String, Object> AFKeystoreWrapper(String str) throws JSONException {
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.isNull(next) ? null : jSONObject.get(next));
            }
            hashMap.remove("is_cache");
            return hashMap;
        } catch (JSONException unused) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("string_response", str);
            return hashMap2;
        }
    }

    @Override // com.appsflyer.internal.AFc1rSDK
    public final /* synthetic */ Map<String, Object> AFInAppEventType(String str) throws JSONException {
        return AFKeystoreWrapper(str);
    }
}
