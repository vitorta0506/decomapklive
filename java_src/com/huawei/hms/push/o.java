package com.huawei.hms.push;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.api.push.TransActivity;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
/* loaded from: classes4.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public static int f27761a;

    public static synchronized void a(Context context, k kVar) {
        int hashCode;
        int i9;
        int i10;
        int hashCode2;
        synchronized (o.class) {
            if (context != null) {
                if (!a(kVar)) {
                    HMSLog.d("PushSelfShowLog", "showNotification, the msg id = " + kVar.p());
                    if (f27761a == 0) {
                        f27761a = (context.getPackageName() + System.currentTimeMillis()).hashCode();
                    }
                    if (TextUtils.isEmpty(kVar.l())) {
                        String q10 = kVar.q();
                        if (!TextUtils.isEmpty(q10)) {
                            int hashCode3 = q10.hashCode();
                            kVar.a(hashCode3);
                            HMSLog.d("PushSelfShowLog", "notification msgTag = " + hashCode3);
                        }
                        if (kVar.s() != -1) {
                            hashCode = kVar.s();
                            i9 = (kVar.k() + System.currentTimeMillis()).hashCode();
                            i10 = i9 + 1;
                            hashCode2 = (kVar.s() + kVar.k() + context.getPackageName()).hashCode();
                        } else {
                            hashCode = f27761a + 1;
                            i9 = hashCode + 1;
                            i10 = i9 + 1;
                            hashCode2 = i10 + 1;
                            f27761a = hashCode2;
                        }
                    } else {
                        hashCode = (kVar.l() + kVar.k()).hashCode();
                        i9 = f27761a + 1;
                        i10 = i9 + 1;
                        f27761a = i10;
                        hashCode2 = (kVar.l() + kVar.k() + context.getPackageName()).hashCode();
                    }
                    HMSLog.d("PushSelfShowLog", "notifyId:" + hashCode + ",openNotifyId:" + i9 + ",delNotifyId:" + i10 + ",alarmNotifyId:" + hashCode2);
                    int[] iArr = new int[4];
                    iArr[0] = hashCode;
                    iArr[1] = i9;
                    iArr[2] = i10;
                    if (kVar.f() <= 0) {
                        hashCode2 = 0;
                    }
                    iArr[3] = hashCode2;
                    Notification a10 = q.e() ? a(context, kVar, iArr) : null;
                    NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
                    if (notificationManager != null && a10 != null) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            notificationManager.createNotificationChannel(new NotificationChannel("HwPushChannelID", context.getString(ResourceLoaderUtil.getStringId("hms_push_channel")), 3));
                        }
                        notificationManager.notify(hashCode, a10);
                        d(context, kVar, iArr);
                        e.a(context, kVar.p(), kVar.b(), "100");
                    }
                }
            }
        }
    }

    public static PendingIntent b(Context context, k kVar, int[] iArr) {
        Intent a10 = a(context, kVar, iArr, "2", 268435456);
        if (a()) {
            a10.setClass(context, TransActivity.class);
            a10.setFlags(268468224);
            return PendingIntent.getActivity(context, iArr[2], a10, q.b());
        }
        return PendingIntent.getBroadcast(context, iArr[2], a10, q.b());
    }

    public static PendingIntent c(Context context, k kVar, int[] iArr) {
        Intent a10 = a(context, kVar, iArr, "1", 268435456);
        if (a()) {
            a10.setClass(context, TransActivity.class);
            a10.setFlags(268468224);
            return PendingIntent.getActivity(context, iArr[1], a10, q.b());
        }
        return PendingIntent.getBroadcast(context, iArr[1], a10, q.b());
    }

    public static void d(Context context, k kVar, int[] iArr) {
        HMSLog.i("PushSelfShowLog", "setAutoClear time is: " + kVar.f());
        if (kVar.f() <= 0) {
            return;
        }
        a(context, a(context, kVar, iArr, PushUtils.CHAT_PUSH_TYPE, 32), kVar.f(), iArr[3]);
    }

    public static void d(k kVar, Notification.Builder builder) {
        String u10 = kVar.u();
        String j10 = kVar.j();
        if (TextUtils.isEmpty(j10)) {
            builder.setContentText(u10);
            return;
        }
        builder.setContentText(j10);
        if (TextUtils.isEmpty(u10)) {
            return;
        }
        builder.setContentTitle(u10);
    }

    public static void c(k kVar, Notification.Builder builder) {
        builder.setTicker(kVar.x());
    }

    public static void b(Context context, Notification.Builder builder, k kVar) {
        if ("com.huawei.android.pushagent".equals(context.getPackageName())) {
            Bundle bundle = new Bundle();
            String k10 = kVar.k();
            if (TextUtils.isEmpty(k10)) {
                return;
            }
            bundle.putString("hw_origin_sender_package_name", k10);
            builder.setExtras(bundle);
        }
    }

    public static void b(k kVar, Notification.Builder builder) {
        String t10 = kVar.t();
        if (TextUtils.isEmpty(t10)) {
            return;
        }
        builder.setSubText(t10);
    }

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static Intent a(Context context, k kVar, int[] iArr, String str, int i9) {
        Intent intent = new Intent("com.huawei.intent.action.PUSH_DELAY_NOTIFY");
        intent.putExtra("selfshow_info", kVar.o()).putExtra("selfshow_token", kVar.y()).putExtra("selfshow_event_id", str).putExtra("selfshow_notify_id", iArr[0]).putExtra("selfshow_auto_clear_id", iArr[3]).setPackage(context.getPackageName()).setFlags(i9);
        return intent;
    }

    public static Notification a(Context context, k kVar, int[] iArr) {
        Notification.Builder builder = new Notification.Builder(context);
        if (m.a(kVar) == n.STYLE_BIGTEXT) {
            m.a(builder, kVar.g(), kVar);
        }
        l.a(context, builder, kVar);
        b(kVar, builder);
        d(kVar, builder);
        a(context, kVar, builder);
        a(builder);
        a(kVar, builder);
        c(kVar, builder);
        builder.setContentIntent(c(context, kVar, iArr));
        builder.setDeleteIntent(b(context, kVar, iArr));
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId("HwPushChannelID");
        }
        b(context, builder, kVar);
        a(context, builder, kVar);
        return builder.build();
    }

    public static void a(Context context, Notification.Builder builder, k kVar) {
        if (HwBuildEx.VERSION.EMUI_SDK_INT < 11 || !q.a(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        String k10 = kVar.k();
        HMSLog.i("PushSelfShowLog", "the package name of notification is:" + k10);
        if (!TextUtils.isEmpty(k10)) {
            String a10 = q.a(context, k10);
            HMSLog.i("PushSelfShowLog", "the app name is:" + a10);
            if (a10 != null) {
                bundle.putCharSequence("android.extraAppName", a10);
            }
        }
        builder.setExtras(bundle);
    }

    public static void a(Context context, Intent intent, long j10, int i9) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("enter setDelayAlarm(interval:");
            sb2.append(j10);
            sb2.append("ms.");
            HMSLog.d("PushSelfShowLog", sb2.toString());
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (alarmManager != null) {
                alarmManager.set(0, System.currentTimeMillis() + j10, PendingIntent.getBroadcast(context, i9, intent, q.b()));
            }
        } catch (Exception e10) {
            HMSLog.w("PushSelfShowLog", "set DelayAlarm error." + e10.toString());
        }
    }

    public static void a(Context context, k kVar, Notification.Builder builder) {
        Bitmap a10 = l.a(context, kVar);
        if (a10 != null) {
            builder.setLargeIcon(a10);
        }
    }

    public static void a(Notification.Builder builder) {
        builder.setShowWhen(true);
        builder.setWhen(System.currentTimeMillis());
    }

    public static void a(k kVar, Notification.Builder builder) {
        builder.setAutoCancel(kVar.e() == 1);
        builder.setOngoing(false);
    }

    public static boolean a(k kVar) {
        return kVar == null || (TextUtils.isEmpty(kVar.u()) && TextUtils.isEmpty(kVar.j()));
    }
}
