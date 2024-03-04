package cn.jpush.android.helper;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.local.JPushConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class JCoreHelper {
    private static void a(Context context, String str, int i9, int i10, long j10, long j11, byte[] bArr, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putInt("cmd", i9);
        bundle.putInt("ver", i10);
        bundle.putLong("rid", j10);
        bundle.putLong("timeout", j11);
        bundle.putByteArray("body", bArr);
        JCoreManager.onEvent(context, str, z10 ? 17 : 16, null, bundle, new Object[0]);
    }

    public static Boolean checkSdkBanned(Context context) {
        Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 82, null, null, new Object[0]);
        return onEvent instanceof Boolean ? (Boolean) onEvent : Boolean.FALSE;
    }

    public static void execue(Context context, String str, Runnable runnable) {
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 11, str, null, runnable);
    }

    public static JSONObject fillBase(Context context, JSONObject jSONObject, String str) {
        Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 26, "", null, jSONObject, str);
        if (onEvent instanceof JSONObject) {
            return (JSONObject) onEvent;
        }
        return null;
    }

    public static void futureExecutor(Context context, Runnable runnable) {
        futureExecutor(context, "FUTURE", runnable);
    }

    public static void futureExecutor(Context context, String str, Runnable runnable) {
        if (cn.jpush.android.m.a.f3140c >= 238) {
            JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 76, null, null, runnable);
        } else {
            execue(context, str, runnable);
        }
    }

    public static String getAppKey(Context context) {
        Object onEvent = JCoreManager.onEvent(context, null, 7, null, null, new Object[0]);
        return onEvent instanceof String ? (String) onEvent : "";
    }

    public static String getDeviceId(Context context) {
        Object onEvent = JCoreManager.onEvent(context, null, 8, null, null, new Object[0]);
        return onEvent instanceof String ? (String) onEvent : "";
    }

    public static Object getDyInfo(Context context, int i9) {
        return JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 64, null, null, Integer.valueOf(i9));
    }

    public static int getJCoreSDKVersionInt() {
        Object onEvent = JCoreManager.onEvent(null, null, 25, null, null, new Object[0]);
        if (onEvent instanceof Integer) {
            return ((Integer) onEvent).intValue();
        }
        return 0;
    }

    public static int getJPushSDKVersionInt() {
        return cn.jpush.android.m.a.f3138a;
    }

    public static String getRegistrationID(Context context) {
        Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 4, null, null, new Object[0]);
        return onEvent instanceof String ? (String) onEvent : "";
    }

    public static long getUid(Context context) {
        Object onEvent = JCoreManager.onEvent(context, null, 20, null, null, null);
        if (onEvent instanceof Long) {
            return ((Long) onEvent).longValue();
        }
        return 0L;
    }

    public static void majorExecutor(Context context, String str, Runnable runnable) {
        if (cn.jpush.android.m.a.f3140c >= 238) {
            JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 75, null, null, runnable);
        } else {
            execue(context, str, runnable);
        }
    }

    public static void normalExecutor(Context context, String str, Runnable runnable) {
        if (cn.jpush.android.m.a.f3140c >= 238) {
            JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 77, null, null, runnable);
        } else {
            execue(context, str, runnable);
        }
    }

    public static void reportSdkType(Context context, String str, int i9, int i10, int i11) {
        JCoreManager.onEvent(context, JConstants.SDK_TYPE, 72, true, null, null, str, Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static void runActionWithService(Context context, String str, String str2, Bundle bundle) {
        JCoreManager.onEvent(context, str, 3, str2, bundle, new Object[0]);
    }

    public static void saEvent(Context context, String str, Object obj) {
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 56, str, null, obj);
    }

    public static void sendData(Context context, String str, int i9, int i10, long j10, byte[] bArr) {
        a(context, str, i9, i10, j10, 0L, bArr, false);
    }

    public static void sendRequest(Context context, String str, int i9, int i10, long j10, long j11, byte[] bArr) {
        a(context, str, i9, i10, j10, j11, bArr, true);
    }

    public static void setChannel(Context context, String str) {
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 9, str, null, new Object[0]);
    }

    public static void triggerSceneCheck(Context context) {
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 29, null, null, 3);
    }

    public static void updateDy(Context context, int i9) {
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 65, null, null, Integer.valueOf(i9));
    }
}
