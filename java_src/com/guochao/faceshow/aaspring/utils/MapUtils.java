package com.guochao.faceshow.aaspring.utils;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class MapUtils {
    public static void putJsonToMap(@NonNull Map<String, Object> map, @Nullable JSONObject jSONObject) {
        Map<String, Object> map2 = toMap(jSONObject);
        if (map2 != null) {
            map.putAll(map2);
        }
    }

    @NonNull
    public static Bundle toBundle(@Nullable Map<String, Object> map) {
        if (map != null && !map.isEmpty()) {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue() == null ? "" : entry.getValue().toString());
            }
            return bundle;
        }
        return new Bundle();
    }

    @NonNull
    public static JSONObject toJson(@Nullable Map<String, Object> map) {
        if (map != null && !map.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            return jSONObject;
        }
        return new JSONObject();
    }

    @Nullable
    public static Map<String, Object> toMap(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject.length() == 0) {
            return new HashMap();
        }
        Iterator<String> keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.opt(next));
        }
        return hashMap;
    }

    @NonNull
    public static Map<String, Object> toMap2(@Nullable Bundle bundle) {
        if (bundle != null && !bundle.isEmpty()) {
            ArrayMap arrayMap = new ArrayMap();
            for (String str : bundle.keySet()) {
                arrayMap.put(str, bundle.get(str));
            }
            return arrayMap;
        }
        return new HashMap();
    }

    @NonNull
    public static Map<String, String> toMap(@Nullable Bundle bundle) {
        if (bundle != null && !bundle.isEmpty()) {
            ArrayMap arrayMap = new ArrayMap();
            for (String str : bundle.keySet()) {
                arrayMap.put(str, String.valueOf(bundle.get(str)));
            }
            return arrayMap;
        }
        return new HashMap();
    }

    @NonNull
    public static JSONObject toJson(@Nullable Bundle bundle) {
        if (bundle != null && !bundle.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                try {
                    jSONObject.put(str, bundle.get(str));
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            return jSONObject;
        }
        return new JSONObject();
    }
}
