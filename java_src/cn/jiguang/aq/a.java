package cn.jiguang.aq;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import cn.jiguang.o.c;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.service.DActivity;
import cn.jpush.android.service.DaemonService;
import cn.jpush.android.service.DownloadProvider;
import java.util.List;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f2028a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f2029b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f2030c = "Xiaomi".toLowerCase();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cn.jiguang.ap.c a(Context context, PackageManager packageManager, String str, String str2) {
        StringBuilder sb2;
        String message;
        if (packageManager != null && !TextUtils.isEmpty(str)) {
            try {
                int checkPermission = packageManager.checkPermission(str + JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX, str);
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    String b10 = cn.jiguang.o.d.b(context);
                    Intent intent = new Intent();
                    intent.setClassName(str, "cn.jpush.android.service.PushService");
                    boolean z10 = false;
                    List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                    if (queryIntentServices != null && queryIntentServices.size() != 0) {
                        z10 = true;
                    }
                    if (checkPermission == 0 && z10 && !TextUtils.isEmpty(b10) && b10.length() == 24) {
                        cn.jiguang.ap.c cVar = new cn.jiguang.ap.c(str, str2, applicationInfo.targetSdkVersion);
                        ComponentInfo a10 = cn.jiguang.o.d.a(context, str, (Class<?>) DownloadProvider.class);
                        if (a10 instanceof ProviderInfo) {
                            ProviderInfo providerInfo = (ProviderInfo) a10;
                            if (providerInfo.exported && providerInfo.enabled && providerInfo.authority != null) {
                                if (TextUtils.equals(str + ".DownloadProvider", providerInfo.authority)) {
                                    cVar.f2016d = providerInfo.authority;
                                }
                            }
                        }
                        return cVar;
                    }
                }
            } catch (PackageManager.NameNotFoundException e10) {
                sb2 = new StringBuilder();
                sb2.append("checkWhetherToStart exception:");
                message = e10.toString();
                sb2.append(message);
                cn.jiguang.al.a.d("JWakeComponentHelper", sb2.toString());
                return null;
            } catch (Throwable th2) {
                sb2 = new StringBuilder();
                sb2.append("checkWhetherToStart throwable:");
                message = th2.getMessage();
                sb2.append(message);
                cn.jiguang.al.a.d("JWakeComponentHelper", sb2.toString());
                return null;
            }
        }
        return null;
    }

    public static void a(Context context, boolean z10) {
        a(context, z10, "cn.jpush.android.intent.DaemonService", DaemonService.class);
        b(context, z10, DownloadProvider.class);
        if (b(context)) {
            a(context, z10, DActivity.class);
            try {
                a(context, z10, Class.forName("cn.jpush.android.service.BActivity", false, context.getClassLoader()));
            } catch (Throwable unused) {
                cn.jiguang.al.a.a("JWakeComponentHelper", "can't find BActivity");
            }
        }
    }

    private static void a(Context context, boolean z10, Class cls) {
        try {
            if (context == null) {
                cn.jiguang.al.a.e("JWakeComponentHelper", "context is null, give up setComponentEnabled");
                return;
            }
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            if (packageManager == null) {
                cn.jiguang.al.a.e("JWakeComponentHelper", "PackageManager is null, give up setComponentEnabled");
                return;
            }
            int i9 = z10 ? 1 : 2;
            ComponentName componentName = new ComponentName(context, cls);
            if (packageManager.getComponentEnabledSetting(componentName) == i9) {
                cn.jiguang.al.a.a("JWakeComponentHelper", componentName.getClassName() + " enabled is :" + z10 + ", no need repeat set.");
                return;
            }
            cn.jiguang.al.a.a("JWakeComponentHelper", componentName + " setActivityEnabledSetting newState: " + i9);
            packageManager.setComponentEnabledSetting(componentName, i9, 1);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeComponentHelper", "setActivityEnabled throwable:" + th2.getMessage());
        }
    }

    private static void a(Context context, boolean z10, String str, Class cls) {
        ServiceInfo serviceInfo;
        try {
            if (context == null) {
                cn.jiguang.al.a.e("JWakeComponentHelper", "context is null, give up setComponentEnabled");
                return;
            }
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            if (packageManager == null) {
                cn.jiguang.al.a.e("JWakeComponentHelper", "PackageManager is null, give up setComponentEnabled");
                return;
            }
            String packageName = context.getPackageName();
            int i9 = z10 ? 1 : 2;
            Intent intent = new Intent();
            intent.setPackage(packageName);
            intent.setAction(str);
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 512);
            if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                cn.jiguang.al.a.d("JWakeComponentHelper", "cant't find DaemonService");
                return;
            }
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (resolveInfo != null && (serviceInfo = resolveInfo.serviceInfo) != null) {
                    String str2 = serviceInfo.name;
                    if (TextUtils.isEmpty(str2)) {
                        continue;
                    } else {
                        try {
                            if (cls.isAssignableFrom(Class.forName(str2))) {
                                ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                                cn.jiguang.al.a.a("JWakeComponentHelper", componentName + " setComponentEnabledSetting newState: " + i9);
                                if (packageManager.getComponentEnabledSetting(componentName) == i9) {
                                    cn.jiguang.al.a.a("JWakeComponentHelper", "DaemonService  enabled is :" + z10 + ", no need repeat set.");
                                    return;
                                }
                                packageManager.setComponentEnabledSetting(componentName, i9, 1);
                            } else {
                                cn.jiguang.al.a.e("JWakeComponentHelper", "give up setting, as " + str2 + " is not extend from: " + cls.getName());
                            }
                        } catch (ClassNotFoundException unused) {
                            cn.jiguang.al.a.d("JWakeComponentHelper", "cant't find service class:" + str2);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeComponentHelper", "setServiceEnabled throwable:" + th2.getMessage());
        }
    }

    public static boolean a(Context context) {
        Boolean bool = f2029b;
        if (bool != null) {
            return bool.booleanValue();
        }
        f2029b = c(context) ? Boolean.TRUE : Boolean.FALSE;
        return f2029b.booleanValue();
    }

    private static boolean a(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent(str);
            intent.addCategory(context.getPackageName());
            return !packageManager.queryIntentActivities(intent, 0).isEmpty();
        } catch (Throwable th2) {
            cn.jiguang.al.a.e("JWakeComponentHelper", "hasActivityIntentFilter error:" + th2.getMessage());
            return false;
        }
    }

    public static boolean a(Context context, String str, Intent intent, boolean z10) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            intent.setPackage(str);
            if (!z10) {
                intent.setAction("cn.jpush.android.intent.DActivity");
                intent.addCategory(str);
            }
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            if (resolveActivity == null) {
                cn.jiguang.al.a.d("JWakeComponentHelper", "getDActivity resolveInfo was null from:" + intent);
                return false;
            }
            cn.jiguang.al.a.a("JWakeComponentHelper", "target actvity name:" + resolveActivity.activityInfo.name + ", theme:" + resolveActivity.activityInfo.theme + ",exported:" + resolveActivity.activityInfo.exported);
            ActivityInfo activityInfo = resolveActivity.activityInfo;
            if (activityInfo.exported && activityInfo.enabled) {
                if (!z10 && !"jpush.custom".equals(activityInfo.taskAffinity)) {
                    cn.jiguang.al.a.d("JWakeComponentHelper", "activity taskAffinity must be jpush.custom");
                    return false;
                } else if (resolveActivity.activityInfo.theme != 16973840) {
                    cn.jiguang.al.a.d("JWakeComponentHelper", resolveActivity.activityInfo.name + "activity theme must config as @android:style/Theme.Translucent.NoTitleBar");
                    return false;
                } else {
                    cn.jiguang.al.a.a("JWakeComponentHelper", "dIntent:" + intent);
                    return true;
                }
            }
            cn.jiguang.al.a.d("JWakeComponentHelper", "activity muse be exported and enabled");
            return false;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeComponentHelper", "get deeplink activity error#" + th2);
            return false;
        }
    }

    private static void b(Context context, boolean z10, Class cls) {
        try {
            if (context == null) {
                cn.jiguang.al.a.e("JWakeComponentHelper", "context is null, give up setComponentEnabled");
                return;
            }
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            if (packageManager == null) {
                cn.jiguang.al.a.e("JWakeComponentHelper", "PackageManager is null, give up setComponentEnabled");
                return;
            }
            int i9 = z10 ? 1 : 2;
            ComponentName componentName = new ComponentName(context, cls);
            if (packageManager.getComponentEnabledSetting(componentName) == i9) {
                cn.jiguang.al.a.a("JWakeComponentHelper", componentName.getClassName() + " enabled is :" + z10 + ", no need repeat set.");
                return;
            }
            cn.jiguang.al.a.a("JWakeComponentHelper", componentName + " setDownloadProviderEnabledSetting newState: " + i9);
            packageManager.setComponentEnabledSetting(componentName, i9, 1);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeComponentHelper", "setContentProviderEnabled throwable:" + th2.getMessage());
        }
    }

    public static boolean b(Context context) {
        Boolean bool = f2028a;
        if (bool != null) {
            return bool.booleanValue();
        }
        f2028a = a(context, "cn.jpush.android.intent.DActivity") ? Boolean.TRUE : Boolean.FALSE;
        return f2028a.booleanValue();
    }

    private static boolean c(Context context) {
        try {
            String str = c.a.f2700b;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return TextUtils.equals(f2030c, str.toLowerCase());
        } catch (Throwable th2) {
            cn.jiguang.al.a.e("JWakeComponentHelper", "get MANUFACTURER failed - error:" + th2);
            return false;
        }
    }
}
