package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class w {
    public static Map<String, List<q>> a(Context context, String str) {
        if (context == null) {
            return null;
        }
        Map<String, ?> a10 = g0.a(context, str);
        b(a10);
        return a(a10);
    }

    public static Map<String, List<q>> a(Context context, String str, String str2) {
        Map<String, List<q>> a10;
        Map<String, List<q>> a11;
        if ("alltype".equals(str2) || TextUtils.isEmpty(str)) {
            y.c("hmsSdk", "read all event records");
            a10 = a(context, "stat_v2_1");
            a11 = a(context, "cached_v2_1");
        } else {
            String a12 = u0.a(str, str2);
            a10 = b(context, "stat_v2_1", a12);
            a11 = b(context, "cached_v2_1", a12);
        }
        return a(a10, a11);
    }

    public static Map<String, List<q>> a(Map<String, ?> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue() instanceof String) {
                a(key, (String) entry.getValue(), hashMap);
            }
        }
        return hashMap;
    }

    public static Map<String, List<q>> a(Map<String, List<q>> map, Map<String, List<q>> map2) {
        if (map.size() == 0 && map2.size() == 0) {
            return new HashMap();
        }
        if (map.size() == 0) {
            return map2;
        }
        if (map2.size() == 0) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        hashMap.putAll(map2);
        return hashMap;
    }

    public static void a(String str, String str2, Map<String, List<q>> map) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str2);
            if (jSONArray.length() == 0) {
                return;
            }
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                q qVar = new q();
                try {
                    qVar.a(jSONArray.getJSONObject(i9));
                    arrayList.add(qVar);
                } catch (JSONException unused) {
                    y.e("hmsSdk", "JSON Exception happened when create data for report - readDataToRecord");
                }
            }
            map.put(str, arrayList);
        } catch (JSONException unused2) {
            y.e("hmsSdk", "When events turn to JSONArray,JSON Exception has happened");
        }
    }

    public static Map<String, List<q>> b(Context context, String str, String str2) {
        String a10 = g0.a(context, str, str2, "");
        HashMap hashMap = new HashMap();
        a(str2, a10, hashMap);
        return hashMap;
    }

    public static void b(Map<String, ?> map) {
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        Set<String> a10 = u0.a(b.b());
        while (it.hasNext()) {
            if (!a10.contains(it.next().getKey())) {
                it.remove();
            }
        }
    }
}
