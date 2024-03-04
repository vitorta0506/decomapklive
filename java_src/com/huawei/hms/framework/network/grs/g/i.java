package com.huawei.hms.framework.network.grs.g;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class i {
    public static String a(String str, String str2) {
        return !str.equals(str2) ? b(str, str2) : str;
    }

    private static String b(String str, String str2) {
        HashSet<String> hashSet = new HashSet();
        if (!TextUtils.isEmpty(str)) {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("services");
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                hashSet.add(jSONArray.getString(i9));
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            JSONArray jSONArray2 = new JSONObject(str2).getJSONArray("services");
            for (int i10 = 0; i10 < jSONArray2.length(); i10++) {
                hashSet.add(jSONArray2.getString(i10));
            }
        }
        if (hashSet.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray3 = new JSONArray();
        for (String str3 : hashSet) {
            jSONArray3.put(str3);
        }
        jSONObject.put("services", jSONArray3);
        return jSONObject.toString();
    }
}
