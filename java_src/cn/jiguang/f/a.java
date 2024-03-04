package cn.jiguang.f;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.Toast;
import androidx.webkit.ProxyConfig;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.service.PushReceiver;
import com.facebook.internal.AnalyticsEvents;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.ByteArrayInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f2563a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f2564b = "";

    /* renamed from: c  reason: collision with root package name */
    private static int f2565c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static String f2566d = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f2567e = "";

    /* renamed from: f  reason: collision with root package name */
    private static String f2568f = "";

    /* renamed from: g  reason: collision with root package name */
    private static String f2569g = "";

    public static ComponentInfo a(Context context, String str, Class<?> cls) {
        ComponentInfo[] componentInfoArr;
        if (context == null || TextUtils.isEmpty(str) || cls == null) {
            cn.jiguang.as.d.g("AndroidUtil", "Action - hasComponent, invalide param, context:" + context + ",packageName:" + str + ",cls:" + cls);
            return null;
        }
        try {
            int i9 = Service.class.isAssignableFrom(cls) ? 4 : BroadcastReceiver.class.isAssignableFrom(cls) ? 2 : Activity.class.isAssignableFrom(cls) ? 1 : ContentProvider.class.isAssignableFrom(cls) ? 8 : 0;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, i9);
            componentInfoArr = i9 != 1 ? i9 != 2 ? i9 != 4 ? i9 != 8 ? null : packageInfo.providers : packageInfo.services : packageInfo.receivers : packageInfo.activities;
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("AndroidUtil", "hasComponent error:" + th2);
        }
        if (componentInfoArr == null) {
            return null;
        }
        for (ComponentInfo componentInfo : componentInfoArr) {
            if (cls.isAssignableFrom(Class.forName(componentInfo.name, false, cls.getClassLoader()))) {
                return componentInfo;
            }
        }
        return null;
    }

    public static ProviderInfo a(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                ProviderInfo[] providerInfoArr = context.getPackageManager().getPackageInfo(str, 8).providers;
                if (providerInfoArr != null && providerInfoArr.length != 0) {
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        if (str2.equals(providerInfo.authority)) {
                            return providerInfo;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String a(Context context) {
        String c10;
        if (TextUtils.isEmpty(f2563a)) {
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    String processName = Application.getProcessName();
                    f2563a = processName;
                    if (!TextUtils.isEmpty(processName)) {
                        return f2563a;
                    }
                }
                c10 = f.c();
                f2563a = c10;
            } catch (Throwable th2) {
                cn.jiguang.as.d.h("AndroidUtil", "#unexcepted - getCurProcessName failed:" + th2.getMessage());
            }
            if (TextUtils.isEmpty(c10)) {
                ActivityManager activityManager = context != null ? (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME) : null;
                if (activityManager != null) {
                    int myPid = Process.myPid();
                    Iterator<ActivityManager.RunningAppProcessInfo> it = activityManager.getRunningAppProcesses().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.pid == myPid) {
                            f2563a = next.processName;
                            break;
                        }
                    }
                }
                return f2563a;
            }
            return f2563a;
        }
        return f2563a;
    }

    public static String a(Context context, Class<?> cls) {
        try {
            return context.getPackageManager().getServiceInfo(new ComponentName(context.getPackageName(), cls.getCanonicalName()), 128).processName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(Context context, String str) {
        try {
            return context.getPackageManager().getServiceInfo(new ComponentName(context.getPackageName(), str), 128).processName;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static List<String> a(Context context, Intent intent, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            PackageManager packageManager = context.getPackageManager();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null) {
                    String str2 = serviceInfo.name;
                    if (!TextUtils.isEmpty(str2)) {
                        boolean z10 = true;
                        if (!TextUtils.isEmpty(str) && packageManager.checkPermission(str, resolveInfo.activityInfo.packageName) != 0) {
                            z10 = false;
                        }
                        if (z10) {
                            arrayList.add(str2);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static List<String> a(Context context, List<String> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!c(context, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static void a(Context context, Intent intent) {
        try {
            context.sendBroadcast(intent);
        } catch (Throwable unused) {
            b(context, intent);
        }
    }

    public static void a(Context context, String str, int i9) {
        int i10;
        if (!g(context)) {
            cn.jiguang.as.d.c("AndroidUtil", "not debuggable");
        } else if (!b(context, PushReceiver.class)) {
            d(context, str);
        } else {
            cn.jiguang.as.d.c("AndroidUtil", "action:showPermanentNotification");
            Intent intent = new Intent(context, PushReceiver.class);
            intent.setAction("noti_open_proxy");
            intent.addCategory(context.getPackageName());
            intent.putExtra("debug_notification", true);
            intent.putExtra("toastText", str);
            intent.putExtra("type", i9);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            try {
                i10 = context.getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 0).icon;
            } catch (Throwable th2) {
                cn.jiguang.as.d.d("AndroidUtil", "failed to get application info and icon.", th2);
                i10 = 17301586;
            }
            long currentTimeMillis = System.currentTimeMillis();
            int i11 = Build.VERSION.SDK_INT;
            Notification.Builder when = new Notification.Builder(context.getApplicationContext()).setContentTitle("Jiguang提示：包名和AppKey不匹配").setContentText("请到 Portal 上获取您的包名和AppKey并更新AndroidManifest相应字段").setContentIntent(broadcast).setSmallIcon(i10).setTicker(str).setWhen(currentTimeMillis);
            if (i11 >= 26) {
                if (notificationManager.getNotificationChannel("JPush_Notification") == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("JPush_Notification", "JPush_Notification", 3));
                }
                when.setChannelId("JPush_Notification");
            }
            Notification notification = when.getNotification();
            notification.flags = 34;
            f2565c = 10000;
            notificationManager.notify(10000, notification);
        }
    }

    public static boolean a() {
        boolean z10;
        try {
            z10 = Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("AndroidUtil", "isSdcardExist exception: " + th2);
            z10 = false;
        }
        if (!z10) {
            cn.jiguang.as.d.c("AndroidUtil", "SDCard is not mounted");
        }
        return z10;
    }

    public static ProviderInfo b(Context context, String str, Class<? extends ContentProvider> cls) {
        try {
            return context.getPackageManager().getProviderInfo(new ComponentName(str, cls.getName()), 65536);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b() {
        /*
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L9 java.lang.Exception -> Ld
            java.lang.String r0 = r0.getPath()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L9 java.lang.Exception -> Ld
            goto Le
        L9:
            r0 = move-exception
            r0.printStackTrace()
        Ld:
            r0 = 0
        Le:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L25
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = "/data/"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
        L25:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.f.a.b():java.lang.String");
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(f2564b)) {
            String packageName = context.getPackageName();
            f2564b = packageName;
            return packageName;
        }
        return f2564b;
    }

    public static String b(Context context, String str) {
        try {
            return context.getPackageManager().getReceiverInfo(new ComponentName(context.getPackageName(), str), 128).processName;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(Context context, String str, String str2) {
        try {
            return (String) f.a(context.getClassLoader().loadClass("android.os.SystemProperties"), "get", new Object[]{str, str2}, new Class[]{String.class, String.class});
        } catch (IllegalArgumentException e10) {
            throw e10;
        } catch (Exception unused) {
            return "";
        }
    }

    private static List<String> b(Context context, Intent intent, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
            PackageManager packageManager = context.getPackageManager();
            for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (activityInfo != null) {
                    String str2 = activityInfo.name;
                    if (!TextUtils.isEmpty(str2)) {
                        boolean z10 = true;
                        if (!TextUtils.isEmpty(str) && packageManager.checkPermission(str, resolveInfo.activityInfo.packageName) != 0) {
                            z10 = false;
                        }
                        if (z10) {
                            arrayList.add(str2);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static void b(Context context, Intent intent) {
        try {
            List<String> b10 = b(context, intent, (String) null);
            if (b10 == null || b10.isEmpty()) {
                cn.jiguang.as.d.h("AndroidUtil", "sendBroadcast failed again: receiver not found, action:" + intent.getAction());
                return;
            }
            for (String str : b10) {
                try {
                    Intent intent2 = (Intent) intent.clone();
                    intent2.setComponent(new ComponentName(context.getPackageName(), str));
                    context.sendBroadcast(intent2);
                } catch (Exception e10) {
                    cn.jiguang.as.d.h("AndroidUtil", "sendBroadcast failed again:" + e10.getMessage() + ", action:" + intent.getAction());
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("AndroidUtil", "tryAgainSendBrocast failed:" + th2.getMessage());
        }
    }

    public static boolean b(Context context, Class<?> cls) {
        boolean z10;
        boolean z11 = false;
        try {
            z10 = !context.getPackageManager().queryBroadcastReceivers(new Intent(context, cls), 0).isEmpty();
        } catch (Throwable unused) {
        }
        if (z10) {
            return z10;
        }
        try {
            if (a(context, context.getPackageName(), cls) != null) {
                z11 = true;
            }
        } catch (Throwable unused2) {
            z11 = z10;
        }
        return z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(android.content.Context r6) {
        /*
            java.lang.String r0 = "AndroidUtil"
            r1 = -1
            if (r6 != 0) goto L6
            return r1
        L6:
            android.content.IntentFilter r2 = new android.content.IntentFilter
            java.lang.String r3 = "android.intent.action.BATTERY_CHANGED"
            r2.<init>(r3)
            r3 = 0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            r4.<init>()     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            java.lang.String r5 = r6.getPackageName()     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            r4.append(r5)     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            java.lang.String r5 = cn.jiguang.a.a.f1807a     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            r4.append(r5)     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            android.content.Intent r3 = r6.registerReceiver(r3, r2, r4, r3)     // Catch: java.lang.Exception -> L28 java.lang.SecurityException -> L3f
            goto L44
        L28:
            r6 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "getChargedStatus unkown exception:"
            r2.append(r4)
            java.lang.String r6 = r6.getMessage()
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            goto L41
        L3f:
            java.lang.String r6 = "getChargedStatus SecurityException"
        L41:
            cn.jiguang.as.d.g(r0, r6)
        L44:
            if (r3 != 0) goto L47
            return r1
        L47:
            java.lang.String r6 = "status"
            int r6 = r3.getIntExtra(r6, r1)
            r0 = 2
            if (r6 == r0) goto L56
            r0 = 5
            if (r6 != r0) goto L54
            goto L56
        L54:
            r6 = 0
            goto L57
        L56:
            r6 = 1
        L57:
            if (r6 != 0) goto L5a
            return r1
        L5a:
            java.lang.String r6 = "plugged"
            int r6 = r3.getIntExtra(r6, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.f.a.c(android.content.Context):int");
    }

    public static String c() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return "";
        } catch (Exception e10) {
            cn.jiguang.as.d.g("AndroidUtil", "getPhoneIp:");
            e10.printStackTrace();
            return "";
        }
    }

    public static boolean c(Context context, String str) {
        try {
            boolean z10 = true;
            if (Build.VERSION.SDK_INT >= 23) {
                if (context.getApplicationInfo().targetSdkVersion < 23) {
                    String permissionToOp = AppOpsManager.permissionToOp(str);
                    if (permissionToOp != null) {
                        z10 = ((AppOpsManager) context.getSystemService("appops")).noteProxyOpNoThrow(permissionToOp, context.getPackageName()) == 0;
                    }
                    return z10;
                } else if (context.checkSelfPermission(str) != 0) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("AndroidUtil", "checkPermission error:" + th2.getMessage());
            return false;
        }
    }

    public static void d(final Context context, final String str) {
        new Handler(Looper.getMainLooper()).post(new cn.jiguang.bg.b("AndroidUtils#ShowToast") { // from class: cn.jiguang.f.a.1
            @Override // cn.jiguang.bg.b
            public void a() {
                try {
                    Toast.makeText(context, str, 0).show();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            if (!c(context, "android.permission.ACCESS_NETWORK_STATE") || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return false;
    }

    public static synchronized String e(Context context, String str) {
        synchronized (a.class) {
            if (g.h("")) {
                str = "";
            }
        }
        return str;
    }

    public static boolean e(Context context) {
        String str = context.getApplicationInfo().sourceDir;
        if (g.a(str)) {
            cn.jiguang.as.d.i("AndroidUtil", "Unexpected: cannot get pk installed path");
            return false;
        }
        cn.jiguang.as.d.c("AndroidUtil", "Current pk installed path: " + str);
        if (str.startsWith("/system/app/")) {
            return true;
        }
        if (str.startsWith("/data/app/")) {
            return false;
        }
        cn.jiguang.as.d.e("AndroidUtil", "NOTE: the pk does not installed in system/data. ");
        return false;
    }

    public static String f(Context context) {
        DisplayMetrics displayMetrics;
        if (context == null || context.getResources() == null || (displayMetrics = context.getResources().getDisplayMetrics()) == null) {
            return "0*0";
        }
        int i9 = displayMetrics.widthPixels;
        int i10 = displayMetrics.heightPixels;
        return i9 + ProxyConfig.MATCH_ALL_SCHEMES + i10;
    }

    public static synchronized String f(Context context, String str) {
        synchronized (a.class) {
            if (!TextUtils.isEmpty("")) {
                str = "";
            }
        }
        return str;
    }

    public static String g(Context context, String str) {
        return "";
    }

    public static boolean g(Context context) {
        boolean z10 = false;
        try {
            boolean z11 = (context.getApplicationInfo().flags & 2) != 0;
            cn.jiguang.as.d.c("AndroidUtil", "isDebug:" + z11);
            if (JConstants.INTERNAL_USE && JConstants.DEBUG_MODE) {
                return z11;
            }
            X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
            String[] strArr = {"CN=Android Debug", "O=Android", "C=US"};
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            boolean z12 = false;
            for (Signature signature : signatureArr) {
                try {
                    X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
                    z12 = x509Certificate.getSubjectX500Principal().equals(x500Principal);
                    cn.jiguang.as.d.c("AndroidUtil", "debuggable :" + z12);
                    if (z12) {
                        break;
                    }
                    String str = null;
                    try {
                        str = x509Certificate.getSubjectX500Principal().getName();
                    } catch (Exception unused) {
                    }
                    cn.jiguang.as.d.c("AndroidUtil", "certName:" + str);
                    if (str != null && str.contains(strArr[0]) && str.contains(strArr[1]) && str.contains(strArr[2])) {
                        return true;
                    }
                } catch (Throwable unused2) {
                    z10 = z12;
                    return z10;
                }
            }
            return z12;
        } catch (Throwable unused3) {
        }
    }

    public static void h(Context context) {
        try {
            if (f2565c != 0) {
                ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).cancel(f2565c);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("AndroidUtil", "[canclePermanentNotification] failed:" + th2.getMessage());
        }
    }

    public static boolean h(Context context, String str) {
        if (g.a(str)) {
            return false;
        }
        return context.getPackageManager().getPackageInfo(str, 0) != null;
    }

    public static String i(Context context) {
        return "";
    }

    public static boolean i(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("empty params");
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                for (String str2 : packageManager.getPackageInfo(context.getPackageName(), 4096).requestedPermissions) {
                    if (str.equals(str2)) {
                        cn.jiguang.as.d.c("AndroidUtil", "find permission: " + str);
                        return true;
                    }
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("AndroidUtil", "hasPermissionDefined error:" + th2.getMessage());
        }
        return false;
    }

    public static String j(Context context) {
        try {
            String g10 = g(context, "");
            if (g10 != null && !g10.equals("")) {
                cn.jiguang.as.d.e("AndroidUtil", "MAC addr info---- " + g10);
                return g.d(g10.toLowerCase() + Build.MODEL);
            }
            return null;
        } catch (Exception e10) {
            cn.jiguang.as.d.c("AndroidUtil", "", e10);
            return null;
        }
    }

    public static boolean k(Context context) {
        String b10 = b(context, "ro.product.brand", "");
        cn.jiguang.as.d.c("AndroidUtil", "brand = " + b10);
        String b11 = b(context, "ro.miui.ui.version.name", "");
        if (TextUtils.isEmpty(b10) || !"Xiaomi".equals(b10) || TextUtils.isEmpty(b11)) {
            return true;
        }
        String b12 = b(context, "ro.build.version.incremental", "");
        if (TextUtils.isEmpty(b12) || !b12.startsWith("V7.1")) {
            return true;
        }
        cn.jiguang.as.d.g("AndroidUtil", "7.1 will not get wifi list");
        return false;
    }

    public static String l(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            String typeName = activeNetworkInfo.getTypeName();
            String subtypeName = activeNetworkInfo.getSubtypeName();
            if (typeName == null) {
                return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            if (g.a(subtypeName)) {
                return typeName;
            }
            return typeName + "," + subtypeName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    public static String m(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager == null || !c(context, "android.permission.ACCESS_WIFI_STATE")) {
                return "";
            }
            String bssid = wifiManager.getConnectionInfo().getBSSID();
            if (bssid != null) {
                try {
                    if (bssid.startsWith("02:00:00:")) {
                        return "";
                    }
                } catch (Throwable unused) {
                }
                return bssid;
            }
            return "";
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static String n(Context context) {
        Object invoke;
        String str = null;
        int i9 = -1;
        if (context != null) {
            try {
                Object systemService = context.getApplicationContext().getSystemService("country_detector");
                if (systemService != null) {
                    Method declaredMethod = systemService.getClass().getDeclaredMethod("detectCountry", new Class[0]);
                    if (declaredMethod != null && (invoke = declaredMethod.invoke(systemService, new Object[0])) != null) {
                        String str2 = (String) invoke.getClass().getDeclaredMethod("getCountryIso", new Class[0]).invoke(invoke, new Object[0]);
                        try {
                            i9 = ((Integer) invoke.getClass().getDeclaredMethod("getSource", new Class[0]).invoke(invoke, new Object[0])).intValue();
                            str = str2;
                        } catch (Throwable th2) {
                            th = th2;
                            str = str2;
                            cn.jiguang.as.d.i("AndroidUtil", "getCountryCode failed, error :" + th);
                            cn.jiguang.as.d.c("AndroidUtil", "get CountCode = " + str + " source = " + i9);
                            if (i9 != 0) {
                            }
                        }
                    }
                } else {
                    cn.jiguang.as.d.c("AndroidUtil", "country_detector is null");
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        cn.jiguang.as.d.c("AndroidUtil", "get CountCode = " + str + " source = " + i9);
        return (i9 != 0 || i9 == 1) ? str : "";
    }

    public static Activity o(Context context) {
        if (context != null) {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mActivities");
                declaredField.setAccessible(true);
                Map map = (Map) declaredField.get(invoke);
                if (map == null) {
                    cn.jiguang.as.d.g("AndroidUtil", "get current activities for currentActivityThread, activities is null");
                    return null;
                }
                for (Object obj : map.values()) {
                    Class<?> cls2 = obj.getClass();
                    Field declaredField2 = cls2.getDeclaredField("paused");
                    declaredField2.setAccessible(true);
                    if (!declaredField2.getBoolean(obj)) {
                        Field declaredField3 = cls2.getDeclaredField(PushConstants.INTENT_ACTIVITY_NAME);
                        declaredField3.setAccessible(true);
                        Activity activity = (Activity) declaredField3.get(obj);
                        if (activity == null) {
                            cn.jiguang.as.d.g("AndroidUtil", "[getCurrentActivity] activity is null");
                            return null;
                        } else if (activity.getPackageName().equals(context.getPackageName())) {
                            cn.jiguang.as.d.c("AndroidUtil", "getCurrentActivity: " + activity.getLocalClassName());
                            return activity;
                        } else {
                            cn.jiguang.as.d.g("AndroidUtil", "current activity packageName: " + activity.getPackageName() + ", appPackageName: " + context.getPackageName());
                            return null;
                        }
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("AndroidUtil", "[getCurrentActivity] error: " + th2.getMessage());
            }
        }
        return null;
    }

    public static String p(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }
}
