package cn.jpush.android.ae;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.jpush.android.aa.e;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.d.d;
import cn.jpush.android.helper.Logger;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f2872a;

    public static d a(Context context, String str, String str2) {
        return d.a(context, str, str2);
    }

    private static void a(Context context, d dVar) {
        Intent b10 = 2 == dVar.Z ? cn.jpush.android.aa.c.b(context, JPushInterface.ACTION_NOTIFICATION_OPENED, dVar) : cn.jpush.android.aa.c.a(context, JPushInterface.ACTION_NOTIFICATION_OPENED, dVar);
        if (b10 != null) {
            b10.addFlags(268435456);
            context.getApplicationContext().startActivity(b10);
        }
    }

    private static void a(Context context, d dVar, String str, int i9) {
        Logger.v("PluginPlatformsNotificationHelper", "Action - onNotificationMessageArrived");
        cn.jpush.android.aa.c.a(context, "cn.jpush.android.intent.NOTIFICATION_ARRIVED", dVar, (Intent) null);
        cn.jpush.android.helper.c.a(dVar.f3017c, str, dVar.f2996ae, 1018, context);
    }

    public static void a(Context context, String str, String str2, int i9, byte b10, int i10) {
        String str3;
        if (context == null) {
            str3 = "context was null";
        } else if (TextUtils.isEmpty(str)) {
            str3 = "content was null";
        } else {
            Logger.v("PluginPlatformsNotificationHelper", "message content:" + str);
            d a10 = a(context, str, str2);
            Logger.v("PluginPlatformsNotificationHelper", "entity:" + a10);
            if (a10 == null) {
                str3 = "entity was null";
            } else if (!TextUtils.isEmpty(a10.f3017c)) {
                a10.f2996ae = b10;
                a10.f3018d = i9;
                if (i10 == 0) {
                    c(context, a10, str2, i9);
                    LinkedList linkedList = new LinkedList();
                    linkedList.add(a10.f3017c);
                    e.a(context, linkedList);
                    return;
                } else if (i10 == 1) {
                    a(context, a10, str2, i9);
                    return;
                } else if (i10 != 2) {
                    return;
                } else {
                    b(context, a10, str2, i9);
                    return;
                }
            } else {
                str3 = "message id was empty";
            }
        }
        Logger.ww("PluginPlatformsNotificationHelper", str3);
    }

    private static void b(Context context, d dVar, String str, int i9) {
        Logger.v("PluginPlatformsNotificationHelper", "Action - onNotificationMessageUnShow in foreground");
        dVar.f3018d = i9;
        cn.jpush.android.aa.c.a(context, "cn.jpush.android.intent.NOTIFICATION_UN_SHOW", dVar, (Intent) null);
        cn.jpush.android.helper.c.a(dVar.f3017c, str, dVar.f2996ae, 1060, context);
    }

    private static void c(Context context, d dVar, String str, int i9) {
        Logger.v("PluginPlatformsNotificationHelper", "Action - onNotificationMessageClick");
        if (dVar.U) {
            a(context, dVar);
            return;
        }
        cn.jpush.android.aa.c.a(context, JPushInterface.ACTION_NOTIFICATION_OPENED, dVar, (Intent) null);
        cn.jpush.android.helper.c.a(dVar.f3017c, str, dVar.f2996ae, 1000, context);
    }
}
