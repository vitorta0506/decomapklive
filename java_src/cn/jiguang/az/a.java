package cn.jiguang.az;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import cn.jpush.android.service.AlarmReceiver;
/* loaded from: classes.dex */
public class a {
    public static void a(Context context) {
        try {
            ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntent.getBroadcast(context, 0, new Intent(context, AlarmReceiver.class), 0));
        } catch (Throwable unused) {
            cn.jiguang.as.d.g("AlarmHelper", "Cancel heartbeat alarm failed.");
        }
    }

    public static void b(Context context) {
        h.a().e();
        long h10 = h.a().h() * 1000;
        long currentTimeMillis = System.currentTimeMillis() + h10;
        cn.jiguang.as.d.e("AlarmHelper", "Reset heartbeat alarm, wait " + h10 + "ms.");
        try {
            ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setWindow(0, currentTimeMillis, 0L, PendingIntent.getBroadcast(context, 0, new Intent(context, AlarmReceiver.class), 0));
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("AlarmHelper", "can't trigger alarm cause by exception:" + th2);
        }
    }
}
