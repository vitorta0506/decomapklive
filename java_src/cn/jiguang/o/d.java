package cn.jiguang.o;

import android.content.Context;
import android.content.pm.ComponentInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.f.g;
import cn.jiguang.f.h;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.local.JPushConstants;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.utils.HttpFileUtil;
import java.io.File;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {
    public static long a(Context context, long j10) {
        return cn.jiguang.d.b.a(context, j10);
    }

    public static ComponentInfo a(Context context, String str, Class<?> cls) {
        return cn.jiguang.f.a.a(context, str, cls);
    }

    public static String a() {
        return cn.jiguang.a.a.f1808b;
    }

    public static String a(int i9) {
        return h.a(i9);
    }

    public static String a(Context context) {
        return cn.jiguang.d.a.g(context);
    }

    public static String a(Context context, int i9) {
        return h.a(context, i9);
    }

    public static String a(File file) {
        return cn.jiguang.f.c.d(file);
    }

    public static JSONObject a(Context context, JSONObject jSONObject, String str) {
        return cn.jiguang.d.a.a(context, jSONObject, str);
    }

    public static void a(Context context, Bundle bundle) {
        JCoreManager.onEvent(context, "JCOMMON", 16, null, bundle, new Object[0]);
    }

    public static void a(Context context, Object obj) {
        JCoreManager.onEvent(context, "JCOMMON", 39, null, null, obj);
    }

    public static void a(Context context, Object obj, Object obj2) {
        JCoreManager.onEvent(context, "JCOMMON", 15, null, null, obj, obj2);
    }

    public static void a(Context context, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            cn.jiguang.al.a.a("JCommonPresenter", "jsonContent:" + jSONObject2);
            int optInt = jSONObject2.optInt(ServerProtocol.DIALOG_PARAM_STATE, -1);
            if (optInt == -1) {
                cn.jiguang.al.a.d("JCommonPresenter", "unknow state");
            } else if (optInt == 0) {
                cn.jiguang.al.a.a("JCommonPresenter", "turn on share process");
                cn.jiguang.av.b.a(context, optInt);
            } else if (optInt == 1) {
                cn.jiguang.al.a.a("JCommonPresenter", "turn off share process");
                cn.jiguang.av.b.a(context, optInt);
                cn.jiguang.e.a.b().a(context, cn.jiguang.d.a.f(context));
                cn.jiguang.e.a.a(context, context.getPackageName());
            } else {
                cn.jiguang.al.a.d("JCommonPresenter", "#exception - unsupport state:" + optInt);
            }
        } catch (Exception e10) {
            cn.jiguang.al.a.d("JCommonPresenter", "configReportRunningApp exception:" + e10.getMessage());
        }
    }

    public static void a(Runnable runnable) {
        cn.jiguang.av.b.a(runnable, new int[0]);
    }

    public static void a(Runnable runnable, int i9) {
        cn.jiguang.av.b.a(runnable, i9, new int[0]);
    }

    public static void a(String str) {
        cn.jiguang.av.b.a(str);
    }

    public static void a(String str, Runnable runnable) {
        a(runnable);
    }

    public static boolean a(Context context, String str) {
        return cn.jiguang.f.a.c(context, str);
    }

    public static boolean a(Context context, boolean z10, String str) {
        return JConstants.isAndroidQ(context, z10, str);
    }

    public static boolean a(File file, String str) {
        return cn.jiguang.f.c.b(file, str);
    }

    public static int b() {
        return cn.jiguang.a.a.f1809c;
    }

    public static String b(int i9) {
        return cn.jiguang.az.b.a().b(i9);
    }

    public static String b(Context context) {
        return cn.jiguang.d.a.e(context);
    }

    public static String b(String str) {
        return g.e(str);
    }

    public static void b(Runnable runnable) {
        cn.jiguang.av.b.d(runnable, new int[0]);
    }

    public static boolean b(Context context, String str) {
        return cn.jiguang.f.a.i(context, str);
    }

    public static long c(Context context) {
        return cn.jiguang.d.a.f(context);
    }

    public static String c(Context context, String str) {
        return cn.jiguang.f.a.g(context, str);
    }

    public static String c(String str) {
        return g.j(str);
    }

    public static boolean c() {
        Boolean bool;
        Boolean bool2 = cn.jiguang.a.a.f1811e;
        return (bool2 != null && bool2.booleanValue()) || ((bool = cn.jiguang.a.a.f1812f) != null && bool.booleanValue());
    }

    public static int d() {
        return JConstants.SDK_VERSION_INT;
    }

    public static File d(Context context, String str) {
        return cn.jiguang.f.c.a(context, str);
    }

    public static String d(Context context) {
        return cn.jiguang.d.a.b(context);
    }

    public static String d(String str) {
        return g.b(str);
    }

    public static void e(Context context, String str) {
        JCoreManager.onEvent(context, "", 88, null, null, str);
    }

    public static boolean e() {
        return cn.jiguang.av.b.f2130a;
    }

    public static boolean e(Context context) {
        return cn.jiguang.d.b.a(context);
    }

    public static byte[] e(String str) {
        return g.i(str);
    }

    public static String f() {
        return cn.jiguang.f.a.c();
    }

    public static String f(Context context) {
        return cn.jiguang.d.a.i(context);
    }

    public static String f(String str) {
        return cn.jiguang.bh.d.a(str);
    }

    public static long g() {
        return cn.jiguang.az.b.a().b();
    }

    public static String g(Context context) {
        return cn.jiguang.d.a.h(context);
    }

    public static String g(String str) {
        return cn.jiguang.bh.d.b(str);
    }

    public static int h() {
        try {
            Map<Integer, Bundle> d10 = cn.jiguang.az.b.a().d();
            cn.jiguang.al.a.a("JCommonPresenter", "map is " + d10.toString());
            if (d10.containsKey(2)) {
                String string = d10.get(2).getString("code");
                if (TextUtils.isDigitsOnly(string)) {
                    return Integer.parseInt(string);
                }
                return 0;
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static long h(Context context) {
        return cn.jiguang.d.b.b(context);
    }

    public static int i(Context context) {
        return cn.jiguang.bh.b.f2507a;
    }

    public static boolean j(Context context) {
        return cn.jiguang.f.a.k(context);
    }

    public static String k(Context context) {
        return cn.jiguang.f.a.l(context);
    }

    public static String l(Context context) {
        return cn.jiguang.f.a.i(context);
    }

    public static boolean m(Context context) {
        if (!a(context, true, "canGetLbsInBackGround") || e() || cn.jiguang.f.a.c(context, "android.permission.ACCESS_BACKGROUND_LOCATION")) {
            return true;
        }
        cn.jiguang.al.a.e("JCommonPresenter", "app is not in foreground and no android.permission.ACCESS_BACKGROUND_LOCATION");
        return false;
    }

    public static byte n(Context context) {
        return cn.jiguang.az.b.a().a(context);
    }

    public static String o(Context context) {
        return cn.jiguang.az.b.a().b(context);
    }

    public static String p(Context context) {
        Object a10 = cn.jiguang.az.b.a().a(context, JPushConstants.SDK_TYPE, HttpFileUtil.TIMEOUT);
        if (a10 instanceof String) {
            return (String) a10;
        }
        return null;
    }

    public static String q(Context context) {
        Pair<String, Integer> c10 = cn.jiguang.c.b.c(context);
        return (c10 == null || g.a((String) c10.first)) ? "" : (String) c10.first;
    }

    public static boolean r(Context context) {
        Object onEvent = JCoreManager.onEvent(context, "JCOMMON", 82, null, null, new Object[0]);
        if (onEvent instanceof Boolean) {
            return ((Boolean) onEvent).booleanValue();
        }
        return false;
    }
}
