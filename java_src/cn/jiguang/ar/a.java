package cn.jiguang.ar;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import cn.jiguang.f.g;
import cn.jiguang.internal.JConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f2038a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f2039b;

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f2040c;

    /* renamed from: d  reason: collision with root package name */
    private static Pair<String, Integer> f2041d;

    /* renamed from: e  reason: collision with root package name */
    private static final ArrayList<String> f2042e;

    /* renamed from: f  reason: collision with root package name */
    private static final ArrayList<String> f2043f;

    /* renamed from: g  reason: collision with root package name */
    private static final ArrayList<String> f2044g;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f2042e = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        f2043f = arrayList2;
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        arrayList2.add("android.permission.WAKE_LOCK");
        arrayList2.add("android.permission.VIBRATE");
        arrayList2.add("android.permission.CHANGE_WIFI_STATE");
        arrayList2.add("android.permission.WRITE_EXTERNAL_STORAGE");
        ArrayList<String> arrayList3 = new ArrayList<>();
        f2044g = arrayList3;
        arrayList3.add("android.permission.ACCESS_FINE_LOCATION");
        arrayList3.add("android.permission.ACCESS_COARSE_LOCATION");
        arrayList3.add("android.permission.ACCESS_LOCATION_EXTRA_COMMANDS");
        arrayList3.add("android.permission.ACCESS_WIFI_STATE");
    }

    public static String a(Context context) {
        try {
            if (f2040c == null && !TextUtils.isEmpty(JConstants.APP_KEY)) {
                return JConstants.APP_KEY;
            }
        } catch (Throwable unused) {
            f2040c = Boolean.FALSE;
        }
        b(context);
        return f2038a;
    }

    public static String a(Bundle bundle, String str) {
        Object obj;
        if (bundle == null || (obj = bundle.get(str)) == null) {
            return null;
        }
        return obj.toString();
    }

    public static void a(Context context, String str) {
        f2039b = str;
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.l().a((cn.jiguang.g.a<String>) str));
        c(context);
    }

    public static String b(Context context) {
        Bundle bundle;
        if (TextUtils.isEmpty(f2038a)) {
            if (TextUtils.isEmpty(f2038a)) {
                try {
                    if (context != null) {
                        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                            String a10 = a(bundle, "JPUSH_APPKEY");
                            f2038a = a10;
                            if (!TextUtils.isEmpty(a10)) {
                                f2038a = f2038a.toLowerCase(Locale.getDefault());
                            }
                        }
                    } else {
                        cn.jiguang.as.d.c("CheckManifestHelper", "[getAppKey] context is null");
                    }
                } catch (Throwable unused) {
                }
            }
            return f2038a;
        }
        return f2038a;
    }

    public static String c(Context context) {
        StringBuilder sb2;
        Bundle bundle;
        if (f2039b == null && context != null) {
            try {
                String c10 = cn.jiguang.d.a.c(context);
                f2039b = c10;
                if (c10 != null) {
                    sb2 = new StringBuilder();
                    sb2.append("get option channel - ");
                    sb2.append(f2039b);
                } else {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                        String a10 = a(bundle, "JPUSH_CHANNEL");
                        f2039b = a10;
                        if (!TextUtils.isEmpty(a10)) {
                            f2039b = g.b(f2039b);
                        }
                    }
                    sb2 = new StringBuilder();
                    sb2.append("manifest:channel - ");
                    sb2.append(f2039b);
                }
                cn.jiguang.as.d.d("CheckManifestHelper", sb2.toString());
            } catch (Throwable unused) {
            }
        }
        return f2039b;
    }

    public static Pair<String, Integer> d(Context context) {
        if (f2041d == null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                String str = packageInfo.versionName;
                if (str != null && str.length() > 30) {
                    str = str.substring(0, 30);
                }
                f2041d = new Pair<>(str, Integer.valueOf(packageInfo.versionCode));
            } catch (Throwable unused) {
                cn.jiguang.as.d.d("CheckManifestHelper", "NO versionCode or versionName defined in manifest.");
            }
        }
        return f2041d;
    }

    public static boolean e(Context context) {
        String str;
        String a10 = a(context);
        if (TextUtils.isEmpty(a10)) {
            cn.jiguang.as.d.j("CheckManifestHelper", "errorcode:10001,metadata: JCore appKey - not defined in manifest");
            str = " 未在manifest中配置AppKey";
        } else if (a10.length() == 24) {
            return true;
        } else {
            cn.jiguang.as.d.j("CheckManifestHelper", "errorcode:1008,Invalid appKey : " + a10 + ", Please get your Appkey from JIGUANG web console!");
            str = " AppKey:" + a10 + " 是无效的AppKey,请确认与JIGUANG web端的AppKey一致";
        }
        cn.jiguang.f.a.a(context, str, -1);
        return false;
    }

    public static boolean f(Context context) {
        StringBuilder sb2;
        c(context);
        if (c.a().c() || c.a().b()) {
            String str = context.getPackageName() + cn.jiguang.a.a.f1807a;
            if (!cn.jiguang.f.a.i(context, str)) {
                sb2 = new StringBuilder();
                sb2.append("The permission should be defined - ");
                sb2.append(str);
                cn.jiguang.as.d.j("CheckManifestHelper", sb2.toString());
                return false;
            }
            f2042e.add(str);
        }
        Iterator<String> it = f2042e.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!cn.jiguang.f.a.c(context, next)) {
                sb2 = new StringBuilder();
                sb2.append("The permissoin is required - ");
                sb2.append(next);
                cn.jiguang.as.d.j("CheckManifestHelper", sb2.toString());
                return false;
            }
        }
        Iterator<String> it2 = f2043f.iterator();
        while (it2.hasNext()) {
            String next2 = it2.next();
            if (!cn.jiguang.f.a.i(context, next2)) {
                cn.jiguang.as.d.g("CheckManifestHelper", "We recommend you add the permission - " + next2);
            }
        }
        Iterator<String> it3 = f2044g.iterator();
        while (it3.hasNext()) {
            String next3 = it3.next();
            if (!cn.jiguang.f.a.i(context, next3)) {
                cn.jiguang.as.d.g("CheckManifestHelper", "We recommend you add the permission - " + next3 + ", otherwise you can not locate the devices.");
            }
        }
        return true;
    }
}
