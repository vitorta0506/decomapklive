package cn.jiguang.aq;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.service.DownloadProvider;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {
    public static Bundle a(HashMap<String, String> hashMap) {
        if (hashMap == null || hashMap.isEmpty()) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (String str : hashMap.keySet()) {
            bundle.putString(str, hashMap.get(str));
        }
        return bundle;
    }

    public static cn.jiguang.ap.c a(Context context, String str) {
        try {
            return new cn.jiguang.ap.c(str, "", context.getPackageManager().getApplicationInfo(str, 0).targetSdkVersion);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeHelper", "getWakeTarget throwable:" + th2.getMessage());
            return null;
        }
    }

    public static String a(List<cn.jiguang.ap.c> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < list.size(); i9++) {
            String str = list.get(i9).f2013a;
            String str2 = list.get(i9).f2014b;
            sb2.append(str);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(str2);
            sb2.append("$");
        }
        return sb2.toString();
    }

    public static HashMap<String, cn.jiguang.ap.c> a(Context context) {
        cn.jiguang.ap.c a10;
        try {
            HashMap<String, cn.jiguang.ap.c> hashMap = new HashMap<>();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent();
            intent.setAction("cn.jpush.android.intent.DaemonService");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() != 0) {
                for (int i9 = 0; i9 < queryIntentServices.size(); i9++) {
                    ServiceInfo serviceInfo = queryIntentServices.get(i9).serviceInfo;
                    String str = serviceInfo.name;
                    String str2 = serviceInfo.packageName;
                    if (str != null && str2 != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && serviceInfo.exported && serviceInfo.enabled && !context.getPackageName().equals(str2) && (a10 = a.a(context, packageManager, str2, str)) != null) {
                        cn.jiguang.al.a.a("JWakeHelper", "wakeTarget:" + a10.toString());
                        hashMap.put(a10.f2013a, a10);
                    }
                }
                return hashMap;
            }
            return null;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeHelper", "getWakeTargetMap throwable:" + th2.getMessage());
            return null;
        }
    }

    public static HashMap<String, cn.jiguang.ap.c> a(Context context, HashMap<String, cn.jiguang.ap.c> hashMap) {
        try {
            HashMap<String, cn.jiguang.ap.c> hashMap2 = new HashMap<>();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent();
            intent.setAction("cn.jpush.android.intent.PushService");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() != 0) {
                for (int i9 = 0; i9 < queryIntentServices.size(); i9++) {
                    ServiceInfo serviceInfo = queryIntentServices.get(i9).serviceInfo;
                    String str = serviceInfo.name;
                    String str2 = serviceInfo.packageName;
                    if (str != null && str2 != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && ((hashMap == null || !hashMap.containsKey(str2)) && !context.getPackageName().equals(str2))) {
                        int checkPermission = packageManager.checkPermission(str2 + JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX, str2);
                        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str2, 128);
                        if (applicationInfo != null && applicationInfo.metaData != null) {
                            String b10 = cn.jiguang.o.d.b(context);
                            if (checkPermission == 0 && !TextUtils.isEmpty(b10) && b10.length() == 24 && !context.getPackageName().equals(applicationInfo.packageName)) {
                                cn.jiguang.ap.c cVar = new cn.jiguang.ap.c(str2, "", applicationInfo.targetSdkVersion);
                                ComponentInfo a10 = cn.jiguang.o.d.a(context, str2, (Class<?>) DownloadProvider.class);
                                if (a10 instanceof ProviderInfo) {
                                    ProviderInfo providerInfo = (ProviderInfo) a10;
                                    if (providerInfo.exported && providerInfo.enabled && providerInfo.authority != null) {
                                        if (TextUtils.equals(str2 + ".DownloadProvider", providerInfo.authority)) {
                                            cVar.f2016d = providerInfo.authority;
                                        }
                                    }
                                }
                                hashMap2.put(cVar.f2013a, cVar);
                            }
                        }
                    }
                }
                cn.jiguang.al.a.a("JWakeHelper", "getWakeAppListWithoutDService:" + hashMap2.toString());
                return hashMap2;
            }
            return null;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeHelper", "getWakeAppListWithoutDService throwable:" + th2.getMessage());
            return null;
        }
    }

    public static List<cn.jiguang.ap.c> a(Context context, List<cn.jiguang.ap.c> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            try {
                list.get(i9).f2015c = context.getPackageManager().getApplicationInfo(list.get(i9).f2013a, 128).targetSdkVersion;
            } catch (Throwable unused) {
            }
        }
        return list;
    }

    public static List<String> a(cn.jiguang.ap.a aVar, List<String> list) {
        return aVar == null ? list : c(aVar, b(aVar, list));
    }

    public static List<cn.jiguang.ap.c> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("\\$");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            String[] split2 = str2.split("\\|");
            String str3 = split2[0];
            String str4 = split2[1];
            cn.jiguang.ap.c cVar = new cn.jiguang.ap.c();
            cVar.f2013a = str3;
            cVar.f2014b = str4;
            cVar.f2021i = 1;
            cVar.f2019g = 4;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    private static List<String> a(List<String> list, List<String> list2) {
        return a(list, list2, false);
    }

    private static List<String> a(List<String> list, List<String> list2, boolean z10) {
        if (list == null || list.size() == 0) {
            return list2;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list2) {
            if (list.contains(str)) {
                if (z10) {
                    cn.jiguang.al.a.a("JWakeHelper", str + " in the white list");
                    arrayList.add(str);
                } else {
                    cn.jiguang.al.a.a("JWakeHelper", str + " in the black list");
                }
            }
            if (!z10) {
                cn.jiguang.al.a.a("JWakeHelper", str + " not in the global black list");
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private static JSONArray a(Context context, JSONArray jSONArray) {
        int i9;
        Integer valueOf;
        int i10;
        if (jSONArray != null) {
            try {
                if (jSONArray.length() <= 0) {
                    return jSONArray;
                }
                HashMap hashMap = new HashMap();
                int i11 = 0;
                while (true) {
                    i9 = 1;
                    if (i11 >= jSONArray.length()) {
                        break;
                    }
                    JSONObject jSONObject = jSONArray.getJSONObject(i11);
                    String optString = jSONObject.optString("type");
                    if ("aa3".equals(optString)) {
                        JSONArray optJSONArray = jSONObject.optJSONArray(TypedValues.AttributesType.S_TARGET);
                        if (optJSONArray == null || optJSONArray.length() <= 0) {
                            break;
                        }
                        for (int i12 = 0; i12 < optJSONArray.length(); i12++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i12);
                            String optString2 = optJSONObject.optString("package");
                            JSONArray jSONArray2 = optJSONObject.getJSONArray("data");
                            if (jSONArray2 != null) {
                                for (int i13 = 0; i13 < jSONArray2.length(); i13++) {
                                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i13);
                                    if (jSONObject2 != null) {
                                        int i14 = jSONObject2.getInt("wake_type");
                                        int i15 = jSONObject2.getInt("wake_status");
                                        if (hashMap.containsKey(optString2)) {
                                            Map map = (Map) hashMap.get(optString2);
                                            if (map.containsKey(Integer.valueOf(i14))) {
                                                Map map2 = (Map) map.get(Integer.valueOf(i14));
                                                if (map2.containsKey(Integer.valueOf(i15))) {
                                                    valueOf = Integer.valueOf(i15);
                                                    i10 = Integer.valueOf(((Integer) map2.get(Integer.valueOf(i15))).intValue() + 1);
                                                } else {
                                                    valueOf = Integer.valueOf(i15);
                                                    i10 = 1;
                                                }
                                                map2.put(valueOf, i10);
                                                map.put(Integer.valueOf(i14), map2);
                                            } else {
                                                HashMap hashMap2 = new HashMap();
                                                hashMap2.put(Integer.valueOf(i15), 1);
                                                map.put(Integer.valueOf(i14), hashMap2);
                                            }
                                            hashMap.put(optString2, map);
                                        } else {
                                            HashMap hashMap3 = new HashMap();
                                            hashMap3.put(Integer.valueOf(i15), 1);
                                            HashMap hashMap4 = new HashMap();
                                            hashMap4.put(Integer.valueOf(i14), hashMap3);
                                            hashMap.put(optString2, hashMap4);
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        cn.jiguang.al.a.d("JWakeHelper", "unkown type :" + optString);
                    }
                    i11++;
                }
                JSONArray jSONArray3 = new JSONArray();
                JSONArray jSONArray4 = new JSONArray();
                Iterator it = hashMap.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("p", entry.getKey());
                    JSONArray jSONArray5 = new JSONArray();
                    Iterator it2 = ((Map) entry.getValue()).entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry2 = (Map.Entry) it2.next();
                        Integer num = (Integer) entry2.getKey();
                        Map map3 = (Map) entry2.getValue();
                        int intValue = map3.containsKey(Integer.valueOf(i9)) ? ((Integer) map3.get(Integer.valueOf(i9))).intValue() : 0;
                        int intValue2 = map3.containsKey(101) ? ((Integer) map3.get(101)).intValue() : 0;
                        Iterator it3 = it;
                        int intValue3 = map3.containsKey(102) ? ((Integer) map3.get(102)).intValue() : 0;
                        Iterator it4 = it2;
                        int intValue4 = map3.containsKey(103) ? ((Integer) map3.get(103)).intValue() : 0;
                        jSONArray5.put(num + "_" + (intValue + intValue2 + intValue3 + intValue4) + "_" + intValue + "_" + intValue2 + "_" + intValue3 + "_" + intValue4);
                        it = it3;
                        it2 = it4;
                        i9 = 1;
                    }
                    jSONObject3.put("d", jSONArray5);
                    jSONArray4.put(jSONObject3);
                    it = it;
                    i9 = 1;
                }
                if (jSONArray4.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("t", jSONArray4);
                    jSONObject4.put("itime", cn.jiguang.o.d.h(context));
                    jSONObject4.put("type", "aa3");
                    jSONArray3.put(jSONObject4);
                }
                return jSONArray3.length() > 0 ? jSONArray3 : jSONArray;
            } catch (Throwable th2) {
                cn.jiguang.al.a.e("JWakeHelper", "merge wake json failed:" + th2.getMessage());
                return null;
            }
        }
        return jSONArray;
    }

    public static void a(Context context, cn.jiguang.ap.a aVar, List<cn.jiguang.ap.b> list) {
        if (!aVar.f2007t) {
            cn.jiguang.al.a.d("JWakeHelper", "server set do not report wake data,give up save");
            return;
        }
        JSONObject b10 = b(list);
        cn.jiguang.al.a.a("JWakeHelper", "wake json:" + b10);
        a(context, b10);
    }

    private static void a(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            cn.jiguang.al.a.a("JWakeHelper", "save wake data : " + jSONObject.toString());
            jSONObject.put("itime", cn.jiguang.o.d.h(context));
            jSONObject.put("type", "aa3");
            synchronized ("wake_cache_v2.json") {
                JSONObject a10 = cn.jiguang.s.c.a(context, "wake_cache_v2.json");
                if (a10 == null) {
                    a10 = new JSONObject();
                }
                JSONArray optJSONArray = a10.optJSONArray("content");
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                optJSONArray.put(jSONObject);
                a10.put("content", optJSONArray);
                cn.jiguang.s.c.a(context, "wake_cache_v2.json", a10);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeHelper", "saveWakeData failed:" + th2.getMessage());
        }
    }

    public static String b(HashMap<String, String> hashMap) {
        if (hashMap == null || hashMap.isEmpty()) {
            return null;
        }
        Uri.Builder builder = new Uri.Builder();
        for (String str : hashMap.keySet()) {
            builder.appendQueryParameter(str, hashMap.get(str));
        }
        return builder.toString();
    }

    private static List<String> b(cn.jiguang.ap.a aVar, List<String> list) {
        if (TextUtils.isEmpty(aVar.f2001n) || aVar.f2001n.equals("disable")) {
            return list;
        }
        List<String> list2 = aVar.f2002o;
        String str = aVar.f2001n;
        str.hashCode();
        return !str.equals("exclude") ? !str.equals("include") ? list : b(list2, list) : a(list2, list);
    }

    private static List<String> b(List<String> list, List<String> list2) {
        return a(list, list2, true);
    }

    public static JSONArray b(Context context) {
        JSONObject a10;
        synchronized ("wake_cache_v2.json") {
            a10 = cn.jiguang.s.c.a(context, "wake_cache_v2.json");
        }
        if (a10 == null) {
            a10 = new JSONObject();
        }
        JSONArray optJSONArray = a10.optJSONArray("content");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            cn.jiguang.al.a.a("JWakeHelper", "no save data");
            return null;
        }
        return a(context, optJSONArray);
    }

    private static JSONObject b(List<cn.jiguang.ap.b> list) {
        if (list == null || list.size() == 0) {
            cn.jiguang.al.a.a("JWakeHelper", "wakeUpResult is empty, no need report");
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (cn.jiguang.ap.b bVar : list) {
            try {
                HashMap<Integer, Integer> hashMap = bVar.f2012b;
                if (hashMap != null && !hashMap.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("package", bVar.f2011a);
                    JSONArray jSONArray2 = new JSONArray();
                    HashMap<Integer, Integer> hashMap2 = bVar.f2012b;
                    for (Integer num : hashMap2.keySet()) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("wake_type", num);
                        jSONObject2.put("wake_status", hashMap2.get(num));
                        jSONArray2.put(jSONObject2);
                    }
                    jSONObject.put("package", bVar.f2011a);
                    jSONObject.put("data", jSONArray2);
                    jSONArray.put(jSONObject);
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.f("JWakeHelper", "formatReportData:" + th2);
            }
        }
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put(TypedValues.AttributesType.S_TARGET, jSONArray);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject3;
    }

    private static List<String> c(cn.jiguang.ap.a aVar, List<String> list) {
        return a(aVar.f2003p, list);
    }

    public static void c(Context context) {
        synchronized ("wake_cache_v2.json") {
            cn.jiguang.s.c.a(context, "wake_cache_v2.json", (String) null);
        }
    }
}
