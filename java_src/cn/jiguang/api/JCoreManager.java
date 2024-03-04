package cn.jiguang.api;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.a.a;
import cn.jiguang.as.d;
import cn.jiguang.f.f;
import cn.jiguang.g.b;
import cn.jiguang.internal.JConstants;
import cn.jiguang.internal.JCoreInternalHelper;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class JCoreManager {
    private static final String TAG = "JCoreManager";
    private static final AtomicBoolean isInited = new AtomicBoolean();

    public static void addDispatchAction(String str, String str2) {
        a.c(f.a());
        cn.jiguang.d.a.a(str, str2);
    }

    public static void changeLiveStatus(boolean z10) {
    }

    public static Context getAppContext(Context context) {
        return JConstants.getAppContext(context);
    }

    @Deprecated
    public static boolean getConnectionState(Context context) {
        Object onEvent = JCoreInternalHelper.getInstance().onEvent(context, JConstants.SDK_TYPE, 67, false, null, null, new Object[0]);
        if (onEvent instanceof Boolean) {
            return ((Boolean) onEvent).booleanValue();
        }
        return false;
    }

    public static boolean getDebugMode() {
        return JConstants.DEBUG_MODE;
    }

    public static void init(Context context) {
        Context appContext = JConstants.getAppContext(context);
        if (appContext == null) {
            return;
        }
        JConstants.isCallInit.set(true);
        AtomicBoolean atomicBoolean = isInited;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        try {
            if (cn.jiguang.ar.f.a(appContext)) {
                atomicBoolean.set(false);
                JConstants.isCallInit.set(false);
                return;
            }
            cn.jiguang.d.a.a(appContext);
            JCoreInternalHelper.getInstance().onEvent(appContext, JConstants.SDK_TYPE, 10, true, "tcp_a1", null, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    public static void initCrashHandler(Context context) {
        onEvent(context, JConstants.SDK_TYPE, 70, true, null, null, new Object[0]);
    }

    public static boolean isInternal() {
        return JConstants.INTERNAL_USE;
    }

    public static boolean isTestEnv() {
        return JConstants.isTestEnv();
    }

    public static Object onEvent(Context context, String str, int i9, String str2, Bundle bundle, Object... objArr) {
        boolean z10;
        switch (i9) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 12:
            case 13:
            case 18:
            case 19:
            case 20:
            case 21:
            case 25:
            case 26:
            case 32:
            case 33:
            case 34:
            case 42:
            case 43:
            case 45:
            case 46:
            case 47:
            case 49:
            case 53:
            case 58:
            case 60:
            case 63:
            case 64:
            case 67:
            case 68:
            case 69:
            case 75:
            case 76:
            case 77:
            case 78:
            case 82:
            case 83:
                z10 = false;
                break;
            default:
                z10 = true;
                break;
        }
        return onEvent(context, str, i9, z10, str2, bundle, objArr);
    }

    public static Object onEvent(Context context, String str, int i9, boolean z10, String str2, Bundle bundle, Object... objArr) {
        if (i9 != 18 && i9 != 13 && i9 != 52) {
            init(context);
        }
        return JCoreInternalHelper.getInstance().onEvent(context, str, i9, z10, str2, bundle, objArr);
    }

    public static void register(Context context, String str) {
        try {
            if (cn.jiguang.ar.f.a(context)) {
                JConstants.isCallInit.set(false);
                return;
            }
            JConstants.isCallInit.set(true);
            cn.jiguang.d.a.a(context);
            String b10 = cn.jiguang.ar.a.b(context);
            if (!TextUtils.isEmpty(b10) && !b10.equals(str)) {
                d.h(TAG, "[register] not same appkey with manifest,please check it");
                Bundle bundle = new Bundle();
                bundle.putString("appkey", str);
                JCoreInternalHelper.getInstance().onEvent(context, JConstants.SDK_TYPE, 10, true, "a5", bundle, new Object[0]);
            }
            JConstants.APP_KEY = str;
            Bundle bundle2 = new Bundle();
            bundle2.putString("appkey", str);
            JCoreInternalHelper.getInstance().onEvent(context, JConstants.SDK_TYPE, 10, true, "a5", bundle2, new Object[0]);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void reportWakedData(Context context, Bundle bundle, int i9) {
        if (context == null) {
            d.h(TAG, "[reportWakedData] context was null");
        } else if (bundle == null) {
            d.h(TAG, "[reportWakedData] bundle was null");
        } else {
            int i10 = bundle.getInt("type", -1);
            if (i10 != -1) {
                i9 = i10;
            }
            if (i9 != 8 && i9 != 16) {
                d.h(TAG, "[reportWakedData] wrong type:" + i9);
                return;
            }
            bundle.putInt("type", i9);
            d.c(TAG, "action - reportWakedData" + bundle.toString());
            onEvent(context, null, 74, null, bundle, new Object[0]);
        }
    }

    public static void requestPermission(Context context) {
        String str;
        if (context == null) {
            str = "[requestPermission] context was null";
        } else if (context instanceof Activity) {
            int i9 = Build.VERSION.SDK_INT;
            if (i9 < 23) {
                str = "[requestPermission] android.os.Build.VERSION.SDK_INT<23";
            } else if (context.getApplicationInfo().targetSdkVersion >= 23) {
                if (i9 < 23 || context.getApplicationInfo().targetSdkVersion < 23) {
                    return;
                }
                try {
                    LinkedList linkedList = new LinkedList();
                    linkedList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                    linkedList.add("android.permission.READ_EXTERNAL_STORAGE");
                    linkedList.add("android.permission.ACCESS_FINE_LOCATION");
                    linkedList.add("android.permission.READ_PHONE_STATE");
                    if (JConstants.isAndroidQ(context, false, "will request background location permission")) {
                        linkedList.add("android.permission.ACCESS_BACKGROUND_LOCATION");
                    }
                    List<String> a10 = cn.jiguang.f.a.a(context, linkedList);
                    if (a10 != null && !a10.isEmpty()) {
                        d.a(TAG, "lackPermissions:" + a10);
                        Class.forName("android.app.Activity").getDeclaredMethod("requestPermissions", String[].class, Integer.TYPE).invoke(context, a10.toArray(new String[a10.size()]), 1);
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    d.h(TAG, "#unexcepted - requestPermission e:" + e10);
                    return;
                }
            } else {
                str = "[requestPermission] app targetSdkVersion<23";
            }
        } else {
            str = "[requestPermission] context must instanceof Activity";
        }
        d.h(TAG, str);
    }

    public static void setAnalysisAction(JAnalyticsAction jAnalyticsAction) {
        JConstants.jAnalyticsAction = jAnalyticsAction;
    }

    public static void setDebugMode(boolean z10) {
        JConstants.DEBUG_MODE = z10;
    }

    public static void setLBSEnable(Context context, boolean z10) {
        d.c(TAG, "action - setLBSEnable-control:" + z10);
        if (!z10) {
            try {
                b.a(context, cn.jiguang.g.a.z().a((cn.jiguang.g.a<Boolean>) Boolean.FALSE));
            } catch (Throwable unused) {
            }
        }
        onEvent(context, null, 27, null, null, Boolean.valueOf(z10));
    }

    public static void setSDKConfigs(Context context, Bundle bundle) {
        JCoreInternalHelper.getInstance().onEvent(context, JConstants.SDK_TYPE, 55, true, null, bundle, new Object[0]);
    }

    public static void stopCrashHandler(Context context) {
        onEvent(context, JConstants.SDK_TYPE, 71, true, null, null, new Object[0]);
    }

    public static void unRegister(Context context) {
        JConstants.isCallInit.set(true);
        cn.jiguang.d.a.a(context);
        JCoreInternalHelper.getInstance().onEvent(context, JConstants.SDK_TYPE, 10, true, "tcp_a23", null, new Object[0]);
    }
}
