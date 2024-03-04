package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.push.f3;
import com.xiaomi.push.q3;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class s0 {
    private static int a(Map<String, String> map) {
        return Math.max(0, sf.k.a(map.get("notification_top_period"), 0));
    }

    private static Notification b(Notification notification, int i9, String str, r rVar) {
        if (notification != null) {
            if (!str.equals(notification.extras.getString("message_id"))) {
                notification = null;
            }
            return notification;
        }
        List<StatusBarNotification> z10 = rVar.z();
        if (z10 != null) {
            for (StatusBarNotification statusBarNotification : z10) {
                Notification notification2 = statusBarNotification.getNotification();
                String string = notification2.extras.getString("message_id");
                if (i9 == statusBarNotification.getId() && str.equals(string)) {
                    return notification2;
                }
            }
            return null;
        }
        return null;
    }

    private static f3.a c(Context context, String str, int i9, String str2, Notification notification) {
        return new t0(i9, str2, context, str, notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(Context context, String str, int i9, String str2, Notification notification) {
        if (sf.e.i(context) && notification != null && notification.extras.getBoolean("mipush_n_top_flag", false)) {
            k(context, str, i9, str2, notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(Context context, Map<String, String> map, com.xiaomi.push.j0 j0Var, long j10) {
        if (map == null || j0Var == null || !sf.e.i(context) || !g(map)) {
            return;
        }
        int a10 = a(map);
        int h10 = h(map);
        if (a10 <= 0 || h10 > a10) {
            tf.c.u("set top notification failed - period:" + a10 + " frequency:" + h10);
            return;
        }
        j0Var.setPriority(2);
        Bundle bundle = new Bundle();
        bundle.putLong("mipush_org_when", j10);
        bundle.putBoolean("mipush_n_top_flag", true);
        if (h10 > 0) {
            bundle.putInt("mipush_n_top_fre", h10);
        }
        bundle.putInt("mipush_n_top_prd", a10);
        j0Var.addExtras(bundle);
    }

    private static boolean g(Map<String, String> map) {
        String str = map.get("notification_top_repeat");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean parseBoolean = Boolean.parseBoolean(str);
        tf.c.t("top notification' repeat is " + parseBoolean);
        return parseBoolean;
    }

    private static int h(Map<String, String> map) {
        return Math.max(0, sf.k.a(map.get("notification_top_frequency"), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String i(int i9, String str) {
        return "n_top_update_" + i9 + "_" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(Context context, String str, int i9, String str2, Notification notification) {
        r e10;
        Notification b10;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || Build.VERSION.SDK_INT < 26 || (b10 = b(notification, i9, str2, (e10 = r.e(context, str)))) == null) {
            return;
        }
        boolean z10 = notification != null;
        if (b10.getGroupAlertBehavior() != 1) {
            q3.j(b10, "mGroupAlertBehavior", 1);
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = b10.extras.getLong("mipush_org_when", 0L);
        int i10 = b10.extras.getInt("mipush_n_top_fre", 0);
        int i11 = b10.extras.getInt("mipush_n_top_prd", 0);
        if (i11 <= 0 || i11 < i10) {
            return;
        }
        long j11 = (i11 * 1000) + j10;
        int min = (j10 >= currentTimeMillis || currentTimeMillis >= j11) ? 0 : i10 > 0 ? (int) Math.min((j11 - currentTimeMillis) / 1000, i10) : i11;
        if (!z10) {
            if (min > 0) {
                b10.when = currentTimeMillis;
                tf.c.l("update top notification: " + str2);
                e10.n(i9, b10);
            } else {
                Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, b10);
                recoverBuilder.setPriority(0);
                recoverBuilder.setWhen(currentTimeMillis);
                Bundle extras = recoverBuilder.getExtras();
                if (extras != null) {
                    extras.remove("mipush_n_top_flag");
                    extras.remove("mipush_org_when");
                    extras.remove("mipush_n_top_fre");
                    extras.remove("mipush_n_top_prd");
                    recoverBuilder.setExtras(extras);
                }
                tf.c.l("update top notification to common: " + str2);
                e10.n(i9, recoverBuilder.build());
            }
        }
        if (min > 0) {
            tf.c.l("schedule top notification next update delay: " + min);
            f3.b(context).l(i(i9, str2));
            f3.b(context).m(c(context, str, i9, str2, null), min);
        }
    }
}
