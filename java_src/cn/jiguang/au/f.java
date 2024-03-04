package cn.jiguang.au;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.api.ReportCallBack;
import cn.jiguang.az.i;
import cn.jiguang.internal.ActionManager;
import cn.jiguang.o.c;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: e  reason: collision with root package name */
    private static final String f2122e = cn.jiguang.s.a.b(new byte[]{62, 82, 38, 113, 19, 93, 73, 85, 84, 2, 23, 92, 58, 34, 40, 115, 19, 47, 78, 84, 32, 3, 19, 40, 57, 83, 32, 114, 23, 93, 49, 82});

    /* renamed from: f  reason: collision with root package name */
    private static String f2123f = "";

    /* renamed from: g  reason: collision with root package name */
    private static String f2124g = "/v3/report";

    /* renamed from: a  reason: collision with root package name */
    public static JSONObject f2118a = null;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f2119b = true;

    /* renamed from: c  reason: collision with root package name */
    public static String f2120c = "";

    /* renamed from: d  reason: collision with root package name */
    public static boolean f2121d = true;

    public static int a(Context context, Set<String> set, JSONObject jSONObject, File file, ReportCallBack reportCallBack) {
        Object obj;
        if (jSONObject != null) {
            try {
                if (jSONObject.length() != 0) {
                    if (!cn.jiguang.f.a.d(context)) {
                        cn.jiguang.as.d.g("ReportUtils", "no network, give up upload");
                        d.a(file);
                        if (reportCallBack != null) {
                            reportCallBack.onFinish(-2);
                        }
                        return -2;
                    }
                    Pair<byte[], Integer> a10 = a(jSONObject.toString(), true, 2);
                    if (a10 != null && (obj = a10.first) != null && ((byte[]) obj).length != 0) {
                        byte[] bArr = (byte[]) obj;
                        int intValue = ((Integer) a10.second).intValue();
                        cn.jiguang.as.d.c("ReportUtils", "will upload length=" + bArr.length);
                        if (a(set, bArr.length)) {
                            i.a().a(context, i.a().a(context, jSONObject, bArr, intValue, file, set, reportCallBack));
                            return 1;
                        }
                        int a11 = a(context, bArr, intValue, set);
                        if (a11 == 0) {
                            cn.jiguang.as.d.c("ReportUtils", "http upload success json=" + cn.jiguang.f.d.a(jSONObject));
                            cn.jiguang.f.c.a(file);
                        }
                        if (a11 != 1) {
                            d.a(file);
                            if (reportCallBack != null) {
                                reportCallBack.onFinish(a11);
                            }
                        }
                        return a11;
                    }
                    cn.jiguang.as.d.g("ReportUtils", "package body failed, give up upload");
                    d.a(file);
                    if (reportCallBack != null) {
                        reportCallBack.onFinish(-1);
                    }
                    return -1;
                }
            } catch (Throwable th2) {
                try {
                    cn.jiguang.as.d.g("ReportUtils", "upload failed, error:" + th2);
                    d.a(file);
                    if (reportCallBack != null) {
                        reportCallBack.onFinish(-1);
                    }
                    return -1;
                } catch (Throwable th3) {
                    if (0 != 1) {
                        d.a(file);
                        if (reportCallBack != null) {
                            reportCallBack.onFinish(0);
                        }
                    }
                    throw th3;
                }
            }
        }
        cn.jiguang.as.d.g("ReportUtils", "upload content is empty, do nothing");
        d.a(file);
        if (reportCallBack != null) {
            reportCallBack.onFinish(-1);
        }
        return -1;
    }

    private static int a(Context context, byte[] bArr, int i9, Set<String> set) {
        g a10;
        String str;
        LinkedHashSet<String> a11 = a(context, set);
        if (a11 == null || a11.isEmpty()) {
            cn.jiguang.as.d.g("ReportUtils", "can't get url, give up upload");
            return -2;
        }
        String str2 = " type=" + set;
        for (String str3 : a11) {
            if (TextUtils.isEmpty(str3)) {
                cn.jiguang.as.d.g("ReportUtils", "can't get url, give up upload");
            } else if (Build.VERSION.SDK_INT < 28 || str3.startsWith(c.a.f2702d)) {
                if (!str3.endsWith(f2124g)) {
                    str3 = str3 + f2124g;
                }
                String str4 = str3;
                cn.jiguang.as.d.c("ReportUtils", "upload" + str2 + " to url:" + str4);
                int a12 = b.a(context, str4, bArr, i9, 3, 1).a();
                if (a12 == -3) {
                    d.a(context, cn.jiguang.d.a.e(context));
                    return -2;
                }
                if (a12 == -1) {
                    str = "upload" + str2 + " error:" + a10.b();
                } else if (a12 == 0) {
                    return 0;
                } else {
                    str = "upload" + str2 + " failed";
                }
                cn.jiguang.as.d.c("ReportUtils", str);
            } else {
                cn.jiguang.as.d.g("ReportUtils", "won't use http at device since 28");
            }
        }
        return -1;
    }

    private static Pair<byte[], Integer> a(String str, boolean z10, int i9) {
        String str2;
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (z10) {
                try {
                    bytes = cn.jiguang.f.i.a(bytes);
                } catch (IOException unused) {
                    return null;
                }
            }
            int a10 = cn.jiguang.bh.d.a();
            String a11 = cn.jiguang.bh.d.a(a10);
            if (i9 == 1) {
                str2 = "0102030405060708";
            } else if (i9 != 2) {
                return null;
            } else {
                str2 = "iop203040506aPk!";
            }
            return new Pair<>(cn.jiguang.bh.d.a(bytes, a11, str2, true), Integer.valueOf(a10));
        } catch (UnsupportedEncodingException | Exception unused2) {
            return null;
        }
    }

    private static String a() {
        return (!JCoreManager.isTestEnv() || TextUtils.isEmpty(f2120c)) ? "stats.jpush.cn" : f2120c;
    }

    public static String a(Context context, String str, String str2) {
        return a(context, str, str2, false);
    }

    public static String a(Context context, String str, String str2, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue();
        if (longValue == 0) {
            cn.jiguang.as.d.c("ReportUtils", " miss uid,generate report token failed");
            return null;
        }
        String e10 = z10 ? f2122e : cn.jiguang.f.g.e((String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.e()));
        String k10 = cn.jiguang.f.g.k(longValue + e10 + str);
        if (cn.jiguang.f.g.a(k10)) {
            return null;
        }
        try {
            return Base64.encodeToString((longValue + CertificateUtil.DELIMITER + k10 + CertificateUtil.DELIMITER + str2).getBytes(), 10);
        } catch (Exception unused) {
            cn.jiguang.as.d.i("getBasicAuthorization", "basic authorization encode failed");
            return null;
        }
    }

    public static String a(String str) {
        try {
            return cn.jiguang.bh.d.b(str, cn.jiguang.bh.a.a(), cn.jiguang.bh.a.f2502a);
        } catch (Throwable unused) {
            cn.jiguang.as.d.i("getBasicAuthorization", "basic authorization encode failed");
            return null;
        }
    }

    private static ArrayList<JSONArray> a(JSONArray jSONArray, int i9, int i10) {
        ArrayList<JSONArray> arrayList = new ArrayList<>();
        if (jSONArray != null && jSONArray.length() != 0) {
            if (jSONArray.length() == 1) {
                arrayList.add(jSONArray);
                return arrayList;
            }
            JSONArray jSONArray2 = new JSONArray();
            int i11 = 0;
            int i12 = 0;
            for (int length = jSONArray.length() - 1; length >= 0; length--) {
                JSONObject optJSONObject = jSONArray.optJSONObject(length);
                try {
                    int b10 = cn.jiguang.f.d.b(optJSONObject);
                    if (b10 != 0) {
                        int i13 = i11 + b10;
                        if (i13 > i10) {
                            break;
                        }
                        int i14 = i12 + b10;
                        if (i14 > i9) {
                            if (jSONArray2.length() > 0) {
                                arrayList.add(jSONArray2);
                            }
                            JSONArray jSONArray3 = new JSONArray();
                            try {
                                jSONArray3.put(optJSONObject);
                                jSONArray2 = jSONArray3;
                            } catch (Throwable th2) {
                                th = th2;
                                jSONArray2 = jSONArray3;
                                cn.jiguang.as.d.g("ReportUtils", "partition exception:" + th);
                            }
                        } else {
                            jSONArray2.put(optJSONObject);
                            b10 = i14;
                        }
                        i12 = b10;
                        i11 = i13;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (jSONArray2.length() > 0) {
                arrayList.add(jSONArray2);
            }
        }
        return arrayList;
    }

    public static LinkedHashSet<String> a(Context context, Set<String> set) {
        String[] split;
        StringBuilder sb2;
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        String a10 = a();
        if (!"stats.jpush.cn".equals(a10)) {
            linkedHashSet.add(a10);
            return linkedHashSet;
        }
        Set<String> b10 = a.a().b(context).b(set);
        if (b10 != null) {
            for (String str : b10) {
                if (!TextUtils.isEmpty(str)) {
                    linkedHashSet.add(str);
                }
            }
        }
        String str2 = c.a.f2702d;
        if (!TextUtils.isEmpty(a10)) {
            linkedHashSet.add(str2 + a10);
        }
        String str3 = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.a(true));
        if (!TextUtils.isEmpty(str3)) {
            for (String str4 : str3.split(",")) {
                if (!cn.jiguang.f.g.f(str4)) {
                    if (!cn.jiguang.f.g.g(str4)) {
                        sb2 = new StringBuilder();
                    } else if (!f2121d) {
                        sb2 = new StringBuilder();
                    }
                    sb2.append(str2);
                    sb2.append(str4);
                    linkedHashSet.add(sb2.toString());
                } else if (f2121d) {
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(str4);
                    linkedHashSet.add(sb2.toString());
                }
            }
        }
        cn.jiguang.as.d.c("ReportUtils", "types=" + set + " find urls=" + linkedHashSet);
        return linkedHashSet;
    }

    public static Set<String> a(JSONObject jSONObject) {
        return jSONObject == null ? new HashSet() : c(jSONObject.optJSONArray("content"));
    }

    public static JSONObject a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("platform", "a");
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue();
            if (longValue == 0) {
                cn.jiguang.as.d.g("ReportUtils", "miss uid when wrap container info");
                return null;
            }
            jSONObject.put("uid", longValue);
            String e10 = cn.jiguang.d.a.e(context);
            if (cn.jiguang.f.g.a(e10)) {
                cn.jiguang.as.d.i("ReportUtils", "miss app_key when wrap container info");
                return null;
            }
            jSONObject.put("app_key", e10);
            ActionManager.getInstance().wrapSdkVersionInfo(jSONObject);
            jSONObject.put("core_sdk_ver", cn.jiguang.a.a.f1808b);
            String g10 = cn.jiguang.d.a.g(context);
            if (cn.jiguang.f.g.a(g10)) {
                cn.jiguang.as.d.h("ReportUtils", "miss channel when wrap container info,but continue report...");
            } else {
                jSONObject.put("channel", g10);
            }
            Pair<String, Integer> c10 = cn.jiguang.c.b.c(context);
            if (c10 == null || cn.jiguang.f.g.a((String) c10.first)) {
                cn.jiguang.as.d.h("ReportUtils", "miss app version when wrap container info,but continue report...");
            } else {
                jSONObject.put("app_version", c10.first);
            }
            return jSONObject;
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("ReportUtils", "wrapContainerInfo exception:" + th2);
            return null;
        }
    }

    private static JSONObject a(JSONArray jSONArray, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("content", jSONArray);
        } catch (JSONException unused) {
        }
        cn.jiguang.f.d.a(jSONObject2, jSONObject);
        return jSONObject2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007b, code lost:
        if (r10 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
        if (r10 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
        r10.onFinish(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
        cn.jiguang.au.d.a(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0087, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r3, int r4, org.json.JSONObject r5, byte[] r6, int r7, java.io.File r8, java.util.Set<java.lang.String> r9, cn.jiguang.api.ReportCallBack r10) {
        /*
            java.lang.String r0 = "ReportUtils"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7e
            r1.<init>()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = "onTcpReportResult, types="
            r1.append(r2)     // Catch: java.lang.Throwable -> L7e
            r1.append(r9)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = " code="
            r1.append(r2)     // Catch: java.lang.Throwable -> L7e
            r1.append(r4)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7e
            cn.jiguang.as.d.c(r0, r1)     // Catch: java.lang.Throwable -> L7e
            r1 = -3
            if (r4 == r1) goto L6e
            if (r4 == 0) goto L4d
            int r4 = a(r3, r6, r7, r9)     // Catch: java.lang.Throwable -> L7e
            if (r4 != 0) goto L7b
            boolean r3 = cn.jiguang.internal.JConstants.DEBUG_MODE     // Catch: java.lang.Throwable -> L7e
            if (r3 == 0) goto L49
            boolean r3 = cn.jiguang.internal.JConstants.INTERNAL_USE     // Catch: java.lang.Throwable -> L7e
            if (r3 == 0) goto L49
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7e
            r3.<init>()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r6 = "http upload success, json="
            r3.append(r6)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r5 = cn.jiguang.f.d.a(r5)     // Catch: java.lang.Throwable -> L7e
            r3.append(r5)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L7e
            cn.jiguang.as.d.c(r0, r3)     // Catch: java.lang.Throwable -> L7e
        L49:
            cn.jiguang.f.c.a(r8)     // Catch: java.lang.Throwable -> L7e
            goto L7b
        L4d:
            boolean r3 = cn.jiguang.internal.JConstants.DEBUG_MODE     // Catch: java.lang.Throwable -> L7e
            if (r3 == 0) goto L49
            boolean r3 = cn.jiguang.internal.JConstants.INTERNAL_USE     // Catch: java.lang.Throwable -> L7e
            if (r3 == 0) goto L49
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7e
            r3.<init>()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r6 = "tcp upload success, json="
            r3.append(r6)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r5 = cn.jiguang.f.d.a(r5)     // Catch: java.lang.Throwable -> L7e
            r3.append(r5)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L7e
            cn.jiguang.as.d.c(r0, r3)     // Catch: java.lang.Throwable -> L7e
            goto L49
        L6e:
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L7e
            r6 = 0
            java.lang.String r7 = cn.jiguang.d.a.e(r3)     // Catch: java.lang.Throwable -> L7e
            r5[r6] = r7     // Catch: java.lang.Throwable -> L7e
            cn.jiguang.au.d.a(r3, r5)     // Catch: java.lang.Throwable -> L7e
        L7b:
            if (r10 == 0) goto L84
            goto L81
        L7e:
            if (r10 == 0) goto L84
        L81:
            r10.onFinish(r4)
        L84:
            cn.jiguang.au.d.a(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.au.f.a(android.content.Context, int, org.json.JSONObject, byte[], int, java.io.File, java.util.Set, cn.jiguang.api.ReportCallBack):void");
    }

    public static void a(final Context context, final Object obj) {
        try {
            if (b(obj)) {
                cn.jiguang.bg.d.a("UPLOAD_REPORT", new cn.jiguang.bg.b("ReportUtils#report") { // from class: cn.jiguang.au.f.1
                    @Override // cn.jiguang.bg.b
                    public void a() {
                        try {
                            JSONArray c10 = f.c(obj);
                            if (c10 != null) {
                                f.b(context, c10, f.c(c10));
                            } else {
                                cn.jiguang.as.d.c("ReportUtils", "data" + obj + " is empty");
                            }
                        } catch (Throwable unused) {
                        }
                    }
                });
            } else {
                cn.jiguang.as.d.c("ReportUtils", "data is invalid or empty");
            }
            d.b(context);
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("ReportUtils", "report e:" + th2);
        }
    }

    public static void a(Context context, String str, Object obj) {
        try {
            cn.jiguang.as.d.c("ReportUtils", "going to report data at push service");
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                bundle.putString(HianalyticsBaseData.SDK_TYPE, str);
            }
            if (b(obj)) {
                bundle.putString("report_data", obj.toString());
            }
            cn.jiguang.a.a.a(context, "a1", bundle);
        } catch (Throwable th2) {
            try {
                cn.jiguang.as.d.c("ReportUtils", "reportAtPushService", th2);
            } catch (Throwable th3) {
                cn.jiguang.as.d.c("ReportUtils", "reportAtPushService", th3);
            }
        }
    }

    public static void a(Context context, JSONObject jSONObject, ReportCallBack reportCallBack) {
        b(context, jSONObject, reportCallBack);
    }

    public static boolean a(Context context, String str, JSONObject jSONObject) {
        try {
            if (cn.jiguang.f.g.a(str)) {
                cn.jiguang.as.d.c("ReportUtils", "file_name is null , give up save ");
                return false;
            } else if (context != null) {
                return cn.jiguang.f.c.b(cn.jiguang.f.c.a(context, str), jSONObject != null ? jSONObject.toString() : "");
            } else {
                cn.jiguang.as.d.c("ReportUtils", "context is null , give up save " + str);
                return false;
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.c("ReportUtils", "writeLogFile e:" + th2);
            return false;
        }
    }

    private static boolean a(Set<String> set, int i9) {
        return f2119b && i9 < 30680 && set != null && !set.contains("crash_log");
    }

    public static String b(String str) {
        try {
            return cn.jiguang.bh.d.b(str, cn.jiguang.bh.a.b(), cn.jiguang.bh.a.f2503b);
        } catch (Throwable unused) {
            cn.jiguang.as.d.i("getBasicAuthorization", "basic authorization encode failed");
            return null;
        }
    }

    private static String b(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString("type");
        }
        return null;
    }

    private static JSONArray b(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return jSONArray;
        }
        JSONArray jSONArray2 = new JSONArray();
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i9);
            if (optJSONObject != null && optJSONObject.length() > 0) {
                jSONArray2.put(optJSONObject);
            }
        }
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, JSONArray jSONArray, Set<String> set) {
        try {
            String a10 = a.a().a(context).a(set);
            JSONObject a11 = a(context);
            boolean z10 = a11 != null;
            StringBuilder sb2 = new StringBuilder();
            String str = File.separator;
            sb2.append(str);
            sb2.append(a10);
            sb2.append(str);
            sb2.append(z10 ? "tmp" : "nowrap");
            String sb3 = sb2.toString();
            Iterator<JSONArray> it = a(jSONArray, 40960, 204800).iterator();
            while (it.hasNext()) {
                JSONObject a12 = a(it.next(), a11);
                File a13 = d.a(context, sb3, a12, z10);
                cn.jiguang.as.d.c("ReportUtils", "save report types=" + set + " at " + sb3 + File.separator + a13.getName());
                if (z10) {
                    a(context, set, a12, a13, null);
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("ReportUtils", "report exception:" + th2);
        }
    }

    private static void b(Context context, JSONObject jSONObject, ReportCallBack reportCallBack) {
        if (jSONObject != null) {
            try {
                if (jSONObject.length() > 0) {
                    JSONObject a10 = a(context);
                    if (a10 == null) {
                        cn.jiguang.as.d.i("ReportUtils", "wrap data failed");
                        if (reportCallBack != null) {
                            reportCallBack.onFinish(-1);
                        }
                    } else {
                        String b10 = b(jSONObject);
                        JSONObject a11 = a(new JSONArray().put(jSONObject), a10);
                        HashSet hashSet = new HashSet();
                        hashSet.add(b10);
                        cn.jiguang.as.d.c("ReportUtils", "reportWithoutStore type=" + b10);
                        a(context, hashSet, a11, null, reportCallBack);
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.i("ReportUtils", "reportWithoutStore exception:" + th2);
            }
        }
        d.b(context);
    }

    private static boolean b(Object obj) {
        return obj instanceof String ? ((String) obj).length() > 2 : obj instanceof JSONObject ? ((JSONObject) obj).length() > 0 : (obj instanceof JSONArray) && b((JSONArray) obj).length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<String> c(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        if (jSONArray != null) {
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                String b10 = b(jSONArray.optJSONObject(i9));
                if (b10 == null) {
                    b10 = "";
                }
                hashSet.add(b10);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003d A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #0 {all -> 0x0044, blocks: (B:3:0x0001, B:16:0x0037, B:18:0x003d, B:9:0x0020, B:11:0x0024, B:12:0x002e, B:14:0x0032), top: B:25:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONArray c(java.lang.Object r3) {
        /*
            r0 = 0
            boolean r1 = r3 instanceof java.lang.String     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L20
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Le
            r2 = r3
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Le
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Le
            goto L37
        Le:
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L36
            r1.<init>()     // Catch: java.lang.Throwable -> L36
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L36
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L36
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L36
            org.json.JSONArray r3 = r1.put(r2)     // Catch: java.lang.Throwable -> L36
            r1 = r3
            goto L37
        L20:
            boolean r1 = r3 instanceof org.json.JSONObject     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L2e
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L44
            r1.<init>()     // Catch: java.lang.Throwable -> L44
            org.json.JSONArray r1 = r1.put(r3)     // Catch: java.lang.Throwable -> L44
            goto L37
        L2e:
            boolean r1 = r3 instanceof org.json.JSONArray     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L36
            r1 = r3
            org.json.JSONArray r1 = (org.json.JSONArray) r1     // Catch: java.lang.Throwable -> L44
            goto L37
        L36:
            r1 = r0
        L37:
            org.json.JSONArray r3 = b(r1)     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L5b
            int r1 = r3.length()     // Catch: java.lang.Throwable -> L44
            if (r1 <= 0) goto L5b
            return r3
        L44:
            r3 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "adapt JSONArray e:"
            r1.append(r2)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            java.lang.String r1 = "ReportUtils"
            cn.jiguang.as.d.g(r1, r3)
        L5b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.au.f.c(java.lang.Object):org.json.JSONArray");
    }
}
