package com.meizu.cloud.pushsdk.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.PushManager;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.d.b.f;
import com.meizu.cloud.pushsdk.d.c.b;
import com.meizu.cloud.pushsdk.d.f.e;
import com.meizu.cloud.pushsdk.notification.MPushMessage;
import com.meizu.cloud.pushsdk.notification.model.AppIconSetting;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class d {
    private static int a(Context context) {
        if (MzSystemUtils.isMeizu(context)) {
            return 1;
        }
        if (MzSystemUtils.isXiaoMi()) {
            return 2;
        }
        return MzSystemUtils.isHuaWei() ? 3 : 0;
    }

    private static Intent a(Context context, Map<String, String> map) {
        String str;
        String str2;
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent(PushConstants.MZ_PUSH_TRACKER_SERVICE_ACTION), 0);
        if (queryIntentServices != null) {
            Iterator<ResolveInfo> it = queryIntentServices.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = null;
                    str2 = null;
                    break;
                }
                ResolveInfo next = it.next();
                if (PushConstants.PUSH_PACKAGE_NAME.equals(next.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = next.serviceInfo;
                    str2 = serviceInfo.packageName;
                    str = serviceInfo.name;
                    break;
                }
            }
            if (TextUtils.isEmpty(str) && queryIntentServices.size() > 0) {
                str2 = queryIntentServices.get(0).serviceInfo.packageName;
                str = queryIntentServices.get(0).serviceInfo.name;
            }
        } else {
            str = null;
            str2 = null;
        }
        DebugLogger.i("UxIPUtils", "current process packageName " + str2);
        if (!TextUtils.isEmpty(str)) {
            try {
                String jSONObject = e.a((Map) map).toString();
                Intent intent = new Intent();
                intent.setPackage(str2);
                intent.setAction(PushConstants.MZ_PUSH_TRACKER_SERVICE_ACTION);
                intent.putExtra(PushConstants.EXTRA_PUSH_TRACKER_JSON_DATA, jSONObject);
                return intent;
            } catch (Exception e10) {
                e10.printStackTrace();
                DebugLogger.e("UxIPUtils", "getRemotePushTrackerIntent error " + e10.getMessage());
            }
        }
        return null;
    }

    public static com.meizu.cloud.pushsdk.handler.a.c.d a(String str) {
        String str2;
        com.meizu.cloud.pushsdk.handler.a.c.d dVar = new com.meizu.cloud.pushsdk.handler.a.c.d();
        if (TextUtils.isEmpty(str)) {
            str2 = "the platformExtra is empty";
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                return com.meizu.cloud.pushsdk.handler.a.c.d.a().a(jSONObject.has(PushConstants.TASK_ID) ? jSONObject.getString(PushConstants.TASK_ID) : null).d(jSONObject.has("device_id") ? jSONObject.getString("device_id") : null).c(jSONObject.has(PushConstants.PUSH_TIMESTAMP) ? jSONObject.getString(PushConstants.PUSH_TIMESTAMP) : null).b(jSONObject.has(PushConstants.SEQ_ID) ? jSONObject.getString(PushConstants.SEQ_ID) : null).a();
            } catch (Exception unused) {
                str2 = "the platformExtra parse error";
            }
        }
        DebugLogger.e("UxIPUtils", str2);
        return dVar;
    }

    public static String a(Intent intent) {
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_APP_PUSH_TASK_ID);
        if (TextUtils.isEmpty(stringExtra)) {
            try {
                MPushMessage mPushMessage = (MPushMessage) intent.getSerializableExtra(PushConstants.MZ_PUSH_PRIVATE_MESSAGE);
                return mPushMessage != null ? mPushMessage.getTaskId() : stringExtra;
            } catch (Exception e10) {
                DebugLogger.e("UxIPUtils", "parse MessageV2 error " + e10.getMessage());
                return "no push platform task";
            }
        }
        return stringExtra;
    }

    public static void a(Context context, Intent intent, String str, int i9) {
        a(context, intent, PushManager.TAG, str, i9);
    }

    public static void a(Context context, Intent intent, String str, String str2, int i9) {
        if (TextUtils.isEmpty(a(intent))) {
            return;
        }
        a(context, context.getPackageName(), intent.getStringExtra(PushConstants.MZ_PUSH_MESSAGE_STATISTICS_IMEI_KEY), a(intent), str, str2, i9);
    }

    public static void a(Context context, String str, int i9, String str2, String str3) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        a(context, context.getPackageName(), str3, str2, PushManager.TAG, str, i9);
    }

    public static void a(Context context, String str, String str2, String str3, String str4, String str5) {
        a(context, true, str, str2, str3, str4, "dpm", str5);
    }

    public static void a(Context context, String str, String str2, String str3, String str4, String str5, int i9) {
        HashMap hashMap = new HashMap(8);
        hashMap.put("taskId", str3);
        hashMap.put("deviceId", str2);
        hashMap.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
        hashMap.put(PushConstants.PACKAGE_NAME, str);
        hashMap.put("pushsdk_version", str4);
        hashMap.put("push_info", str5);
        hashMap.put("push_info_type", String.valueOf(i9));
        a(context, false, "notification_service_message", (Map<String, String>) hashMap);
    }

    public static void a(Context context, String str, String str2, String str3, String str4, String str5, long j10) {
        a(context, true, str, str2, str3, str4, "spm", str5, j10);
    }

    public static void a(Context context, boolean z10, String str, String str2, String str3, String str4, String str5, String str6) {
        a(context, z10, str, str2, str3, str4, str5, str6, 0L);
    }

    public static void a(Context context, boolean z10, String str, String str2, String str3, String str4, String str5, String str6, long j10) {
        HashMap hashMap = new HashMap(8);
        hashMap.put("en", str5);
        hashMap.put("ti", str3);
        hashMap.put(AppIconSetting.DEFAULT_LARGE_ICON, str2);
        if (TextUtils.isEmpty(str6)) {
            str6 = String.valueOf(System.currentTimeMillis() / 1000);
        }
        hashMap.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, str6);
        hashMap.put("pn", str);
        hashMap.put("pv", PushManager.TAG);
        hashMap.put("nm", String.valueOf(System.currentTimeMillis() / 1000));
        if (!TextUtils.isEmpty(str4)) {
            hashMap.put("si", str4);
        }
        if (a(context, hashMap, z10, j10)) {
            return;
        }
        a(context, z10, str5, hashMap);
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.meizu.cloud.pushsdk.d.c.b$a] */
    public static void a(Context context, boolean z10, String str, Map<String, String> map) {
        DebugLogger.e("UxIPUtils", "onLogEvent eventName [" + str + "] properties = " + map);
        if ("notification_service_message".equals(str)) {
            return;
        }
        com.meizu.cloud.pushsdk.d.a.a(context, (com.meizu.cloud.pushsdk.c.c.a) null, (f) null).a(((b.a) com.meizu.cloud.pushsdk.d.c.b.d().a(str).a(a(context)).a(Long.valueOf(map.get(TimeDisplaySetting.TIME_DISPLAY_SETTING)).longValue())).h(map.get("nm") != null ? map.get("nm") : String.valueOf(System.currentTimeMillis() / 1000)).c(map.get(AppIconSetting.DEFAULT_LARGE_ICON)).e(map.get("pn")).d(map.get("pv")).b(map.get("ti")).f(TextUtils.isEmpty(map.get("si")) ? "" : map.get("si")).g(String.valueOf(b.j(context, map.get("pn")))).b(), z10);
    }

    private static boolean a(final Context context, final Intent intent, final boolean z10, final Map<String, String> map, final long j10) {
        String str;
        if (intent == null) {
            str = "startRemotePushTracker error intent is null";
        } else if (j10 != 0) {
            new Handler(context.getMainLooper()).postDelayed(new Runnable() { // from class: com.meizu.cloud.pushsdk.util.d.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        context.startService(intent);
                        DebugLogger.i("UxIPUtils", "delayed " + j10 + " ms start tracker data in mz_tracker process " + intent.getStringExtra(PushConstants.EXTRA_PUSH_TRACKER_JSON_DATA));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        DebugLogger.e("UxIPUtils", "delayed startRemotePushTracker error " + e10.getMessage());
                        d.a(context, z10, (String) map.get("en"), map);
                    }
                }
            }, j10);
            return true;
        } else {
            try {
                context.startService(intent);
                DebugLogger.i("UxIPUtils", "immediately start tracker data in mz_tracker process " + intent.getStringExtra(PushConstants.EXTRA_PUSH_TRACKER_JSON_DATA));
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
                str = "startRemotePushTracker error " + e10.getMessage();
            }
        }
        DebugLogger.e("UxIPUtils", str);
        return false;
    }

    private static boolean a(Context context, Map<String, String> map, boolean z10, long j10) {
        return a(context, a(context, map), z10, map, j10);
    }

    public static void b(Context context, String str, String str2, String str3, String str4, String str5) {
        a(context, false, str, str2, str3, str4, "rpe", str5);
    }

    public static void b(Context context, String str, String str2, String str3, String str4, String str5, long j10) {
        a(context, false, str, str2, str3, str4, "rpe", str5, j10);
    }

    public static void c(Context context, String str, String str2, String str3, String str4, String str5) {
        a(context, true, str, str2, str3, str4, "rpe", str5);
    }

    public static void c(Context context, String str, String str2, String str3, String str4, String str5, long j10) {
        a(context, false, str, str2, str3, str4, "sipm", str5, j10);
    }

    public static void d(Context context, String str, String str2, String str3, String str4, String str5) {
        a(context, true, str, str2, str3, str4, "cpm", str5);
    }

    public static void d(Context context, String str, String str2, String str3, String str4, String str5, long j10) {
        a(context, false, str, str2, str3, str4, "npm", str5, j10);
    }

    public static void e(Context context, String str, String str2, String str3, String str4, String str5) {
        a(context, true, str, str2, str3, str4, "acce", str5);
    }

    public static void f(Context context, String str, String str2, String str3, String str4, String str5) {
        a(context, true, str, str2, str3, str4, "acsm", str5);
    }
}
