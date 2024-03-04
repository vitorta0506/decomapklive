package cn.jpush.android.thirdpush.meizu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import com.meizu.cloud.pushsdk.MzPushMessageReceiver;
import com.meizu.cloud.pushsdk.PushManager;
import com.meizu.cloud.pushsdk.handler.MzPushMessage;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f3335b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f3336c;

    /* renamed from: a  reason: collision with root package name */
    public static final String f3334a = "Meizu".toLowerCase();

    /* renamed from: d  reason: collision with root package name */
    private static String f3337d = null;

    /* renamed from: e  reason: collision with root package name */
    private static String f3338e = null;

    public static boolean a(Context context) {
        b(context);
        return f3335b;
    }

    public static synchronized void b(Context context) {
        synchronized (a.class) {
            if (f3336c) {
                return;
            }
            if (context == null) {
                Logger.ww("MeizuPushHelper", "context is null");
                return;
            }
            if (i(context) && k(context)) {
                f3335b = true;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f3335b ? "support " : "not support ");
            sb2.append(f3334a);
            Logger.d("MeizuPushHelper", sb2.toString());
            f3336c = true;
        }
    }

    public static void c(Context context) {
        try {
            b(context);
            if (f3335b) {
                String e10 = e(context);
                String f10 = f(context);
                Logger.d("MeizuPushHelper", "meizuAppKey:" + String.valueOf(e10) + ",meizuAppId:" + String.valueOf(f10));
                if (!TextUtils.isEmpty(e10) && !TextUtils.isEmpty(f10)) {
                    PushManager.register(context, f10, e10);
                    return;
                }
                Logger.ee("MeizuPushHelper", "meizu sdk appkey or appid was empty,please check your manifest config");
            }
        } catch (Throwable th2) {
            Logger.w("MeizuPushHelper", "register error:" + th2.getMessage());
        }
    }

    public static byte d(Context context) {
        return (byte) 3;
    }

    public static String e(Context context) {
        if (TextUtils.isEmpty(f3337d)) {
            j(context);
        }
        return f3337d;
    }

    public static String f(Context context) {
        if (TextUtils.isEmpty(f3338e)) {
            j(context);
        }
        return f3338e;
    }

    public static String g(Context context) {
        return PushManager.getPushId(context);
    }

    public static boolean h(Context context) {
        String e10 = e(context);
        String f10 = f(context);
        if (!TextUtils.isEmpty(f10) && !TextUtils.isEmpty(e10)) {
            String appKey = JCoreHelper.getAppKey(context);
            if (TextUtils.isEmpty(appKey)) {
                Logger.ii("MeizuPushHelper", "jpush appkey is empty,need not clear plugin rid");
                return false;
            }
            String str = (String) Sp.get(context, Key.ThirdPush_ClearFlag());
            String md5 = JThirdPlatFormInterface.toMD5(e10 + f10 + appKey + JCoreHelper.getJCoreSDKVersionInt() + JCoreHelper.getJPushSDKVersionInt());
            if (TextUtils.isEmpty(str)) {
                Sp.set(context, Key.ThirdPush_ClearFlag().set(md5));
                return true;
            } else if (TextUtils.isEmpty(md5)) {
                return true;
            } else {
                if (TextUtils.equals(str, md5)) {
                    return false;
                }
                Logger.d("MeizuPushHelper", "local set changed,re bind token");
                Sp.set(context, Key.ThirdPush_ClearFlag().set(md5));
                return true;
            }
        }
        Logger.ii("MeizuPushHelper", f3334a + " appkey or appid is empty,need not clear plugin rid");
        return false;
    }

    private static boolean i(Context context) {
        String str;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class).invoke(cls, new String("o.meizu.product.model"));
        } catch (Throwable th2) {
            Logger.w("MeizuPushHelper", "isBrandMeizu get model:" + th2.getMessage());
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("get model:");
        sb2.append(str);
        sb2.append(",brand:");
        String str2 = Build.BRAND;
        sb2.append(str2);
        Logger.ii("MeizuPushHelper", sb2.toString());
        return !TextUtils.isEmpty(str) || "meizu".equalsIgnoreCase(str2) || "22c4185e".equalsIgnoreCase(str2);
    }

    private static void j(Context context) {
        ApplicationInfo applicationInfo;
        if (context == null) {
            Logger.w("MeizuPushHelper", "context was null");
            return;
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (Throwable th2) {
            Logger.ww("MeizuPushHelper", "load plugin sdk config info error:" + th2);
        }
        if (applicationInfo == null) {
            Logger.w("MeizuPushHelper", "metadata: Can not get metaData from ApplicationInfo");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null) {
            Logger.d("MeizuPushHelper", "NO meta data defined in manifest.");
            return;
        }
        f3337d = bundle.getString("MEIZU_APPKEY");
        f3338e = bundle.getString("MEIZU_APPID");
        if (!TextUtils.isEmpty(f3337d) && f3337d.length() > 3) {
            String str = f3337d;
            f3337d = str.substring(3, str.length());
            if (!TextUtils.isEmpty(f3338e) && f3338e.length() > 3) {
                String str2 = f3338e;
                f3338e = str2.substring(3, str2.length());
                Logger.d("MeizuPushHelper", "MEIZU_APPKEY value:" + f3337d);
                Logger.d("MeizuPushHelper", "MEIZU_APPID value:" + f3338e);
            }
            Logger.ww("MeizuPushHelper", "metadata: MEIZU_APPID - not defined in manifest");
            f3338e = null;
            Logger.d("MeizuPushHelper", "MEIZU_APPKEY value:" + f3337d);
            Logger.d("MeizuPushHelper", "MEIZU_APPID value:" + f3338e);
        }
        Logger.ww("MeizuPushHelper", "metadata: MEIZU_APPKEY - not defined in manifest");
        f3337d = null;
        if (!TextUtils.isEmpty(f3338e)) {
            String str22 = f3338e;
            f3338e = str22.substring(3, str22.length());
            Logger.d("MeizuPushHelper", "MEIZU_APPKEY value:" + f3337d);
            Logger.d("MeizuPushHelper", "MEIZU_APPID value:" + f3338e);
        }
        Logger.ww("MeizuPushHelper", "metadata: MEIZU_APPID - not defined in manifest");
        f3338e = null;
        Logger.d("MeizuPushHelper", "MEIZU_APPKEY value:" + f3337d);
        Logger.d("MeizuPushHelper", "MEIZU_APPID value:" + f3338e);
    }

    private static boolean k(Context context) {
        try {
            if (a()) {
                return l(context);
            }
            Logger.dd("MeizuPushHelper", "flyme version < 5.1.11.1A , Should not use MeizuPush");
            return false;
        } catch (Throwable th2) {
            Logger.ee("MeizuPushHelper", "Please check *.jar files your project depends on, can't load class - com.meizu.cloud.pushsdk.PushManager \nerror:" + th2);
            throw new RuntimeException("Please check *.jar files your project depends on.", th2);
        }
    }

    private static boolean l(Context context) {
        ActivityInfo a10 = a(context, context.getPackageName(), MzPushMessageReceiver.class);
        if (a10 != null) {
            Logger.d("MeizuPushHelper", "found receiver:" + a10.name);
            return true;
        }
        Logger.ww("MeizuPushHelper", "AndroidManifest.xml missing receiver extends meizu's MzPushMessageReceiver");
        return false;
    }

    private static ActivityInfo a(Context context, String str, Class<? extends BroadcastReceiver> cls) {
        ActivityInfo[] activityInfoArr;
        if (context != null && !TextUtils.isEmpty(str) && cls != null) {
            try {
                activityInfoArr = context.getPackageManager().getPackageInfo(str, 2).receivers;
            } catch (Throwable th2) {
                Logger.ww("MeizuPushHelper", "getReceiver error:" + th2);
            }
            if (activityInfoArr != null && activityInfoArr.length != 0) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    try {
                        if (cls.isAssignableFrom(Class.forName(activityInfo.name, false, cls.getClassLoader())) && activityInfo.enabled) {
                            return activityInfo;
                        }
                    } catch (Throwable unused) {
                    }
                }
                return null;
            }
            return null;
        }
        Logger.w("MeizuPushHelper", "Action - hasComponent, invalid param, context:" + context + ",packageName:" + str + ",cls:" + cls);
        return null;
    }

    private static boolean a() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "ro.build.display.id");
            Logger.i("MeizuPushHelper", "get flyme version is:" + str);
            if (!TextUtils.isEmpty(str)) {
                if (str.contains("OS") || str.compareToIgnoreCase("Flyme 5.1.11.1A") < 0) {
                    if (str.contains("OS")) {
                        if (str.compareToIgnoreCase("Flyme OS 5.1.11.1A") >= 0) {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
        } catch (Throwable th2) {
            Logger.e("MeizuPushHelper", " getFlymeVersion wrong error:" + th2);
        }
        return false;
    }

    public static void a(Context context, MzPushMessage mzPushMessage, String str) {
        try {
            if (mzPushMessage == null) {
                Logger.d("MeizuPushHelper", "meizuPushMessage is null");
                return;
            }
            Logger.d("MeizuPushHelper", "meizuPushMessage:" + mzPushMessage);
            if ((JThirdPlatFormInterface.ACTION_NOTIFICATION_CLCKED.equals(str) && a(context, mzPushMessage)) || TextUtils.isEmpty(str)) {
                return;
            }
            String selfDefineContentString = mzPushMessage.getSelfDefineContentString();
            if (TextUtils.isEmpty(selfDefineContentString)) {
                Logger.ww("MeizuPushHelper", "content is null");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(selfDefineContentString);
                JSONObject optJSONObject = jSONObject.optJSONObject("JMessageExtra");
                if (optJSONObject == null) {
                    String optString = jSONObject.optString("JMessageExtra");
                    if (!TextUtils.isEmpty(optString)) {
                        optJSONObject = new JSONObject(optString);
                    }
                }
                if (optJSONObject != null) {
                    Bundle bundle = new Bundle();
                    bundle.putByte("platform", (byte) 3);
                    bundle.putInt(JThirdPlatFormInterface.KEY_NOTI_ID, mzPushMessage.getNotifyId());
                    bundle.putString("data", optJSONObject.toString());
                    JThirdPlatFormInterface.doAction(context, str, bundle);
                    return;
                }
                Logger.ww("MeizuPushHelper", "this msg is not from jiguang");
            } catch (JSONException unused) {
                Logger.ww("MeizuPushHelper", "content not parse to json");
            }
        } catch (Throwable th2) {
            Logger.ww("MeizuPushHelper", "doMiPushMessage error:" + th2.getMessage());
        }
    }

    public static void a(Context context, int i9) {
        PushManager.clearNotification(context, i9);
    }

    private static boolean a(Context context, MzPushMessage mzPushMessage) {
        String selfDefineContentString = mzPushMessage.getSelfDefineContentString();
        if (!TextUtils.isEmpty(selfDefineContentString)) {
            try {
                JSONObject jSONObject = new JSONObject(selfDefineContentString).getJSONObject("JMessageExtra");
                String optString = jSONObject.optString("_jmsgid_");
                JSONObject jSONObject2 = jSONObject.getJSONObject("m_content");
                if (!jSONObject2.has("n_intent")) {
                    Logger.w("MeizuPushHelper", "not has n_intent");
                    return false;
                }
                jSONObject2.put(JThirdPlatFormInterface.KEY_MSG_ID, optString);
                jSONObject2.put("rom_type", 3);
                Bundle bundle = new Bundle();
                bundle.putString("JMessageExtra", jSONObject2.toString());
                Intent intent = new Intent("cn.jpush.android.intent.JNotifyActivity");
                intent.setPackage(context.getPackageName());
                intent.putExtras(bundle);
                intent.setFlags(335544320);
                context.startActivity(intent);
                return true;
            } catch (Throwable th2) {
                Logger.w("MeizuPushHelper", "selfDefineContentString:" + th2);
            }
        }
        return false;
    }
}
