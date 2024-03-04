package cn.jpush.android.af;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AppOpsManager;
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
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.JCommonService;
import cn.jpush.android.service.JNotifyActivity;
import cn.jpush.android.ui.PopWinActivity;
import cn.jpush.android.ui.PushActivity;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f2891a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f2892b = "";

    /* renamed from: c  reason: collision with root package name */
    private static String f2893c;

    public static int a(String str, String str2) {
        if (str.equals(str2)) {
            return 0;
        }
        try {
            String[] split = str.split("[._]");
            String[] split2 = str2.split("[._]");
            if (split.length > split2.length) {
                split2 = (String[]) Arrays.copyOf(split2, split.length);
            } else if (split.length < split2.length) {
                split = (String[]) Arrays.copyOf(split, split2.length);
            }
            for (int i9 = 0; i9 < split.length; i9++) {
                int i10 = (((TextUtils.isEmpty(split[i9]) ? 0L : Long.parseLong(split[i9])) - (TextUtils.isEmpty(split2[i9]) ? 0L : Long.parseLong(split2[i9]))) > 0L ? 1 : (((TextUtils.isEmpty(split[i9]) ? 0L : Long.parseLong(split[i9])) - (TextUtils.isEmpty(split2[i9]) ? 0L : Long.parseLong(split2[i9]))) == 0L ? 0 : -1));
                if (i10 > 0) {
                    return 1;
                }
                if (i10 < 0) {
                    return -1;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return str.compareTo(str2);
        }
    }

    public static ComponentInfo a(Context context, String str, Class<?> cls) {
        ComponentInfo[] componentInfoArr;
        if (context == null || TextUtils.isEmpty(str) || cls == null) {
            Logger.w("AndroidUtil", "Action - hasComponent, invalide param, context:" + context + ",packageName:" + str + ",cls:" + cls);
            return null;
        }
        try {
            int i9 = Service.class.isAssignableFrom(cls) ? 4 : BroadcastReceiver.class.isAssignableFrom(cls) ? 2 : Activity.class.isAssignableFrom(cls) ? 1 : ContentProvider.class.isAssignableFrom(cls) ? 8 : 0;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, i9);
            componentInfoArr = i9 != 1 ? i9 != 2 ? i9 != 4 ? i9 != 8 ? null : packageInfo.providers : packageInfo.services : packageInfo.receivers : packageInfo.activities;
        } catch (Throwable th2) {
            Logger.ww("AndroidUtil", "hasComponent error:" + th2.getMessage());
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        if (r8 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0073, code lost:
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0093, code lost:
        if (r8 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0096, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(android.content.Context r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "AndroidUtil"
            r1 = 0
            android.content.res.AssetManager r8 = r8.getAssets()     // Catch: java.lang.Throwable -> L79
            java.io.InputStream r8 = r8.open(r9)     // Catch: java.lang.Throwable -> L79
            org.xmlpull.v1.XmlPullParserFactory r9 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: java.lang.Throwable -> L77
            r2 = 1
            r9.setNamespaceAware(r2)     // Catch: java.lang.Throwable -> L77
            org.xmlpull.v1.XmlPullParser r9 = r9.newPullParser()     // Catch: java.lang.Throwable -> L77
            java.lang.String r3 = "utf-8"
            r9.setInput(r8, r3)     // Catch: java.lang.Throwable -> L77
            int r3 = r9.getEventType()     // Catch: java.lang.Throwable -> L77
        L20:
            if (r3 == r2) goto L71
            int r3 = r9.next()     // Catch: java.lang.Throwable -> L77
            r4 = 2
            if (r3 != r4) goto L20
            java.lang.String r4 = r9.getName()     // Catch: java.lang.Throwable -> L77
            boolean r4 = r4.equals(r10)     // Catch: java.lang.Throwable -> L77
            if (r4 == 0) goto L20
            int r4 = r9.getAttributeCount()     // Catch: java.lang.Throwable -> L77
            r5 = 0
        L38:
            if (r5 >= r4) goto L20
            java.lang.String r6 = r9.getAttributeName(r5)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = r9.getAttributeValue(r5)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = r7.trim()     // Catch: java.lang.Throwable -> L77
            boolean r6 = r6.equals(r11)     // Catch: java.lang.Throwable -> L77
            if (r6 == 0) goto L6e
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            r9.<init>()     // Catch: java.lang.Throwable -> L77
            java.lang.String r10 = "[getValueFromAssetFile] key = "
            r9.append(r10)     // Catch: java.lang.Throwable -> L77
            r9.append(r11)     // Catch: java.lang.Throwable -> L77
            java.lang.String r10 = ", value="
            r9.append(r10)     // Catch: java.lang.Throwable -> L77
            r9.append(r7)     // Catch: java.lang.Throwable -> L77
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L77
            cn.jpush.android.helper.Logger.d(r0, r9)     // Catch: java.lang.Throwable -> L77
            if (r8 == 0) goto L6d
            r8.close()     // Catch: java.io.IOException -> L6d
        L6d:
            return r7
        L6e:
            int r5 = r5 + 1
            goto L38
        L71:
            if (r8 == 0) goto L96
        L73:
            r8.close()     // Catch: java.io.IOException -> L96
            goto L96
        L77:
            r9 = move-exception
            goto L7b
        L79:
            r9 = move-exception
            r8 = r1
        L7b:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r10.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r11 = "[getValueFromAssetFile] parseConfig error :"
            r10.append(r11)     // Catch: java.lang.Throwable -> L97
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L97
            r10.append(r9)     // Catch: java.lang.Throwable -> L97
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Throwable -> L97
            cn.jpush.android.helper.Logger.w(r0, r9)     // Catch: java.lang.Throwable -> L97
            if (r8 == 0) goto L96
            goto L73
        L96:
            return r1
        L97:
            r9 = move-exception
            if (r8 == 0) goto L9d
            r8.close()     // Catch: java.io.IOException -> L9d
        L9d:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.af.a.a(android.content.Context, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            int indexOf = str.indexOf("?");
            if (indexOf > 0) {
                str = str.substring(0, indexOf);
                if (TextUtils.isEmpty(str)) {
                    return "";
                }
            }
            return str.substring(str.lastIndexOf("."));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return b(messageDigest.digest());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(Context context, Intent intent, String str) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (JPushInterface.ACTION_NOTIFICATION_RECEIVED.equals(action) || JPushInterface.ACTION_NOTIFICATION_OPENED.equals(action)) {
            List<String> b10 = b(context, intent, str);
            if (b10 == null || b10.isEmpty()) {
                Logger.ww("AndroidUtil", "sendBroadcast failed again: receiver not found, action:" + intent.getAction());
                return;
            }
            for (String str2 : b10) {
                try {
                    Intent intent2 = (Intent) intent.clone();
                    intent2.setComponent(new ComponentName(context.getPackageName(), str2));
                    if (TextUtils.isEmpty(str)) {
                        context.sendBroadcast(intent2);
                    } else {
                        context.sendBroadcast(intent2, str);
                    }
                } catch (Exception e10) {
                    Logger.ww("AndroidUtil", "sendBroadcast failed again:" + e10.getMessage() + ", action:" + intent.getAction());
                }
            }
        }
    }

    public static void a(WebSettings webSettings) {
        webSettings.setUseWideViewPort(true);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        webSettings.setSupportZoom(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDisplayZoomControls(false);
        webSettings.setCacheMode(2);
        webSettings.setSaveFormData(false);
        webSettings.setSavePassword(false);
    }

    public static void a(final WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
            webView.getSettings().setMixedContentMode(0);
        } catch (Throwable th2) {
            Logger.e("AndroidUtil", "fixSecure failed, error:" + th2);
            webView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: cn.jpush.android.af.a.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    WebSettings settings = webView.getSettings();
                    if (settings != null) {
                        try {
                            Method declaredMethod = settings.getClass().getDeclaredMethod("removeJavascriptInterface", String.class);
                            if (declaredMethod != null) {
                                declaredMethod.invoke(webView, "searchBoxJavaBridge_");
                                declaredMethod.invoke(webView, "accessibility");
                                declaredMethod.invoke(webView, "accessibilityTraversal");
                            }
                        } catch (Throwable th3) {
                            Logger.e("AndroidUtil", "removeJavascriptInterface failed, error:" + th3);
                        }
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            });
        }
    }

    private static void a(StringBuffer stringBuffer, byte b10) {
        stringBuffer.append("0123456789ABCDEF".charAt((b10 >> 4) & 15));
        stringBuffer.append("0123456789ABCDEF".charAt(b10 & 15));
    }

    public static boolean a() {
        boolean z10;
        try {
            z10 = Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th2) {
            Logger.w("AndroidUtil", "isSdcardExist exception: " + th2);
            z10 = false;
        }
        if (!z10) {
            Logger.d("AndroidUtil", "SDCard is not mounted");
        }
        return z10;
    }

    public static boolean a(Activity activity) {
        if (activity != null) {
            try {
                TypedArray obtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{16842838, 16842841, 16842836, 16842840, 16843435});
                boolean z10 = obtainStyledAttributes.getBoolean(0, false);
                Drawable drawable = obtainStyledAttributes.getDrawable(1);
                int color = obtainStyledAttributes.getColor(2, -1);
                boolean z11 = obtainStyledAttributes.getBoolean(3, false);
                Drawable drawable2 = obtainStyledAttributes.getDrawable(4);
                Logger.d("AndroidUtil", "notitle:" + z10 + ", overlay:" + drawable + ", color:" + color + ", translucent:" + z11 + "background:" + drawable2);
                obtainStyledAttributes.recycle();
                if (z10 && z11 && drawable == null && drawable2 == null && color == activity.getResources().getColor(17170445)) {
                    Logger.d("AndroidUtil", "activity is Translucent theme");
                    return true;
                }
            } catch (Throwable th2) {
                Logger.w("AndroidUtil", "check TranslucentNotitleTheme failed: " + th2.getMessage());
            }
        }
        return false;
    }

    public static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, Class<?> cls) {
        if (context != null) {
            try {
                boolean z10 = !context.getPackageManager().queryIntentActivities(new Intent(context, cls), 0).isEmpty();
                if (z10) {
                    return z10;
                }
                return a(context, context.getPackageName(), cls) != null;
            } catch (Throwable th2) {
                Logger.dd("AndroidUtil", "hasActivityResolves error:" + th2.getMessage());
            }
        }
        return false;
    }

    public static boolean a(Context context, String str) {
        String str2;
        if (context == null || TextUtils.isEmpty(str)) {
            str2 = "[hasPermissionDefined] unexpected error, context: " + context + ", thePermission: " + str;
        } else {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    for (String str3 : packageManager.getPackageInfo(context.getPackageName(), 4096).requestedPermissions) {
                        if (str.equals(str3)) {
                            Logger.d("AndroidUtil", "find permission: " + str);
                            return true;
                        }
                    }
                }
            } catch (Throwable th2) {
                Logger.ww("AndroidUtil", "hasPermissionDefined error:" + th2.getMessage());
            }
            str2 = "not find permission: " + str;
        }
        Logger.w("AndroidUtil", str2);
        return false;
    }

    public static boolean a(Context context, String str, String str2) {
        if (d(context, str)) {
            return true;
        }
        Logger.d("AndroidUtil", "p not:" + str);
        try {
            return b(context, str, str2);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(Signature[] signatureArr) {
        for (Signature signature : signatureArr) {
            if (signature.toCharsString().toLowerCase().equals("308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499")) {
                Logger.d("AndroidUtil", "check wx Signature validate pass");
                return true;
            }
        }
        return false;
    }

    private static String b() {
        try {
            Class<?> cls = Class.forName("com.umeng.socialize.PlatformConfig");
            Field declaredField = cls.getDeclaredField("configs");
            declaredField.setAccessible(true);
            Map map = (Map) declaredField.get(cls);
            Class<?> cls2 = Class.forName("com.umeng.socialize.bean.SHARE_MEDIA");
            if (map != null) {
                Field declaredField2 = cls2.getDeclaredField("WEIXIN");
                declaredField2.setAccessible(true);
                Enum r22 = (Enum) declaredField2.get(cls2);
                Logger.d("AndroidUtil", "[appid] enum weixin =" + r22.ordinal());
                Object obj = map.get(r22);
                Field declaredField3 = Class.forName("com.umeng.socialize.PlatformConfig$APPIDPlatform").getDeclaredField("appId");
                declaredField3.setAccessible(true);
                Object obj2 = declaredField3.get(obj);
                Logger.d("AndroidUtil", "[getWxAppidByUmeng] wx appid =" + obj2);
                if (obj2 instanceof String) {
                    return (String) obj2;
                }
                return null;
            }
            return null;
        } catch (Throwable th2) {
            Logger.w("AndroidUtil", "[getWxAppidByUmeng] failed  e=" + th2.getMessage());
            return null;
        }
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(f2892b)) {
            try {
                f2892b = context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0)).toString();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return f2892b;
        }
        return f2892b;
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            a(stringBuffer, b10);
        }
        return stringBuffer.toString();
    }

    public static List<String> b(Context context, Intent intent, String str) {
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

    public static boolean b(Context context, String str) {
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
            Logger.w("AndroidUtil", "checkPermission error:" + th2.getMessage());
            return false;
        }
    }

    public static boolean b(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        Logger.d("AndroidUtil", "try d:" + str2);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.getPackageManager().resolveActivity(intent, 0) != null;
    }

    public static boolean b(String str) {
        boolean z10 = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            String trim = str.trim();
            z10 = trim.matches("^https?(.*)\\.(png|jpg|jpeg)(\\?.*)?$");
            if (!z10) {
                Logger.w("AndroidUtil", "Invalid url - " + trim);
            }
        } catch (Throwable unused) {
        }
        return z10;
    }

    private static String c() {
        Field[] declaredFields;
        Field[] declaredFields2;
        try {
            Class<?> cls = Class.forName("cn.jiguang.share.android.api.JShareInterface");
            for (Field field : cls.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(cls);
                Logger.d("AndroidUtil", "platFormManager =" + obj);
                if (obj != null) {
                    for (Field field2 : obj.getClass().getDeclaredFields()) {
                        field2.setAccessible(true);
                        Object obj2 = field2.get(obj);
                        if (obj2 instanceof HashMap) {
                            Object obj3 = ((HashMap) obj2).get("Wechat");
                            if (obj3 instanceof HashMap) {
                                String str = (String) ((HashMap) obj3).get("AppId");
                                Logger.d("AndroidUtil", "[getWxAppidByJiguang] wx appid=" + str);
                                return str;
                            }
                        }
                    }
                    continue;
                }
            }
            return null;
        } catch (Throwable th2) {
            Logger.w("AndroidUtil", "[getWxAppidByJiguangCode] failed " + th2.getMessage());
            return null;
        }
    }

    public static List<String> c(Context context, Intent intent, String str) {
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

    public static void c(Context context, String str) {
        try {
            Intent g10 = g(context);
            if (g10 != null) {
                if (!TextUtils.isEmpty(str)) {
                    g10.putExtra(PushConstants.EXTRA, str);
                }
                context.startActivity(g10);
            }
        } catch (Throwable th2) {
            Logger.dd("AndroidUtil", "startMainActivity error:" + th2.getMessage());
        }
    }

    public static boolean c(Context context) {
        if (a(context, "android.permission.SYSTEM_ALERT_WINDOW")) {
            if (Build.VERSION.SDK_INT < 23) {
                return true;
            }
            if (Settings.canDrawOverlays(context)) {
                Logger.d("AndroidUtil", "can over lay...");
                return true;
            }
            Logger.d("AndroidUtil", "user no open draw overlay permission");
        }
        return false;
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String trim = str.trim();
        boolean matches = trim.matches("^[http|https]+://.*");
        if (!matches) {
            Logger.w("AndroidUtil", "Invalid url - " + trim);
        }
        return matches;
    }

    public static String d(Context context) {
        if (TextUtils.isEmpty(f2893c)) {
            try {
                f2893c = g.a(JPushConstants.getAppContext(context));
            } catch (Throwable th2) {
                Logger.ww("AndroidUtil", "#unexcepted - getCurProcessName failed:" + th2.getMessage());
            }
            return f2893c;
        }
        return f2893c;
    }

    public static String d(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        return a(str.getBytes());
    }

    public static boolean d(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return context.getPackageManager().getPackageInfo(str, 0) != null;
    }

    public static void e(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                String d10 = d(context);
                String packageName = context.getPackageName();
                if (d10 == null || packageName == null || packageName.equals(d10)) {
                    return;
                }
                WebView.setDataDirectorySuffix(d10);
                Logger.d("AndroidUtil", "setDataDirectorySuffix =" + d10);
            }
        } catch (Throwable th2) {
            Logger.e("AndroidUtil", "fixWebViewProcess e:" + th2);
        }
    }

    public static boolean e(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent(str);
            intent.addCategory(context.getPackageName());
            return !packageManager.queryIntentActivities(intent, 0).isEmpty();
        } catch (Throwable th2) {
            Logger.dd("AndroidUtil", "hasActivityIntentFilter error:" + th2.getMessage());
            return true;
        }
    }

    public static String f(Context context, String str) {
        return context.getPackageName() + "." + str;
    }

    public static void f(Context context) {
        c(context, null);
    }

    public static Intent g(Context context) {
        Throwable th2;
        Intent intent;
        PackageManager packageManager;
        String packageName;
        try {
            packageManager = context.getPackageManager();
            packageName = context.getApplicationContext().getPackageName();
        } catch (Throwable th3) {
            th2 = th3;
            intent = null;
        }
        if (TextUtils.isEmpty(packageName)) {
            Logger.ww("AndroidUtil", "The package with the given name cannot be found!");
            return null;
        }
        intent = packageManager.getLaunchIntentForPackage(packageName);
        try {
        } catch (Throwable th4) {
            th2 = th4;
            Logger.w("AndroidUtil", "getLaunchIntent error:" + th2.getMessage());
            return intent;
        }
        if (intent == null) {
            Logger.ww("AndroidUtil", "Can't get launch intent for this package!");
            return null;
        }
        intent.addFlags(268468224);
        return intent;
    }

    public static String g(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo == null) {
                return null;
            }
            return a(packageInfo.signatures[0].toByteArray());
        } catch (Throwable th2) {
            Logger.d("AndroidUtil", "[getAppSignMD5] failed :" + th2.getMessage());
            return null;
        }
    }

    public static int h(Context context, String str) {
        if (context == null) {
            return -1;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static boolean h(Context context) {
        StringBuilder sb2;
        String str;
        Logger.dd("AndroidUtil", "action:checkValidManifest");
        if (!a(context, PushActivity.class)) {
            Logger.w("AndroidUtil", "AndroidManifest.xml missing required activity: " + PushActivity.class.getCanonicalName());
        }
        if (!a(context, PopWinActivity.class)) {
            Logger.ww("AndroidUtil", "AndroidManifest.xml missing activity: " + PopWinActivity.class.getCanonicalName());
            Logger.ww("AndroidUtil", "You will unable to use pop-window rich push type.");
        }
        if (!e(context, "cn.jpush.android.ui.PushActivity")) {
            Logger.w("AndroidUtil", "AndroidManifest.xml missing required intent filter for PushActivity: cn.jpush.android.ui.PushActivity");
        }
        if (!a(context, JNotifyActivity.class)) {
            sb2 = new StringBuilder();
        } else if (TextUtils.isEmpty(JPushConstants.getMessageReceiverClass(context))) {
            str = "AndroidManifest.xml missing required receiver: please custom receiver extends JPushMessageReceiver";
            Logger.ee("AndroidUtil", str);
            return false;
        } else if (i(context)) {
            boolean j10 = j(context);
            cn.jpush.android.o.b.a(context, j10);
            if (j10) {
                return true;
            }
            Logger.ww("AndroidUtil", "You will unable to use install app of in-app message.");
            return true;
        } else {
            sb2 = new StringBuilder();
        }
        sb2.append("AndroidManifest.xml missing required activity: ");
        sb2.append(JNotifyActivity.class.getCanonicalName());
        str = sb2.toString();
        Logger.ee("AndroidUtil", str);
        return false;
    }

    public static boolean i(Context context) {
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent(context, JNotifyActivity.class), 0);
                if (resolveActivity == null) {
                    return false;
                }
                ActivityInfo activityInfo = resolveActivity.activityInfo;
                if (activityInfo != null && !activityInfo.exported) {
                    Logger.ee("AndroidUtil", "AndroidManifest.xml activity JNotifyActivity exported Must be true ");
                    return false;
                }
                Intent intent = new Intent();
                intent.setAction("cn.jpush.android.intent.JNotifyActivity");
                intent.addCategory("android.intent.category.DEFAULT");
                if (packageManager.resolveActivity(intent, 0) == null) {
                    Logger.ee("AndroidUtil", "AndroidManifest.xml activity JNotifyActivity Action Must be <action android:name=\"cn.jpush.android.intent.JNotifyActivity\" />");
                    Logger.ee("AndroidUtil", "AndroidManifest.xml activity JNotifyActivity Action Must be <category android:name=\"android.intent.category.DEFAULT\" />");
                    Logger.ee("AndroidUtil", "AndroidManifest.xml activity JNotifyActivity not set <data>");
                    return false;
                }
                return true;
            } catch (Throwable th2) {
                Logger.dd("AndroidUtil", "hasJNotifyTransitActivity error:" + th2.getMessage());
            }
        }
        return false;
    }

    public static boolean j(Context context) {
        return false;
    }

    public static boolean k(Context context) {
        return JPushConstants.SDK_VERSION_CODE < 420 ? q(context) : cn.jpush.android.o.b.f3178b;
    }

    public static boolean l(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(SharePlatformBean.WechatPackage, 64);
            if (packageInfo == null) {
                return false;
            }
            return a(packageInfo.signatures);
        } catch (Throwable th2) {
            Logger.d("AndroidUtil", "[isWXAppInstalled] check failed :" + th2.getMessage());
            return false;
        }
    }

    public static boolean m(Context context) {
        try {
            context.getPackageManager().getApplicationInfo(SharePlatformBean.WechatPackage, 128).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0);
        } catch (Throwable unused) {
        }
        return true;
    }

    public static String n(Context context) {
        String b10 = b();
        if (TextUtils.isEmpty(b10)) {
            b10 = s(context);
            if (TextUtils.isEmpty(b10)) {
                b10 = t(context);
                if (TextUtils.isEmpty(b10)) {
                    b10 = c();
                    if (TextUtils.isEmpty(b10)) {
                        b10 = r(context);
                        if (!TextUtils.isEmpty(b10)) {
                        }
                    }
                }
            }
        }
        return b10;
    }

    public static String o(Context context) {
        ComponentInfo a10;
        String str;
        try {
            str = f2891a;
        } catch (Throwable th2) {
            Logger.d("AndroidUtil", "getUserServiceClass failed:" + th2);
        }
        if (str != null) {
            return str;
        }
        Intent intent = new Intent();
        intent.setAction(JConstants.USER_SERVICE_ACTION);
        intent.setPackage(context.getPackageName());
        List<String> c10 = c(context, intent, "");
        if (c10 != null && c10.size() >= 1 && JCommonService.class.isAssignableFrom(Class.forName(c10.get(0)))) {
            f2891a = c10.get(0);
            Logger.ii("AndroidUtil", "found userServiceClass :" + f2891a + " by getCommonServiceNames");
        }
        if (TextUtils.isEmpty(f2891a) && (a10 = a(context, context.getPackageName(), JCommonService.class)) != null) {
            f2891a = a10.name;
            Logger.ii("AndroidUtil", "found userServiceClass :" + f2891a + " by getComponentInfo");
        }
        if (TextUtils.isEmpty(f2891a)) {
            f2891a = "";
        }
        return f2891a;
    }

    public static Activity p(Context context) {
        if (context != null) {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mActivities");
                declaredField.setAccessible(true);
                Map map = (Map) declaredField.get(invoke);
                if (map == null) {
                    Logger.w("AndroidUtil", "get current activities for currentActivityThread, activities is null");
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
                            Logger.w("AndroidUtil", "[getCurrentActivity] activity is null");
                            return null;
                        } else if (activity.getPackageName().equals(context.getPackageName())) {
                            Logger.d("AndroidUtil", "getCurrentActivity: " + activity.getLocalClassName());
                            return activity;
                        } else {
                            Logger.w("AndroidUtil", "current activity packageName: " + activity.getPackageName() + ", appPackageName: " + context.getPackageName());
                            return null;
                        }
                    }
                }
            } catch (Throwable th2) {
                Logger.w("AndroidUtil", "[getCurrentActivity] error: " + th2.getMessage());
            }
        }
        return null;
    }

    private static boolean q(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager.getRunningTasks(1) == null) {
            return cn.jpush.android.o.b.f3178b;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = activityManager.getRunningTasks(1).get(0);
        if (runningTaskInfo == null || runningTaskInfo.topActivity == null) {
            return cn.jpush.android.o.b.f3178b;
        }
        Logger.d("AndroidUtil", "check process foreground status by runningTask");
        return runningTaskInfo.topActivity.getPackageName().equals(context.getPackageName());
    }

    private static String r(Context context) {
        try {
            Class.forName("cn.jiguang.share.android.api.JShareInterface");
            String a10 = a(context, "JGShareSDK.xml", "Wechat", "AppId");
            if (TextUtils.isEmpty(a10)) {
                a10 = a(context, "JGShareSDK.conf", "Wechat", "AppId");
            }
            Logger.d("AndroidUtil", "[getWxAppidByJiguangFile] wx appid=" + a10);
            return a10;
        } catch (Throwable th2) {
            Logger.w("AndroidUtil", "[getWxAppidByJiguangFile]  failed :" + th2.getMessage());
            return null;
        }
    }

    private static String s(Context context) {
        try {
            Class.forName("cn.jiguang.share.android.api.JShareInterface");
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("wxAppId");
            Logger.d("AndroidUtil", "[getWxAppidByShareMeta] share sdk meta wxid=" + string);
            return string;
        } catch (Throwable th2) {
            Logger.w("AndroidUtil", "[getWxAppidByShareMeta]  error :" + th2.getMessage());
            return null;
        }
    }

    private static String t(Context context) {
        try {
            Class.forName("cn.sharesdk.onekeyshare.OnekeyShare");
            String a10 = a(context, "ShareSDK.xml", "Wechat", "AppId");
            Logger.d("AndroidUtil", "[getWxAppidByShareFile] share sdk wxid=" + a10);
            return a10;
        } catch (Throwable th2) {
            Logger.w("AndroidUtil", "[getWxAppidByShareFile] failed :" + th2.getMessage());
            return null;
        }
    }
}
