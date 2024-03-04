package com.unity3d.services.core.misc;

import com.unity3d.services.core.log.DeviceLog;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class JsonFlattener {
    private final JSONObject _jsonData;

    public JsonFlattener(JSONObject jSONObject) {
        this._jsonData = jSONObject;
    }

    public JSONObject flattenJson(String str, List<String> list, List<String> list2, List<String> list3) {
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<String> keys = this._jsonData.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (shouldIncludeKey(next, list, list3)) {
                    Object opt = this._jsonData.opt(next);
                    if (opt instanceof JSONObject) {
                        new JsonFlattener((JSONObject) opt).flattenJson(str, next, jSONObject, list2, list3);
                    } else {
                        jSONObject.put(next, opt);
                    }
                }
            }
        } catch (JSONException e10) {
            DeviceLog.error("Could not flatten JSON: %s", e10.getMessage());
        }
        return jSONObject;
    }

    public boolean shouldIncludeKey(String str, List<String> list, List<String> list2) {
        if (!list2.contains(str) && list.size() > 0) {
            return list.contains(str);
        }
        return false;
    }

    public void flattenJson(String str, String str2, JSONObject jSONObject, List<String> list, List<String> list2) throws JSONException {
        Iterator<String> keys = this._jsonData.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!list2.contains(next)) {
                Object obj = this._jsonData.get(next);
                String format = list.contains(next) ? str2 : String.format("%s%s%s", str2, str, next);
                if (obj instanceof JSONObject) {
                    new JsonFlattener((JSONObject) obj).flattenJson(str, format, jSONObject, list, list2);
                } else {
                    jSONObject.put(format, obj);
                }
            }
        }
    }
}
