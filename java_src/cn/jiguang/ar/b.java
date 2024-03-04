package cn.jiguang.ar;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.f.i;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: g  reason: collision with root package name */
    private static String f2051g;

    /* renamed from: h  reason: collision with root package name */
    private static HashMap<String, Integer> f2052h;

    /* renamed from: i  reason: collision with root package name */
    private static List<String> f2053i;

    /* renamed from: k  reason: collision with root package name */
    private static int f2055k;

    /* renamed from: l  reason: collision with root package name */
    private static long f2056l;

    /* renamed from: a  reason: collision with root package name */
    private static final String f2045a = cn.jiguang.s.a.b(new byte[]{59, 87, 87, 6, 101, 43, 62, 39, 85, 116, 16, 46, 74, 39, 32, 7, 19, 43, 57, 36, 40, 1, 21, 90, 78, 87, 82, 115, 24, 91, 77, 47});

    /* renamed from: b  reason: collision with root package name */
    private static final String f2046b = cn.jiguang.s.a.b(new byte[]{96, 98, 101, 64, 83, 35, 39, 57, 114, 95, 78, ByteCompanionObject.MAX_VALUE, 97, 113, 60, 90, 85, 119, 97, 121, ByteCompanionObject.MAX_VALUE, 30, 74, 105, 125, 101, 121, 30, 67, 119, 39, 96, 32, 31, 83, 105, 97, 122});

    /* renamed from: c  reason: collision with root package name */
    private static String f2047c = "";

    /* renamed from: d  reason: collision with root package name */
    private static long f2048d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static long f2049e = 43200;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicBoolean f2050f = null;

    /* renamed from: j  reason: collision with root package name */
    private static String f2054j = null;

    /* renamed from: m  reason: collision with root package name */
    private static String f2057m = ".pkg_idx_v390";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends cn.jiguang.bg.b {

        /* renamed from: a  reason: collision with root package name */
        Context f2058a;

        a(Context context) {
            this.f2058a = context;
            this.f2494h = "AppListProbeConfig";
        }

        private static int a(Context context) {
            try {
                String a10 = cn.jiguang.ar.a.a(context);
                long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue();
                if (!TextUtils.isEmpty(a10) && longValue != 0) {
                    if (f.a()) {
                        cn.jiguang.as.d.c("JAppListProbeHelper", "sdk is banned, not config request");
                        return -2;
                    }
                    cn.jiguang.as.d.c("JAppListProbeHelper", "google play not request");
                    return -2;
                }
                cn.jiguang.as.d.g("JAppListProbeHelper", "not request config, appkey is " + a10 + ", uid is " + longValue);
                return -2;
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("JAppListProbeHelper", "request app list probe failed, " + th2.getMessage());
                return -2;
            }
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            a(this.f2058a);
        }
    }

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            cn.jiguang.bg.d.a("FUTURE_TASK", new a(context));
        }
    }

    public static void a(Context context, JSONObject jSONObject) {
        if (context == null || jSONObject == null) {
            cn.jiguang.as.d.g("JAppListProbeHelper", "unexpected error, context: " + context + ", contentJson: " + jSONObject);
            return;
        }
        boolean optBoolean = jSONObject.optBoolean("use_config");
        context.getSharedPreferences("cn.jiguang.prefs", 0).edit().putBoolean("can_req_config", optBoolean).apply();
        f2050f = new AtomicBoolean(optBoolean);
        cn.jiguang.as.d.e("JAppListProbeHelper", "handle probe switch cmd, use_config: " + optBoolean);
    }

    public static String b(Context context) {
        if (context == null) {
            cn.jiguang.as.d.g("JAppListProbeHelper", "unexpected error, context is null");
            return "";
        }
        try {
            HashMap<String, Integer> e10 = e(context);
            if (e10 != null && e10.size() > 0) {
                String str = "";
                for (String str2 : e10.keySet()) {
                    Integer num = e10.get(str2);
                    if (!TextUtils.isEmpty(str2) && num.intValue() > 0) {
                        str = str + num + ContainerUtils.FIELD_DELIMITER + str2 + "&&";
                    }
                }
                String substring = !TextUtils.isEmpty(str) ? str.substring(0, str.length() - 2) : str;
                cn.jiguang.as.d.c("JAppListProbeHelper", "package index list: " + substring + ", old content: " + str);
                return substring;
            }
            cn.jiguang.as.d.c("JAppListProbeHelper", "no cache package index");
            return "";
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JAppListProbeHelper", "get package index list failed, " + th2.getMessage());
            return "";
        }
    }

    public static String c(Context context) {
        if (context == null) {
            cn.jiguang.as.d.g("JAppListProbeHelper", "unexpected error, context is null");
            return "";
        }
        try {
            HashMap<String, Integer> e10 = e(context);
            if (e10 != null && e10.size() > 0) {
                if (f2053i == null || f2056l - System.currentTimeMillis() >= 21600000) {
                    f2053i = new ArrayList();
                    f2056l = System.currentTimeMillis();
                    Object a10 = cn.jiguang.az.e.a(context, "get_installed_pkg_list", f2053i);
                    if (a10 instanceof List) {
                        f2055k = 0;
                        f2053i = (List) a10;
                    } else if (a10 instanceof Integer) {
                        f2055k = ((Integer) a10).intValue();
                        cn.jiguang.as.d.c("JAppListProbeHelper", "get install pkg list failed, err_code: " + a10);
                        return String.valueOf(a10);
                    }
                }
                List<String> list = f2053i;
                if (list != null && list.size() > 0 && f2055k == 0) {
                    String str = "";
                    for (String str2 : e10.keySet()) {
                        Integer num = e10.get(str2);
                        if (!TextUtils.isEmpty(str2) && num.intValue() > 0 && f2053i.contains(str2)) {
                            str = str + num + HiAnalyticsConstant.REPORT_VAL_SEPARATOR;
                        }
                    }
                    String substring = !TextUtils.isEmpty(str) ? str.substring(0, str.length() - 1) : str;
                    cn.jiguang.as.d.c("JAppListProbeHelper", "package index list: " + substring + ", old content: " + str);
                    return substring;
                }
                cn.jiguang.as.d.c("JAppListProbeHelper", "get installed app index for none cahce app list, errCode: " + f2055k);
                int i9 = f2055k;
                return i9 != 0 ? String.valueOf(i9) : "";
            }
            cn.jiguang.as.d.c("JAppListProbeHelper", "no package index list from cache");
            return "";
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JAppListProbeHelper", "get package index list failed, " + th2.getMessage());
            return "";
        }
    }

    public static Object d(Context context) {
        String str;
        Object a10;
        if (context == null) {
            return null;
        }
        if (!TextUtils.isEmpty(f2051g)) {
            try {
                return new JSONObject(f2051g);
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            cn.jiguang.be.a a11 = cn.jiguang.be.a.a(context);
            jSONObject.put("android_id", a11.f2459i);
            jSONObject.put("manufacturer", a11.f2462l);
            jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, a11.f2453c);
            Object a12 = cn.jiguang.az.e.a(context, "deviceinfo", null);
            if (a12 instanceof JSONObject) {
                JSONArray jSONArray = ((JSONObject) a12).getJSONArray("sim_slots");
                String str2 = "";
                String str3 = str2;
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
                    if (jSONObject2 != null) {
                        if (TextUtils.isEmpty(str2)) {
                            str2 = jSONObject2.optString("imei", "");
                            if (!TextUtils.isEmpty(str2)) {
                                jSONObject.put("imei1", str2);
                            }
                        } else {
                            str3 = jSONObject2.optString("imei", "");
                            if (!TextUtils.isEmpty(str3)) {
                                jSONObject.put("imei2", str3);
                            }
                        }
                    }
                }
                if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
                    jSONObject.put("imei1", a11.f2466p);
                }
                jSONObject.put(TPDownloadProxyEnum.USER_OS_VERSION, ((JSONObject) a12).optString(TPDownloadProxyEnum.USER_OS_VERSION, ""));
                jSONObject.put("language", ((JSONObject) a12).optString("language", ""));
                try {
                    str = jSONObject.getJSONObject("ids").optString("joad", "");
                    try {
                        if (TextUtils.isEmpty(str)) {
                            str = f2054j;
                        }
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    str = "";
                }
                if (TextUtils.isEmpty(str) && (a10 = cn.jiguang.az.e.a(context, "get_all_ids", null)) != null && (a10 instanceof JSONObject)) {
                    str = ((JSONObject) a10).optString("joad", "");
                }
                jSONObject.put("joad", str);
            }
        } catch (Throwable unused4) {
        }
        f2051g = jSONObject.toString();
        cn.jiguang.as.d.c("JAppListProbeHelper", "force dev info " + jSONObject.toString());
        return jSONObject;
    }

    private static HashMap<String, Integer> e(Context context) {
        HashMap<String, Integer> hashMap = f2052h;
        if (hashMap != null) {
            return hashMap;
        }
        HashMap<String, Integer> hashMap2 = new HashMap<>();
        if (context == null) {
            cn.jiguang.as.d.g("JAppListProbeHelper", "[readPkgIndexConfig] context is null");
            f2052h = hashMap2;
            return hashMap2;
        }
        FileInputStream fileInputStream = null;
        try {
            File a10 = cn.jiguang.f.c.a(context, f2057m);
            if (a10 != null && a10.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(a10);
                try {
                    JSONObject jSONObject = new JSONObject(cn.jiguang.bh.d.b(new String(i.a((InputStream) fileInputStream2))));
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        int optInt = jSONObject.optInt(next, 0);
                        if (!TextUtils.isEmpty(next) && optInt > 0) {
                            hashMap2.put(next, Integer.valueOf(optInt));
                        }
                    }
                    cn.jiguang.as.d.c("JAppListProbeHelper", "[readPkgIndexConfig] config json: " + jSONObject.toString());
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    try {
                        cn.jiguang.as.d.g("JAppListProbeHelper", "load objects error:" + th.getMessage());
                        f2052h = hashMap2;
                        return hashMap2;
                    } finally {
                        i.a((Closeable) fileInputStream);
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
        f2052h = hashMap2;
        return hashMap2;
    }
}
