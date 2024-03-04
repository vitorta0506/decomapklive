package cn.jpush.android.k;

import android.content.Context;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.c;
import com.tencent.rtmp.TXLiveConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {
    public static void a(Context context) {
        Logger.d("JAnalytics", "sendClickNotificationMessage");
        a(context, 2025, "Click the notification bar message");
    }

    public static void a(Context context, int i9, String str) {
        a(context, i9, str, null);
    }

    public static void a(Context context, int i9, String str, JSONObject jSONObject) {
        try {
            c.a(context, i9, str, jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void b(Context context) {
        a(context, 2026, "Clear the notification bar message");
    }

    public static void c(Context context) {
        int i9;
        String str;
        Logger.d("JAnalytics", "sendNotificationPermissions");
        int d10 = cn.jpush.android.aa.c.d(context);
        if (d10 == ((Integer) Sp.get(context, Key.IsNotificationEnabledLastTime())).intValue()) {
            Logger.d("JAnalytics", "sendNotificationPermissions enabled == integer : " + d10);
            return;
        }
        Key<Integer> IsNotificationEnabledLastTime = Key.IsNotificationEnabledLastTime();
        IsNotificationEnabledLastTime.set(Integer.valueOf(d10));
        Sp.set(context, IsNotificationEnabledLastTime);
        if (1 == d10) {
            i9 = 2027;
            str = "Enable notification permissions";
        } else {
            i9 = TXLiveConstants.PLAY_EVT_GET_METADATA;
            str = "Turn off notification permissions";
        }
        a(context, i9, str);
    }

    public static void d(Context context) {
        a(context, 2029, "App Browsing Page");
    }
}
