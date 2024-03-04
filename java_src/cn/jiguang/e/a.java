package cn.jiguang.e;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import cn.jiguang.as.d;
import cn.jiguang.az.e;
import cn.jiguang.az.h;
import cn.jiguang.az.j;
import cn.jiguang.bg.b;
import cn.jiguang.f.c;
import cn.jiguang.f.g;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.service.DownloadProvider;
import com.facebook.GraphResponse;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.utils.PushUtils;
import com.meizu.cloud.pushsdk.notification.model.AppIconSetting;
import java.io.File;
import java.io.LineNumberReader;
import java.io.StringReader;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f2541b;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f2542f;

    /* renamed from: g  reason: collision with root package name */
    private static Boolean f2543g;

    /* renamed from: i  reason: collision with root package name */
    private static Boolean f2544i;

    /* renamed from: k  reason: collision with root package name */
    private static a f2545k;

    /* renamed from: a  reason: collision with root package name */
    Context f2546a;

    /* renamed from: c  reason: collision with root package name */
    private int f2547c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f2548d;

    /* renamed from: e  reason: collision with root package name */
    private String f2549e;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f2550j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f2551l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cn.jiguang.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0038a {

        /* renamed from: b  reason: collision with root package name */
        private int f2555b = -1;

        /* renamed from: c  reason: collision with root package name */
        private String f2556c;

        /* renamed from: d  reason: collision with root package name */
        private long f2557d;

        /* renamed from: e  reason: collision with root package name */
        private String f2558e;

        /* renamed from: f  reason: collision with root package name */
        private String f2559f;

        /* renamed from: g  reason: collision with root package name */
        private int f2560g;

        /* renamed from: h  reason: collision with root package name */
        private long f2561h;

        /* renamed from: i  reason: collision with root package name */
        private String f2562i;

        C0038a() {
        }

        public String toString() {
            return "ShareProcessBean{idc=" + this.f2555b + ", uuid='" + this.f2556c + "', uid=" + this.f2557d + ", pkgname='" + this.f2558e + "', appkey='" + this.f2559f + "', sdkVersion=" + this.f2560g + ", uuidCreateTime=" + this.f2561h + ", deviceId=" + this.f2562i + '}';
        }
    }

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(".jpush");
        String str = File.separator;
        sb2.append(str);
        sb2.append(".shareinfo");
        sb2.append(str);
        f2541b = sb2.toString();
        f2542f = new Object();
    }

    private a() {
        cn.jiguang.av.b.a("share_process_executor");
        this.f2494h = "ShareProcessManager";
    }

    private static ActivityInfo a(String str, Context context) {
        String str2;
        try {
            Intent intent = new Intent();
            intent.setAction("cn.jpush.android.intent.DownloadActivity");
            intent.addCategory(str);
            intent.setPackage(str);
            ActivityInfo activityInfo = context.getPackageManager().resolveActivity(intent, 0).activityInfo;
            if ((activityInfo instanceof ActivityInfo) && ((ComponentInfo) activityInfo).exported && ((ComponentInfo) activityInfo).enabled) {
                if (!"jpush.custom".equals(activityInfo.taskAffinity)) {
                    str2 = "download activity need config taskAffinity is jpush.custom";
                } else if (activityInfo.theme == 16973840) {
                    return activityInfo;
                } else {
                    str2 = "download activity theme must config as @android:style/Theme.Translucent.NoTitleBar";
                }
                d.c("ShareProcessManager", str2);
            }
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "check downloadActivity error:" + th2.getMessage());
        }
        d.c("ShareProcessManager", "DownloadActivity is invalid in " + str);
        return null;
    }

    private C0038a a(String str) {
        Throwable th2;
        C0038a c0038a;
        try {
        } catch (Throwable th3) {
            th2 = th3;
            c0038a = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        c0038a = new C0038a();
        try {
            long optLong = jSONObject.optLong("u");
            String optString = jSONObject.optString("ak");
            String optString2 = jSONObject.optString("pn");
            String optString3 = jSONObject.optString("ud");
            int optInt = jSONObject.optInt("idc", -1);
            int optInt2 = jSONObject.optInt("sv");
            long optLong2 = jSONObject.optLong("uct", -1L);
            String optString4 = jSONObject.optString(AppIconSetting.DEFAULT_LARGE_ICON);
            c0038a.f2557d = optLong;
            c0038a.f2556c = optString3;
            c0038a.f2559f = optString;
            c0038a.f2555b = optInt;
            c0038a.f2558e = optString2;
            c0038a.f2560g = optInt2;
            c0038a.f2561h = optLong2;
            c0038a.f2562i = optString4;
        } catch (Throwable th4) {
            th2 = th4;
            d.g("ShareProcessManager", "parse json to shareBean failed:" + th2.getMessage());
            return c0038a;
        }
        return c0038a;
    }

    public static String a(Context context, Uri uri) {
        try {
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "parseUriFromProvider failed:" + th2.getMessage());
        }
        if (uri == null) {
            return cn.jiguang.a.a.f1808b;
        }
        String queryParameter = uri.getQueryParameter("kpgt");
        if (TextUtils.isEmpty(queryParameter)) {
            return cn.jiguang.a.a.f1808b;
        }
        String b10 = cn.jiguang.bh.d.b(queryParameter);
        if (TextUtils.isEmpty(b10)) {
            return "-6";
        }
        JSONObject jSONObject = new JSONObject(b10);
        String optString = jSONObject.optString("kta");
        d.c("ShareProcessManager", "action:" + optString);
        if (!TextUtils.isEmpty(optString)) {
            if (optString.equals("asai")) {
                return e(context);
            }
            if (optString.equals("asm")) {
                d.c("ShareProcessManager", "recv msg:" + jSONObject.toString());
                if (g(context) && ((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.k())).intValue() != 1) {
                    Bundle bundle = new Bundle();
                    bundle.putString("data", jSONObject.toString());
                    cn.jiguang.c.b.a(context, JConstants.SDK_TYPE, "asm", bundle);
                    return "0";
                }
                d.c("ShareProcessManager", "share process is closed!");
                return "-4";
            } else if (optString.equals("asmr")) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("data", jSONObject.toString());
                cn.jiguang.c.b.a(context, JConstants.SDK_TYPE, "asmr", bundle2);
            }
        }
        return cn.jiguang.a.a.f1808b;
    }

    private String a(Context context, String str, String str2, HashMap<String, String> hashMap) {
        try {
            ContentResolver contentResolver = context.getApplicationContext().getContentResolver();
            String str3 = str + ".DownloadProvider";
            if (!str3.startsWith("content://")) {
                str3 = "content://" + str3;
            }
            Uri parse = Uri.parse(str3);
            JSONObject jSONObject = new JSONObject();
            Uri.Builder buildUpon = parse.buildUpon();
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("kta", str2);
            }
            if (hashMap != null && !hashMap.isEmpty()) {
                for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
            buildUpon.appendQueryParameter("kpgt", cn.jiguang.bh.d.a(jSONObject.toString()));
            return contentResolver.getType(buildUpon.build());
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "callUriToDownloadProvider error:" + th2.getMessage());
            return null;
        }
    }

    private static JSONObject a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (Throwable th2) {
                d.g("ShareProcessManager", "mapToJSONObject error:" + th2.getMessage());
            }
        }
        return jSONObject;
    }

    public static void a(Context context, String str) {
        String str2;
        if (context == null || TextUtils.isEmpty(str)) {
            d.g("ShareProcessManager", "deletFileIfUninstall failed ,context is null or pkgname is empty");
            return;
        }
        try {
            if (cn.jiguang.f.a.c(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                File b10 = b(str);
                if (b10.exists()) {
                    b10.delete();
                    return;
                }
                str2 = "not found file in sdcard,filepath:" + b10.getAbsolutePath();
            } else {
                str2 = "no write sdcard permission when deletFileIfUninstall";
            }
            d.c("ShareProcessManager", str2);
        } catch (Throwable unused) {
        }
    }

    private boolean a(String str, ComponentInfo componentInfo) {
        if (componentInfo == null || !(componentInfo instanceof ProviderInfo)) {
            return false;
        }
        ProviderInfo providerInfo = (ProviderInfo) componentInfo;
        d.a("ShareProcessManager", "scan exported:" + providerInfo.exported + ",enable:" + providerInfo.enabled + ",authority:" + providerInfo.authority + ",process:" + providerInfo.processName);
        if (providerInfo.exported && providerInfo.enabled && !TextUtils.isEmpty(providerInfo.authority)) {
            if (TextUtils.equals(str + ".DownloadProvider", providerInfo.authority)) {
                return true;
            }
        }
        d.c("ShareProcessManager", "downloadprovider config error,exported:" + providerInfo.exported + ",enable:" + providerInfo.enabled + ",authority:" + providerInfo.authority + ",process:" + providerInfo.processName);
        return false;
    }

    private C0038a b(Context context, String str) {
        C0038a c10;
        try {
            String a10 = a(context, str, "asai", null);
            d.c("ShareProcessManager", "get type from:" + str + ",info:" + a10);
            if (a10 != null) {
                if (TextUtils.isEmpty(a10) || a10.length() <= 10) {
                    d.c("ShareProcessManager", "is not shareprocessbean info");
                    return null;
                }
                String b10 = cn.jiguang.bh.d.b(a10);
                if (TextUtils.isEmpty(b10)) {
                    d.c("ShareProcessManager", "decrypt error");
                    return null;
                }
                d.c("ShareProcessManager", "parse success:" + b10);
                c10 = a(b10);
            } else if (!f(context)) {
                return null;
            } else {
                c10 = c(context, str);
            }
            return c10;
        } catch (Throwable th2) {
            d.h("ShareProcessManager", "scanShareProcessBean error:" + th2.getMessage());
            return null;
        }
    }

    public static a b() {
        if (f2545k == null) {
            synchronized (f2542f) {
                if (f2545k == null) {
                    f2545k = new a();
                }
            }
        }
        return f2545k;
    }

    private static File b(String str) {
        String d10 = g.d(str);
        if (!TextUtils.isEmpty(d10)) {
            str = d10;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        return new File(externalStorageDirectory, f2541b + str);
    }

    private C0038a c(Context context, String str) {
        String str2;
        StringBuilder sb2;
        String str3;
        if (JConstants.isAndroidQ(context, false, "do not get share info from SD")) {
            return null;
        }
        if (cn.jiguang.f.a.c(context, "android.permission.READ_EXTERNAL_STORAGE")) {
            File b10 = b(str);
            String d10 = c.d(b10);
            if (TextUtils.isEmpty(d10)) {
                d.c("ShareProcessManager", "read info is empty from :" + b10.getAbsolutePath());
                return null;
            }
            C0038a a10 = a(cn.jiguang.bh.d.b(d10));
            if (a10 == null) {
                sb2 = new StringBuilder();
                str3 = "parse share process bean with target app:";
            } else if (!cn.jiguang.f.a.h(context, a10.f2558e)) {
                d.c("ShareProcessManager", "found target app is uninsatll when scan sdcard,pkgname:" + a10.f2558e);
                a(context, a10.f2558e);
                return null;
            } else if (a(a10.f2558e, context) != null) {
                d.c("ShareProcessManager", "get share bean info from sdcard:" + a10.toString());
                return a10;
            } else {
                sb2 = new StringBuilder();
                str3 = "not config DownloadActivity in target app:";
            }
            sb2.append(str3);
            sb2.append(str);
            str2 = sb2.toString();
        } else {
            str2 = "no read sdcard permission";
        }
        d.c("ShareProcessManager", str2);
        return null;
    }

    private static String c() {
        return "cn.jpush.android.intent.DaemonService";
    }

    private Set<C0038a> c(Context context) {
        int i9;
        List<ResolveInfo> queryIntentServices;
        HashSet hashSet = new HashSet();
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent();
            intent.setAction(c());
            queryIntentServices = packageManager.queryIntentServices(intent, 0);
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "scanOtherApp error:" + th2.getMessage());
        }
        if (queryIntentServices != null && queryIntentServices.size() != 0) {
            List<String> arrayList = new ArrayList();
            for (i9 = 0; i9 < queryIntentServices.size(); i9++) {
                ServiceInfo serviceInfo = queryIntentServices.get(i9).serviceInfo;
                String str = serviceInfo.name;
                String str2 = serviceInfo.packageName;
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !context.getPackageName().equals(str2) && a(str2, cn.jiguang.f.a.b(context, str2, DownloadProvider.class))) {
                    arrayList.add(str2);
                }
            }
            d.c("ShareProcessManager", "valid size:" + arrayList.size());
            Object a10 = e.a(context, "filter_pkg_list", arrayList);
            if (a10 instanceof List) {
                arrayList = (List) a10;
            }
            d.c("ShareProcessManager", "valid end size:" + arrayList.size());
            for (String str3 : arrayList) {
                C0038a b10 = b(context, str3);
                d.c("ShareProcessManager", "scan share bean from:" + str3);
                if (b10 != null) {
                    hashSet.add(b10);
                }
            }
            d.c("ShareProcessManager", "end share bean list size:" + hashSet.size());
            return hashSet;
        }
        d.c("ShareProcessManager", "query service size is empty");
        return hashSet;
    }

    private void d(Context context) {
        try {
            if (JConstants.isAndroidQ(context, false, "do not save ShareInfo to SD")) {
                return;
            }
            if (cn.jiguang.f.a.c(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                File b10 = b(context.getPackageName());
                if (f(context)) {
                    String e10 = e(context);
                    d.c("ShareProcessManager", "save info to sdcard:" + b10.getAbsolutePath());
                    if (!TextUtils.isEmpty(e10) && e10.length() > 10) {
                        c.a(b10);
                        c.b(b10, e10);
                    }
                } else {
                    c.a(b10);
                }
            } else {
                d.c("ShareProcessManager", "no write sdcard permission");
            }
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "saveShareInfoToSdCard failed:" + th2.getMessage());
        }
    }

    private static String e(Context context) {
        long j10;
        String str;
        if (context == null) {
            return PushUtils.CHAT_PUSH_TYPE;
        }
        if (!g(context) || cn.jiguang.d.a.m(context) != 0) {
            d.c("ShareProcessManager", "[getTypeJson]share process is close by action");
            return "-4";
        } else if (!cn.jiguang.ar.c.a().a(context)) {
            d.c("ShareProcessManager", "getAttachJson,is not support jpush or jmessage ");
            return "-7";
        } else {
            int k10 = cn.jiguang.d.a.k(context);
            if (k10 < 0) {
                d.c("ShareProcessManager", "[getTypeJson]idc<0,need login to get it");
                return "-3";
            }
            long f10 = cn.jiguang.d.a.f(context);
            if (f10 <= 0) {
                d.c("ShareProcessManager", "[getTypeJson]uid<=0,need login to get it");
                return "-2";
            }
            Map map = (Map) cn.jiguang.d.a.j(context);
            if (map != null) {
                str = (String) map.get("uuid");
                j10 = ((Long) map.get(UserDataStore.CITY)).longValue();
            } else {
                j10 = -1;
                str = "";
            }
            String e10 = cn.jiguang.d.a.e(context);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("u", f10);
                jSONObject.put("p", cn.jiguang.d.a.i(context));
                jSONObject.put("ud", str);
                jSONObject.put("ak", e10);
                jSONObject.put("idc", k10);
                jSONObject.put("pn", context.getPackageName());
                jSONObject.put("sv", cn.jiguang.a.a.f1809c);
                jSONObject.put("uct", j10);
                jSONObject.put(AppIconSetting.DEFAULT_LARGE_ICON, cn.jiguang.bh.b.a(context));
                return cn.jiguang.bh.d.a(jSONObject.toString());
            } catch (JSONException unused) {
                d.c("ShareProcessManager", "[getTypeJson] to json error");
                return cn.jiguang.a.a.f1808b;
            }
        }
    }

    private static boolean f(Context context) {
        Boolean bool = f2544i;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            String str = Build.MANUFACTURER;
            String lowerCase = "Xiaomi".toLowerCase();
            if (!TextUtils.isEmpty(str) && TextUtils.equals(lowerCase, str.toLowerCase())) {
                d.c("ShareProcessManager", "xiaomi not use activity and sdcard");
                Boolean bool2 = Boolean.FALSE;
                f2544i = bool2;
                return bool2.booleanValue();
            }
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "get MANUFACTURER failed - error:" + th2.getMessage());
        }
        f2544i = a(context.getPackageName(), context) != null ? Boolean.TRUE : Boolean.FALSE;
        return f2544i.booleanValue();
    }

    private static boolean g(Context context) {
        Boolean bool = f2543g;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context == null) {
            d.g("ShareProcessManager", "context is null");
            return true;
        }
        try {
            ProviderInfo b10 = cn.jiguang.f.a.b(context, context.getPackageName(), DownloadProvider.class);
            if (b10 == null) {
                d.c("ShareProcessManager", "not found download provider in manifest");
                Boolean bool2 = Boolean.FALSE;
                f2543g = bool2;
                return bool2.booleanValue();
            }
            if (((ComponentInfo) b10).enabled && ((ComponentInfo) b10).exported && !TextUtils.isEmpty(b10.authority)) {
                Intent intent = new Intent();
                intent.setPackage(context.getPackageName());
                intent.setAction("cn.jiguang.android.share.close");
                List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                f2543g = (queryIntentServices == null || queryIntentServices.isEmpty()) ? Boolean.TRUE : Boolean.FALSE;
                return f2543g.booleanValue();
            }
            d.c("ShareProcessManager", "download provider config error,enable" + ((ComponentInfo) b10).enabled + ",exported:" + ((ComponentInfo) b10).exported + ",authority:" + b10.authority);
            Boolean bool3 = Boolean.FALSE;
            f2543g = bool3;
            return bool3.booleanValue();
        } catch (Throwable th2) {
            d.c("ShareProcessManager", "Get isShareProcessModeOpen error#:" + th2.getMessage());
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00c7 A[Catch: all -> 0x02b8, TryCatch #1 {all -> 0x02b8, blocks: (B:3:0x0005, B:5:0x000d, B:7:0x0026, B:14:0x008e, B:16:0x0096, B:19:0x009e, B:20:0x00c1, B:22:0x00c7, B:24:0x00d3, B:26:0x00db, B:29:0x00ec, B:30:0x00f0, B:32:0x00f6, B:36:0x0103, B:38:0x0117, B:40:0x011d, B:42:0x0172, B:44:0x0182, B:51:0x01d0, B:53:0x01dc, B:54:0x01e9, B:48:0x0196, B:55:0x01ee, B:60:0x0234, B:61:0x0239, B:70:0x0270, B:64:0x0245, B:68:0x0268, B:65:0x0252, B:67:0x025a, B:69:0x026b, B:71:0x02ae, B:13:0x0055), top: B:83:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6 A[Catch: all -> 0x02b8, TRY_LEAVE, TryCatch #1 {all -> 0x02b8, blocks: (B:3:0x0005, B:5:0x000d, B:7:0x0026, B:14:0x008e, B:16:0x0096, B:19:0x009e, B:20:0x00c1, B:22:0x00c7, B:24:0x00d3, B:26:0x00db, B:29:0x00ec, B:30:0x00f0, B:32:0x00f6, B:36:0x0103, B:38:0x0117, B:40:0x011d, B:42:0x0172, B:44:0x0182, B:51:0x01d0, B:53:0x01dc, B:54:0x01e9, B:48:0x0196, B:55:0x01ee, B:60:0x0234, B:61:0x0239, B:70:0x0270, B:64:0x0245, B:68:0x0268, B:65:0x0252, B:67:0x025a, B:69:0x026b, B:71:0x02ae, B:13:0x0055), top: B:83:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0103 A[Catch: all -> 0x02b8, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x02b8, blocks: (B:3:0x0005, B:5:0x000d, B:7:0x0026, B:14:0x008e, B:16:0x0096, B:19:0x009e, B:20:0x00c1, B:22:0x00c7, B:24:0x00d3, B:26:0x00db, B:29:0x00ec, B:30:0x00f0, B:32:0x00f6, B:36:0x0103, B:38:0x0117, B:40:0x011d, B:42:0x0172, B:44:0x0182, B:51:0x01d0, B:53:0x01dc, B:54:0x01e9, B:48:0x0196, B:55:0x01ee, B:60:0x0234, B:61:0x0239, B:70:0x0270, B:64:0x0245, B:68:0x0268, B:65:0x0252, B:67:0x025a, B:69:0x026b, B:71:0x02ae, B:13:0x0055), top: B:83:0x0005 }] */
    @Override // cn.jiguang.bg.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.e.a.a():void");
    }

    public synchronized void a(Context context) {
        if (g(context) && cn.jiguang.av.b.c(context) == 0) {
            if (!cn.jiguang.ar.c.a().a(context)) {
                d.c("ShareProcessManager", "is not support jpush or jmessage ");
                return;
            }
            Object a10 = e.a(context, "getwakeenable", null);
            if ((a10 instanceof Boolean) && !((Boolean) a10).booleanValue()) {
                d.c("ShareProcessManager", "wake disable,not scan share app");
                return;
            } else if (this.f2550j) {
                d.c("ShareProcessManager", "isAttaching");
                return;
            } else {
                this.f2546a = context;
                this.f2550j = true;
                d.c("ShareProcessManager", "scanOtherApp...");
                this.f2547c = 0;
                cn.jiguang.av.b.c(this, new int[0]);
                return;
            }
        }
        d.c("ShareProcessManager", "share process is close by action");
        a(context, context.getPackageName());
    }

    public void a(Context context, int i9) {
        d.c("ShareProcessManager", "requestTimeOut,cmd:" + i9 + ",isAttaching:" + this.f2550j);
        if (i9 != 30 || this.f2550j) {
            return;
        }
        this.f2547c++;
        d.c("ShareProcessManager", "attachTimeoutTimes:" + this.f2547c + ",requestUIDS:" + this.f2548d + ",shareProcessUUID:" + this.f2549e);
        if (this.f2547c > 2) {
            d.c("ShareProcessManager", "attach too many times by once scan");
            return;
        }
        long[] jArr = this.f2548d;
        if (jArr == null || jArr.length <= 0 || TextUtils.isEmpty(this.f2549e)) {
            return;
        }
        d.c("ShareProcessManager", "will retry attach");
        cn.jiguang.av.b.a(context, JConstants.SDK_TYPE, 30, 0, j.b(), 0L, cn.jiguang.bb.b.a(cn.jiguang.d.a.f(context), this.f2549e, this.f2548d));
    }

    public void a(Context context, int i9, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("request");
        sb2.append(i9 == 0 ? GraphResponse.SUCCESS_KEY : "failed");
        sb2.append(",cmd:");
        sb2.append(i10);
        sb2.append(",code:");
        sb2.append(i9);
        d.c("ShareProcessManager", sb2.toString());
        if (i10 == 30 && i9 == 0) {
            this.f2547c = 0;
        }
    }

    public void a(Context context, long j10) {
        try {
            if (TextUtils.isEmpty(this.f2549e)) {
                d.c("ShareProcessManager", "dettachUid error,shareUUID is empty");
                return;
            }
            d.c("ShareProcessManager", "dettach uid:" + j10);
            cn.jiguang.av.b.a(context, JConstants.SDK_TYPE, 32, 0, j.b(), 0L, cn.jiguang.bb.b.a(this.f2549e, new long[]{j10}));
        } catch (Throwable th2) {
            d.c("ShareProcessManager", "dettach uid error:" + th2.getMessage());
        }
    }

    public void a(Context context, long j10, byte[] bArr) {
        String str;
        long j11;
        if (j10 == 0 || bArr == null) {
            return;
        }
        try {
            Pair<cn.jiguang.bb.c, ByteBuffer> a10 = cn.jiguang.bb.a.a(context, bArr, "");
            if (a10 != null && ((cn.jiguang.bb.c) a10.first).f2406c == 3) {
                ByteBuffer byteBuffer = (ByteBuffer) a10.second;
                byteBuffer.get();
                long j12 = byteBuffer.getLong();
                String a11 = cn.jiguang.bb.b.a(byteBuffer);
                if (TextUtils.isEmpty(a11)) {
                    d.g("ShareProcessManager", "msgContent is empty");
                    return;
                }
                LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(a11));
                String readLine = lineNumberReader.readLine();
                if (TextUtils.isEmpty(readLine)) {
                    d.i("ShareProcessManager", "appid is empty");
                    return;
                }
                String readLine2 = lineNumberReader.readLine();
                if (TextUtils.isEmpty(readLine2)) {
                    d.i("ShareProcessManager", "senderId is empty");
                    return;
                }
                if (g(context) && cn.jiguang.av.b.c(context) == 0) {
                    if (!cn.jiguang.f.a.h(context, readLine)) {
                        a(context, ((cn.jiguang.bb.c) a10.first).f2410g);
                        d.c("ShareProcessManager", "app not installed:" + readLine);
                        a(context, readLine);
                        return;
                    }
                    String encodeToString = Base64.encodeToString(bArr, 10);
                    Long valueOf = Long.valueOf(((cn.jiguang.bb.c) a10.first).f2408e);
                    HashMap<String, String> hashMap = new HashMap<>();
                    hashMap.put("ktm", encodeToString);
                    hashMap.put("ktp", cn.jiguang.bh.d.a(cn.jiguang.d.a.f(context)));
                    hashMap.put("ktma", readLine2);
                    hashMap.put("mtmmi", j12 + "");
                    hashMap.put("ktmfp", context.getPackageName());
                    hashMap.put("ktmr", valueOf + "");
                    d.c("ShareProcessManager", "dispatch share msg,appkey:" + readLine2 + ",msgid:" + j12 + ",rid:" + valueOf);
                    String a12 = a(context, readLine, "asm", hashMap);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("dispatch result:");
                    sb2.append(a12);
                    d.c("ShareProcessManager", sb2.toString());
                    if (TextUtils.isEmpty(a12)) {
                        if (!f(context)) {
                            d.c("ShareProcessManager", "app can not use downloadActivity dispatch msg");
                            j11 = ((cn.jiguang.bb.c) a10.first).f2410g;
                        } else if (!cn.jiguang.av.b.f2130a && JConstants.isAndroidQ(context, false, "do not startActivity in BackGround")) {
                            this.f2551l = true;
                            a(context, cn.jiguang.d.a.f(context));
                            return;
                        } else {
                            ActivityInfo a13 = a(readLine, context);
                            if (a13 != null) {
                                d.c("ShareProcessManager", "will try use downloadActivity");
                                JSONObject a14 = a(hashMap);
                                Intent intent = new Intent("asm");
                                intent.setComponent(new ComponentName(a13.packageName, a13.name));
                                intent.setFlags(268435456);
                                intent.addCategory(readLine);
                                intent.putExtra("data", a14.toString());
                                context.startActivity(intent);
                            } else {
                                j11 = ((cn.jiguang.bb.c) a10.first).f2410g;
                            }
                        }
                        a(context, j11);
                    } else if (a12.equals("-4")) {
                        j11 = ((cn.jiguang.bb.c) a10.first).f2410g;
                        a(context, j11);
                    } else {
                        if (a12.equals("0")) {
                            str = "wait the msg reponse";
                        } else {
                            str = "provider is :" + a12 + ",app is less than jcore_v125";
                        }
                        d.c("ShareProcessManager", str);
                    }
                    lineNumberReader.close();
                    return;
                }
                a(context, cn.jiguang.d.a.f(context));
                d.c("ShareProcessManager", " share process is close,will not dispatch the msg and dettach mine uid");
                return;
            }
            d.c("ShareProcessManager", "share msg cmd is not 3");
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "dispatchMsg error:" + th2.getMessage());
        }
    }

    public void a(Context context, Bundle bundle) {
        String str;
        try {
            d.c("ShareProcessManager", "doMsg");
            if (bundle != null) {
                String string = bundle.getString("data");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(string);
                d.c("ShareProcessManager", "doMsg json:" + jSONObject.toString());
                String optString = jSONObject.optString("ktm");
                String optString2 = jSONObject.optString("ktp");
                String optString3 = jSONObject.optString("mtmmi");
                String optString4 = jSONObject.optString("ktmfp");
                String optString5 = jSONObject.optString("ktma");
                String optString6 = jSONObject.optString("ktmr");
                if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString3) || TextUtils.isEmpty(optString4) || TextUtils.isEmpty(optString5)) {
                    return;
                }
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put("mtmmi", optString3);
                hashMap.put("ktmfp", optString4);
                hashMap.put("ktma", optString5);
                hashMap.put("ktmr", optString6);
                Pair<cn.jiguang.bb.c, ByteBuffer> a10 = cn.jiguang.bb.a.a(context, Base64.decode(optString, 10), optString2);
                if (a10 != null) {
                    hashMap.put("ktmu", ((cn.jiguang.bb.c) a10.first).f2410g + "");
                    if (g(context) && cn.jiguang.av.b.c(context) == 0) {
                        if (((cn.jiguang.bb.c) a10.first).f2410g != cn.jiguang.d.a.f(context)) {
                            d.c("ShareProcessManager", "this msg uid is :" + ((cn.jiguang.bb.c) a10.first).f2410g + ",is not this app msg");
                            str = "1";
                            hashMap.put("asmrc", str);
                        } else {
                            hashMap.put("asmrc", "0");
                            cn.jiguang.az.b.a().a(context, (cn.jiguang.bb.c) a10.first, (ByteBuffer) a10.second);
                        }
                    }
                    d.c("ShareProcessManager", "share process is closed");
                    str = "3";
                    hashMap.put("asmrc", str);
                }
                a(context, optString4, "asmr", hashMap);
            }
        } catch (Throwable th2) {
            d.c("ShareProcessManager", "doMsg error:" + th2.getMessage());
        }
    }

    public void b(Context context) {
        if (this.f2551l) {
            this.f2551l = false;
            if (h.a().d()) {
                d.c("ShareProcessManager", "attach mine while app in foreground from background");
                cn.jiguang.av.b.a(context, JConstants.SDK_TYPE, 30, 0, j.b(), 0L, cn.jiguang.bb.b.a(cn.jiguang.d.a.f(context), this.f2549e, new long[]{cn.jiguang.d.a.f(context)}));
            }
        }
    }

    public void b(Context context, Bundle bundle) {
        try {
            String string = bundle.getString("data");
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                String optString = jSONObject.optString("mtmmi");
                String optString2 = jSONObject.optString("ktmfp");
                String optString3 = jSONObject.optString("ktma");
                String optString4 = jSONObject.optString("ktmr");
                String optString5 = jSONObject.optString("ktmu");
                String optString6 = jSONObject.optString("asmrc", "0");
                d.c("ShareProcessManager", "msg response,msgId:" + optString + ",fromPkg:" + optString2 + ",appKey:" + optString3 + ",rid:" + optString4 + ",uid:" + optString5 + ",responseCode:" + optString6);
                if (optString6.equals("0") && !TextUtils.isEmpty(optString5) && !TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(optString4)) {
                    d.c("ShareProcessManager", "response success,will send msg response to server");
                    cn.jiguang.av.b.b(context, JConstants.SDK_TYPE, 4, 2, j.b(), Long.parseLong(optString5), cn.jiguang.bb.b.a(0, (byte) 0, Long.parseLong(optString), optString3));
                } else if (optString6.equals("1") && !TextUtils.isEmpty(optString5)) {
                    a(context, Long.parseLong(optString5));
                } else if (!optString6.equals("3") || TextUtils.isEmpty(optString5)) {
                    d.c("ShareProcessManager", "invalid msg response");
                } else {
                    a(context, Long.parseLong(optString5));
                    a(context, optString2);
                }
            }
        } catch (Throwable th2) {
            d.g("ShareProcessManager", "doMsgResponse failed:" + th2.getMessage());
        }
    }
}
