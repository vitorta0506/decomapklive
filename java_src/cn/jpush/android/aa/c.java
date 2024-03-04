package cn.jpush.android.aa;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.widget.RemoteViews;
import cn.jpush.android.aa.a;
import cn.jpush.android.aa.f;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.api.PushNotificationBuilder;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.JNotifyActivity;
import cn.jpush.android.service.JPushMessageReceiver;
import cn.jpush.android.support.JPushSupport;
import cn.jpush.android.ui.PopWinActivity;
import cn.jpush.android.ui.PushActivity;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import java.io.File;
import java.util.Calendar;
import java.util.Random;
import java.util.UUID;
import java.util.zip.Adler32;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f2811a;

    /* loaded from: classes.dex */
    static class a extends cn.jpush.android.af.e {

        /* renamed from: a  reason: collision with root package name */
        private Context f2812a;

        /* renamed from: b  reason: collision with root package name */
        private cn.jpush.android.d.d f2813b;

        public a(Context context, cn.jpush.android.d.d dVar) {
            this.f2812a = context;
            this.f2813b = dVar;
            this.f2899f = "NotificationHelper#NotifyAction";
        }

        public static void a(Context context, cn.jpush.android.d.d dVar) {
            c.q(context, dVar);
            int i9 = dVar.Z;
            if (i9 != 0 && i9 != 4) {
                c.p(context, dVar);
                return;
            }
            cn.jpush.android.helper.c.a(dVar.f3017c, 995, context);
            c.b(context, dVar);
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            try {
                long b10 = cn.jpush.android.af.b.b(this.f2813b.ar);
                long b11 = cn.jpush.android.af.b.b(this.f2813b.as);
                if (b10 > 0 && b10 == b11) {
                    Logger.ww("NotificationHelper", "the beginTime == endTime,not deal this notification");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                int i9 = (b11 > 0L ? 1 : (b11 == 0L ? 0 : -1));
                if (i9 > 0) {
                    if (b11 < b10) {
                        Logger.e("NotificationHelper", "illegal argument, endTime earlier than beginTime");
                        return;
                    } else if (b11 < currentTimeMillis) {
                        Logger.w("NotificationHelper", this.f2813b.f3017c + " already end");
                        cn.jpush.android.helper.c.a(this.f2813b.f3017c, 1034, this.f2812a);
                        return;
                    }
                }
                if (b10 >= currentTimeMillis) {
                    f.a().a(this.f2812a, new f.a(b10, this.f2813b, false), false);
                    cn.jpush.android.helper.c.a(this.f2813b.f3017c, 1035, this.f2812a);
                } else if (c.l(this.f2812a, this.f2813b)) {
                } else {
                    a(this.f2812a, this.f2813b);
                    if (i9 > 0) {
                        f.a().a(this.f2812a, new f.a(b11, c.a(this.f2813b)), false);
                    }
                }
            } catch (Throwable th2) {
                Logger.w("NotificationHelper", "run NotifyAction failed:" + th2.getMessage());
            }
        }
    }

    private static int a(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return i9 != 2 ? 1 : 32;
            }
            return 16;
        }
        return 1;
    }

    public static int a(cn.jpush.android.d.d dVar) {
        return a(TextUtils.isEmpty(dVar.f3021g) ? dVar.f3017c : dVar.f3021g, 0);
    }

    public static int a(String str, int i9) {
        if (TextUtils.isEmpty(str)) {
            Logger.d("NotificationHelper", "action:getNotificationID - empty messageId");
            return 0;
        }
        try {
            return Integer.valueOf(str).intValue();
        } catch (Exception unused) {
            Logger.w("NotificationHelper", "Ths msgId is not a integer");
            Adler32 adler32 = new Adler32();
            adler32.update(str.getBytes());
            int value = (int) adler32.getValue();
            return value < 0 ? Math.abs(value) : value;
        }
    }

    static Notification a(Notification.Builder builder) {
        try {
            return builder.build();
        } catch (Throwable th2) {
            Logger.ww("NotificationHelper", "Build notification error:" + th2.getMessage());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.app.Notification a(android.content.Context r9, cn.jpush.android.d.d r10, android.widget.RemoteViews r11, boolean r12, cn.jpush.android.aa.d r13, cn.jpush.android.aa.d r14) {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.a(android.content.Context, cn.jpush.android.d.d, android.widget.RemoteViews, boolean, cn.jpush.android.aa.d, cn.jpush.android.aa.d):android.app.Notification");
    }

    public static Intent a(Context context, String str, cn.jpush.android.d.d dVar) {
        Intent intent = new Intent(str);
        intent.setClass(context, PushActivity.class);
        if (dVar != null) {
            intent.putExtra("msg_data", dVar.c());
        }
        if (!cn.jpush.android.af.a.k(context)) {
            intent.addFlags(32768);
        }
        return intent;
    }

    private static Icon a(String str) {
        try {
            if (new File(str).exists()) {
                return Icon.createWithFilePath(str);
            }
            Logger.w("NotificationHelper", "icon file doesn't exist, path=" + str);
            return null;
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "createIcon err:" + th2);
            return null;
        }
    }

    public static Uri a(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (context.getResources().getIdentifier(str, "raw", context.getPackageName()) == 0) {
                Logger.d("NotificationHelper", "not found sound=" + str);
                return null;
            }
            Uri parse = Uri.parse("android.resource://" + context.getPackageName() + "/raw/" + str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("found sound uri=");
            sb2.append(parse);
            Logger.d("NotificationHelper", sb2.toString());
            return parse;
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "find sound e:" + th2);
            return null;
        }
    }

    public static d a(Context context, String str, int i9) {
        d dVar = new d();
        Object b10 = b(context, str, i9);
        if (b10 == null) {
            dVar.c(973);
            return dVar;
        }
        if (Build.VERSION.SDK_INT >= 23 && (b10 instanceof Icon)) {
            dVar.a(102);
            dVar.a(b10);
        } else if (!(b10 instanceof Bitmap)) {
            dVar.c(973);
            return dVar;
        } else {
            dVar.a(100);
            dVar.a((Bitmap) b10);
        }
        return dVar;
    }

    public static d a(Context context, String str, String str2, String str3, String str4, String str5) {
        Icon a10;
        d dVar = new d();
        String str6 = "";
        int i9 = 0;
        try {
            if (TextUtils.isEmpty(str3)) {
                Logger.d("NotificationHelper", "[buildSmallIcon] smallIcon is empty");
            } else if (cn.jpush.android.af.a.c(str3)) {
                str6 = d(JPushConstants.mApplicationContext, str3, 307200);
            } else {
                i9 = JPushConstants.mApplicationContext.getResources().getIdentifier(str3, "drawable", JPushConstants.mApplicationContext.getPackageName());
            }
        } catch (Throwable th2) {
            Logger.d("NotificationHelper", "load small icon failed:" + th2.getMessage());
        }
        if (!TextUtils.isEmpty(str6)) {
            try {
                Bitmap decodeFile = cn.jpush.android.af.c.a(str6) ? BitmapFactory.decodeFile(str6) : null;
                if (decodeFile != null) {
                    Logger.d("NotificationHelper", "set small icon with path bitmap:" + decodeFile);
                    dVar.a(100);
                    dVar.a(decodeFile);
                    return dVar;
                }
                Logger.d("NotificationHelper", "not set small icon by bitmap");
                if (Build.VERSION.SDK_INT >= 23 && (a10 = a(str6)) != null) {
                    Logger.d("NotificationHelper", "set small icon success by path:" + str6);
                    dVar.a(102);
                    dVar.a(a10);
                    return dVar;
                }
            } catch (Throwable unused) {
                Logger.w("NotificationHelper", "resource not found with sdcard path");
            }
        }
        if (i9 != 0) {
            dVar.a(101);
            dVar.b(i9);
            Logger.d("NotificationHelper", "set small icon success by resId:" + i9 + ",resName:" + str3);
            return dVar;
        } else if (TextUtils.isEmpty(str2) || str2.equals(context.getPackageName())) {
            int a11 = h.a(context);
            if (a11 == 0) {
                dVar.c(972);
                return dVar;
            }
            dVar.a(101);
            dVar.b(a11);
            Logger.d("NotificationHelper", "set small icon success by mine icon resId:" + a11);
            return dVar;
        } else {
            try {
                if (!cn.jpush.android.af.a.a(context, str2, str5)) {
                    Logger.w("NotificationHelper", "targetApp ：" + str2 + " is not install,will give up notify the msg");
                    dVar.c(993);
                    return dVar;
                }
                Bitmap c10 = c(context, str2);
                if (c10 == null) {
                    Logger.w("NotificationHelper", "not found targetApp small icon bitmap,will give up notify the msg");
                    dVar.c(972);
                    return dVar;
                }
                dVar.a(100);
                dVar.a(c10);
                Logger.d("NotificationHelper", "set small icon success by targetAppBitmap");
                return dVar;
            } catch (Throwable th3) {
                Logger.w("NotificationHelper", "set small icon by targetApp icon bitmap failed:" + th3.getMessage());
                dVar.c(972);
                return dVar;
            }
        }
    }

    private static PushNotificationBuilder a(Context context, NotificationMessage notificationMessage) {
        try {
            int i9 = JPushSupport.f3268b;
            return (PushNotificationBuilder) JPushSupport.class.getDeclaredMethod("getNotificationBuilder", Context.class, NotificationMessage.class).invoke(JPushSupport.class, context, notificationMessage);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public static cn.jpush.android.d.d a(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("msg_data");
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        return cn.jpush.android.d.d.a(stringExtra);
    }

    /* JADX WARN: Code restructure failed: missing block: B:231:0x087e, code lost:
        if (r2.length == 1) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x09de  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0a4a  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0abb  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0abd  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0b14  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0b27 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0b31  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0b50  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0bb4  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0bc3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0bc4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0462  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object a(android.content.Context r56, cn.jpush.android.d.d r57, cn.jpush.android.aa.d r58, cn.jpush.android.aa.d r59) {
        /*
            Method dump skipped, instructions count: 3109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.a(android.content.Context, cn.jpush.android.d.d, cn.jpush.android.aa.d, cn.jpush.android.aa.d):java.lang.Object");
    }

    public static void a(Notification notification, Context context, String str, String str2, PendingIntent pendingIntent) {
        try {
            Class.forName("android.app.Notification").getDeclaredMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class).invoke(notification, context, str, str2, pendingIntent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void a(Notification notification, a.C0043a c0043a) {
    }

    public static void a(Context context) {
        while (true) {
            Integer valueOf = Integer.valueOf(g.a());
            if (valueOf.intValue() == 0) {
                return;
            }
            d(context, valueOf.intValue());
        }
    }

    public static void a(Context context, int i9, int i10, String str) {
    }

    public static void a(Context context, int i9, int i10, String str, Bundle bundle) {
        try {
            String messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
            if (TextUtils.isEmpty(messageReceiverClass)) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName(context, messageReceiverClass);
            intent.setAction(cn.jpush.android.af.a.f(context, "cmd_msg"));
            intent.putExtra("cmd", i9);
            intent.putExtra("code", i10);
            intent.putExtra("message", str);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (JPushConstants.getPushMessageReceiver(context) != null) {
                cn.jpush.android.helper.a.a(JPushConstants.getPushMessageReceiver(context), context, intent);
            } else {
                context.sendBroadcast(intent);
            }
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "sendCmdMsgToUser failed:" + th2.getMessage());
        }
    }

    public static void a(Context context, int i9, boolean z10) {
        try {
            boolean z11 = true;
            if (d(context) != 1) {
                z11 = false;
            }
            Logger.d("NotificationHelper", "[checkNotificationSettings] new state:" + z11 + ",last state:" + f2811a + ",soucre:" + i9 + ",isFocre:" + z10);
            Boolean bool = f2811a;
            if (bool != null && z11 == bool.booleanValue() && !z10) {
                Logger.d("NotificationHelper", "[checkNotificationSettings] no change");
                return;
            }
            f2811a = Boolean.valueOf(z11);
            JPushMessageReceiver pushMessageReceiver = JPushConstants.getPushMessageReceiver(context);
            if (pushMessageReceiver != null) {
                pushMessageReceiver.onNotificationSettingsCheck(context, f2811a.booleanValue(), i9);
                return;
            }
            Intent intent = new Intent(context, Class.forName(JPushConstants.getMessageReceiverClass(context)));
            intent.setAction("on_noti_settings_check");
            intent.putExtra("isOn", f2811a);
            intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, i9);
            context.sendBroadcast(intent);
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "checkNotificationSettings e:" + th2);
        }
    }

    public static void a(Context context, Notification.Builder builder, a.C0043a c0043a) {
        if (c0043a != null) {
            try {
                if (Build.VERSION.SDK_INT >= 26 && c0043a.f2810h) {
                    Logger.d("NotificationHelper", "setChannelId =" + c0043a.f2803a);
                    e(context, c0043a.f2803a);
                    builder.setChannelId(c0043a.f2803a);
                }
                builder.setPriority(c0043a.f2805c);
                builder.setDefaults(c0043a.f2807e);
                builder.setSound(c0043a.f2809g);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Context context, cn.jpush.android.d.d dVar) {
        Logger.d("NotificationHelper", "[processMessage] pushEntity:" + dVar);
        if (dVar.f2992aa == 0) {
            JCoreHelper.majorExecutor(context, JPushConstants.SDK_TYPE, new a(context, dVar));
            return;
        }
        Logger.d("NotificationHelper", "Unexpected: unknown show  mode - " + dVar.f2992aa);
    }

    public static void a(Context context, Integer num, Notification notification) {
        if (num == null) {
            return;
        }
        Key<Integer> BadgeCurNum = Key.BadgeCurNum();
        int intValue = ((Integer) Sp.get(context, BadgeCurNum)).intValue();
        if (intValue < 0) {
            intValue = 0;
        }
        if (num.intValue() != 0) {
            if (num.intValue() + intValue < 0) {
                num = Integer.valueOf(-intValue);
            }
            intValue += num.intValue();
            Sp.set(context, BadgeCurNum.set(Integer.valueOf(intValue)));
        }
        Logger.d("NotificationHelper", "curNum：" + intValue + ",addNum:" + num);
        a(context, notification, num.intValue(), intValue);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0149 A[Catch: all -> 0x0157, TryCatch #0 {all -> 0x0157, blocks: (B:3:0x0004, B:5:0x0013, B:7:0x0021, B:8:0x0024, B:10:0x0029, B:11:0x004a, B:14:0x0054, B:16:0x005c, B:59:0x0143, B:61:0x0149, B:62:0x014d, B:64:0x0153, B:17:0x006a, B:19:0x0071, B:20:0x0075, B:22:0x007d, B:23:0x0083, B:25:0x008b, B:26:0x0094, B:28:0x009a, B:29:0x00a3, B:31:0x00a9, B:32:0x00b2, B:34:0x00ba, B:35:0x00c3, B:38:0x00cd, B:39:0x00d7, B:40:0x00e7, B:42:0x00ef, B:43:0x00f7, B:45:0x00ff, B:46:0x0107, B:48:0x010f, B:49:0x0117, B:51:0x011f, B:52:0x0127, B:54:0x012f, B:55:0x0137, B:58:0x0140), top: B:69:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014d A[Catch: all -> 0x0157, TryCatch #0 {all -> 0x0157, blocks: (B:3:0x0004, B:5:0x0013, B:7:0x0021, B:8:0x0024, B:10:0x0029, B:11:0x004a, B:14:0x0054, B:16:0x005c, B:59:0x0143, B:61:0x0149, B:62:0x014d, B:64:0x0153, B:17:0x006a, B:19:0x0071, B:20:0x0075, B:22:0x007d, B:23:0x0083, B:25:0x008b, B:26:0x0094, B:28:0x009a, B:29:0x00a3, B:31:0x00a9, B:32:0x00b2, B:34:0x00ba, B:35:0x00c3, B:38:0x00cd, B:39:0x00d7, B:40:0x00e7, B:42:0x00ef, B:43:0x00f7, B:45:0x00ff, B:46:0x0107, B:48:0x010f, B:49:0x0117, B:51:0x011f, B:52:0x0127, B:54:0x012f, B:55:0x0137, B:58:0x0140), top: B:69:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r5, java.lang.String r6, cn.jpush.android.d.d r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.a(android.content.Context, java.lang.String, cn.jpush.android.d.d, android.content.Intent):void");
    }

    private static boolean a() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "ro.build.version.emui");
            if (!TextUtils.isEmpty(str)) {
                Logger.i("NotificationHelper", "get EMUI version is:" + str);
                return cn.jpush.android.af.a.a(str.toLowerCase().replace("emotionui_", ""), "8.0") >= 0;
            }
        } catch (Throwable th2) {
            Logger.e("NotificationHelper", " getEmuiVersion wrong error:" + th2);
        }
        return false;
    }

    private static boolean a(Notification notification, int i9) {
        if (notification != null) {
            try {
                Object obj = notification.getClass().getDeclaredField("extraNotification").get(notification);
                obj.getClass().getDeclaredMethod("setMessageCount", Integer.TYPE).invoke(obj, Integer.valueOf(i9));
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean a(Context context, int i9) {
        String str;
        boolean z10 = false;
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                StatusBarNotification[] activeNotifications = ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).getActiveNotifications();
                Logger.d("NotificationHelper", "active size:" + activeNotifications.length);
                int length = activeNotifications.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (activeNotifications[i10].getId() == i9) {
                        z10 = true;
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            if (z10) {
                str = "show  notification success:" + i9;
            } else {
                str = "show  notification maybe failed:" + i9;
            }
            Logger.dd("NotificationHelper", str);
        } catch (Throwable th2) {
            Logger.ww("NotificationHelper", "[checkNotficationShow] failed:" + th2.getMessage());
        }
        return z10;
    }

    private static boolean a(Context context, Notification.Builder builder, d dVar, d dVar2) {
        boolean z10;
        boolean z11;
        int a10 = dVar.a();
        if (a10 != 102 || Build.VERSION.SDK_INT < 23) {
            z10 = false;
        } else {
            builder.setSmallIcon((Icon) dVar.b());
            z10 = true;
        }
        if (!z10 && a10 == 100 && Build.VERSION.SDK_INT >= 23) {
            builder.setSmallIcon(Icon.createWithBitmap(dVar.c()));
            z10 = true;
        }
        if (!z10 && a10 == 101) {
            try {
                context.getResources().getDrawable(dVar.d());
                z11 = true;
            } catch (Throwable unused) {
                Logger.w("NotificationHelper", "resource not found with local app");
                z11 = false;
            }
            if (z11) {
                Logger.d("NotificationHelper", "set small icon by local resId:" + dVar.d());
                builder.setSmallIcon(Integer.valueOf(dVar.d()).intValue());
                z10 = true;
            }
        }
        if (z10) {
            int a11 = dVar2.a();
            if (a11 == 102) {
                if (Build.VERSION.SDK_INT >= 23) {
                    builder.setLargeIcon((Icon) dVar2.b());
                }
            } else if (a11 == 100) {
                builder.setLargeIcon(dVar2.c());
            } else {
                Logger.d("NotificationHelper", "not set large icon");
            }
            return true;
        }
        return false;
    }

    public static boolean a(Context context, Notification notification, int i9, int i10) {
        if (Build.MANUFACTURER.equalsIgnoreCase("xiaomi")) {
            return a(notification, i9);
        }
        if (!a()) {
            Logger.d("NotificationHelper", "not support");
            return false;
        } else if (i10 == 0 || i9 != 0) {
            return e(context, i10);
        } else {
            return false;
        }
    }

    public static boolean a(Context context, String str, cn.jpush.android.d.d dVar, NotificationMessage notificationMessage) {
        try {
        } catch (Throwable th2) {
            Logger.ww("NotificationHelper", "check display foreground failed:" + th2.getMessage());
        }
        if (Class.forName(str).getMethod("onNotifyMessageUnShow", Context.class, NotificationMessage.class) == null) {
            Logger.dd("NotificationHelper", "not found onNotifyMessageUnShow method");
            return false;
        }
        if (!TextUtils.isEmpty(dVar.F)) {
            if (dVar.F.equals("0")) {
                if (cn.jpush.android.af.a.k(context)) {
                    Logger.dd("NotificationHelper", "displayForeground...");
                    a(context, "cn.jpush.android.intent.NOTIFICATION_UN_SHOW", dVar, (Intent) null);
                    cn.jpush.android.helper.c.a(dVar.f3017c, 1060, context);
                    return true;
                }
            } else if (!((JPushMessageReceiver) Class.forName(str).newInstance()).isNeedShowNotification(context, notificationMessage, cn.jpush.android.af.a.d(context))) {
                Logger.dd("NotificationHelper", "need not show notication by user");
                a(context, "cn.jpush.android.intent.NOTIFICATION_UN_SHOW", dVar, (Intent) null);
                cn.jpush.android.helper.c.a(dVar.f3017c, 1061, context);
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context, String str, String str2) {
        boolean c10;
        if (TextUtils.isEmpty(str)) {
            Logger.d("NotificationHelper", "link uri is empty");
            return false;
        }
        try {
            Logger.d("NotificationHelper", "url:" + str);
            if (str.startsWith("http")) {
                c10 = f(context, str);
            } else {
                Logger.d("NotificationHelper", "jump intent:" + str);
                c10 = c(context, str, str2);
            }
            return c10;
        } catch (Throwable th2) {
            Logger.d("NotificationHelper", "[handleSSP] start fail uri error:" + th2.getMessage());
            a(context, (int) TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND, 1, str + "---" + th2.getMessage());
            return false;
        }
    }

    public static boolean a(Context context, String str, String str2, String str3, int i9) {
        Logger.d("NotificationHelper", "[handleWxMini] appid=" + str + ",originid=" + str2 + ",path=" + str3 + ", type=" + i9);
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Logger.d("NotificationHelper", "launchWXUsingPendingIntent");
                PendingIntent.getActivity(context, 1, context.getPackageManager().getLaunchIntentForPackage(SharePlatformBean.WechatPackage), 201326592).send(context, 2, null, new PendingIntent.OnFinished() { // from class: cn.jpush.android.aa.c.1
                    @Override // android.app.PendingIntent.OnFinished
                    public void onSendFinished(PendingIntent pendingIntent, Intent intent, int i10, String str4, Bundle bundle) {
                        Logger.d("NotificationHelper", "onSendFinished resultCode: " + i10 + ", resultData: " + str4);
                    }
                }, null);
            }
            try {
                ContentResolver contentResolver = context.getContentResolver();
                Uri parse = Uri.parse("content://com.tencent.mm.sdk.comm.provider/launchWXMiniprogram");
                Cursor query = contentResolver.query(parse, null, null, new String[]{str, str2, str3, "" + i9, ""}, null);
                if (query != null) {
                    query.close();
                }
                return true;
            } catch (Throwable th2) {
                Logger.d("NotificationHelper", "[handleWxMini] open wx mini failed,e:" + th2.getMessage());
                return false;
            }
        } catch (Throwable th3) {
            Logger.w("NotificationHelper", "launchWXUsingPendingIntent pendingIntent send failed: " + th3.getMessage());
            return false;
        }
    }

    public static Intent b(Context context, String str, cn.jpush.android.d.d dVar) {
        Intent intent = new Intent(str);
        intent.setClass(context, PopWinActivity.class);
        if (dVar != null) {
            intent.putExtra("msg_data", dVar.c());
        }
        return intent;
    }

    public static NotificationMessage b(Context context, Intent intent) {
        cn.jpush.android.d.d a10 = a(context, intent);
        NotificationMessage notificationMessage = new NotificationMessage();
        if (a10 != null) {
            notificationMessage = a10.b();
        }
        if (TextUtils.isEmpty(notificationMessage.appkey)) {
            notificationMessage.appkey = JCoreHelper.getAppKey(context);
        }
        return notificationMessage;
    }

    public static Object b(Context context, String str) {
        return b(context, str, 307200);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009e A[Catch: all -> 0x00eb, TryCatch #1 {all -> 0x00eb, blocks: (B:17:0x0055, B:18:0x006e, B:27:0x009e, B:30:0x00a6, B:31:0x00bb, B:41:0x00e4, B:32:0x00bf, B:34:0x00c5, B:36:0x00cb, B:19:0x0072, B:21:0x0078, B:23:0x0083), top: B:50:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(android.content.Context r6, java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.b(android.content.Context, java.lang.String, int):java.lang.Object");
    }

    private static String b(Context context, String str, String str2) {
        if (!cn.jpush.android.af.a.b(str)) {
            Logger.i("NotificationHelper", "The url is not a picture resources.");
            return "";
        }
        Logger.i("NotificationHelper", "The url is a picture resources.");
        String str3 = cn.jpush.android.af.c.c(context, str2) + (str2 + cn.jpush.android.af.a.a(str));
        Logger.i("NotificationHelper", "Big picture notification resource path: " + str3);
        byte[] a10 = cn.jpush.android.z.a.a(str, 5, 5000L, 4);
        return (a10 == null || !cn.jpush.android.af.c.a(str3, a10)) ? "" : str3;
    }

    public static void b(Context context, int i9) {
        int a10;
        if (!g.b(i9)) {
            g.a(i9);
        }
        int i10 = cn.jpush.android.cache.a.i(context);
        Logger.d("NotificationHelper", "queueSize:" + g.b() + ", max num:" + i10);
        if (g.b() <= i10 || (a10 = g.a()) == 0) {
            return;
        }
        d(context, a10);
    }

    public static void b(Context context, int i9, int i10, String str) {
        a(context, i9, i10, str, (Bundle) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x03b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r23, cn.jpush.android.d.d r24) {
        /*
            Method dump skipped, instructions count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.b(android.content.Context, cn.jpush.android.d.d):void");
    }

    public static boolean b(Context context) {
        try {
            if (!cn.jpush.android.cache.a.f(context)) {
                Logger.ii("NotificationHelper", "Notification was disabled by JPushInterface.setPushTime !");
                return false;
            }
            String g10 = cn.jpush.android.cache.a.g(context);
            if (TextUtils.isEmpty(g10)) {
                Logger.i("NotificationHelper", "no time limited");
                return true;
            }
            Logger.i("NotificationHelper", "push time is ：" + g10);
            String[] split = g10.split("_");
            String str = split[0];
            String str2 = split[1];
            char[] charArray = str.toCharArray();
            String[] split2 = str2.split("\\^");
            Calendar calendar = Calendar.getInstance();
            int i9 = calendar.get(7);
            int i10 = calendar.get(11);
            for (char c10 : charArray) {
                if (i9 == Integer.valueOf(String.valueOf(c10)).intValue() + 1) {
                    int intValue = Integer.valueOf(split2[0]).intValue();
                    int intValue2 = Integer.valueOf(split2[1]).intValue();
                    if (i10 >= intValue && i10 <= intValue2) {
                        return true;
                    }
                }
            }
            Logger.ii("NotificationHelper", "Current time is out of the push time - " + g10);
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    private static Intent c(Context context, String str, cn.jpush.android.d.d dVar) {
        Intent intent = new Intent(str);
        intent.setClass(context, JNotifyActivity.class);
        intent.setFlags(8388608);
        if (dVar != null) {
            intent.putExtra("msg_data", dVar.c());
        }
        return intent;
    }

    public static synchronized Bitmap c(Context context, String str) {
        synchronized (c.class) {
            try {
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                Drawable applicationIcon = packageManager.getApplicationIcon(packageManager.getApplicationInfo(str, 0));
                if (applicationIcon != null) {
                    if (Build.VERSION.SDK_INT < 26 || !(applicationIcon instanceof AdaptiveIconDrawable)) {
                        return ((BitmapDrawable) applicationIcon).getBitmap();
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    applicationIcon.draw(canvas);
                    Logger.d("NotificationHelper", "adaptive-icon to bitmap");
                    return createBitmap;
                }
            } catch (Throwable th2) {
                Logger.w("NotificationHelper", "getTargetAppBitmap failed:" + th2.getMessage());
            }
            return null;
        }
    }

    public static String c(Context context, String str, int i9) {
        if (!cn.jpush.android.af.a.b(str)) {
            Logger.i("NotificationHelper", "The url is not a picture resources.");
            return "";
        }
        Logger.i("NotificationHelper", "The url is a picture resources.");
        String d10 = cn.jpush.android.af.a.d(str);
        if (TextUtils.isEmpty(d10)) {
            d10 = UUID.randomUUID().toString();
        }
        String str2 = cn.jpush.android.af.c.c(context, "noti_res") + (d10 + cn.jpush.android.af.a.a(str));
        Logger.i("NotificationHelper", "picture notification resource path: " + str2);
        if (!new File(str2).exists()) {
            byte[] a10 = cn.jpush.android.z.a.a(str, 2, i9);
            return (a10 == null || !cn.jpush.android.af.c.a(str2, a10)) ? "" : str2;
        }
        Logger.d("NotificationHelper", "need not download again with same url:" + str);
        return str2;
    }

    public static void c(Context context, int i9) {
        if (i9 <= 0) {
            return;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            Integer valueOf = Integer.valueOf(g.a());
            if (valueOf.intValue() != 0) {
                d(context, valueOf.intValue());
            }
        }
    }

    private static void c(Context context, Intent intent) {
        if ("com.mt.mtxx.mtxx".equals(context.getPackageName())) {
            intent.putExtra("infoProvider", "JPush");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x01a2, code lost:
        if (r0 == 4) goto L106;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x038e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r27, cn.jpush.android.d.d r28) {
        /*
            Method dump skipped, instructions count: 972
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.c(android.content.Context, cn.jpush.android.d.d):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b7, code lost:
        if (r8 <= 23) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bb, code lost:
        if (r8 < r6) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bf, code lost:
        if (r7 >= r5) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
        if (r7 <= r2) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.c(android.content.Context):boolean");
    }

    private static boolean c(Context context, String str, String str2) {
        try {
            Intent parseUri = Build.VERSION.SDK_INT >= 22 ? Intent.parseUri(str, 4) : Intent.parseUri(str, 0);
            parseUri.setFlags(268435456);
            if (!TextUtils.isEmpty(str2)) {
                parseUri.setPackage(str2);
            }
            if (context.getPackageManager().resolveActivity(parseUri, 0) != null) {
                c(context, parseUri);
                context.startActivity(parseUri);
                a(context, (int) TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND, 0, str);
                return true;
            }
            Logger.d("NotificationHelper", "deeplink is wrong, " + str);
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    public static int d(Context context) {
        StringBuilder sb2;
        String str;
        if (JCoreHelper.checkSdkBanned(context).booleanValue()) {
            Logger.ww("NotificationHelper", "sdk is banned, call failed");
            return 0;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
                if (notificationManager != null) {
                    boolean areNotificationsEnabled = notificationManager.areNotificationsEnabled();
                    Logger.d("NotificationHelper", "from NotificationManager enable=" + areNotificationsEnabled);
                    return areNotificationsEnabled ? 1 : 0;
                }
                return -1;
            } catch (Throwable th2) {
                th = th2;
                sb2 = new StringBuilder();
                str = "isNotificationEnabled e:";
            }
        } else {
            try {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                String packageName = context.getApplicationContext().getPackageName();
                int i9 = applicationInfo.uid;
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                ?? r12 = ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke((AppOpsManager) context.getSystemService("appops"), Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i9), packageName)).intValue() == 0 ? 1 : 0;
                Logger.d("NotificationHelper", "from AppOpsManager enable=" + ((boolean) r12));
                return r12;
            } catch (Throwable th3) {
                th = th3;
                sb2 = new StringBuilder();
                str = "appOps check e:";
            }
        }
        sb2.append(str);
        sb2.append(th);
        Logger.w("NotificationHelper", sb2.toString());
        return -1;
    }

    private static String d(Context context, String str, int i9) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            if (cn.jpush.android.af.a.a()) {
                String c10 = c(context, str, i9);
                if (!TextUtils.isEmpty(c10)) {
                    return c10;
                }
                str2 = "Get network picture failed.";
            } else {
                str2 = "SDCard is not mounted,need not download pic";
            }
            Logger.ww("NotificationHelper", str2);
            return null;
        }
        return null;
    }

    public static void d(Context context, int i9) {
        try {
            Logger.d("NotificationHelper", "action:cleanNotification - notificationId:" + i9);
            ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).cancel(i9);
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "cancelNotification failed:" + th2.getMessage());
        }
    }

    public static void d(Context context, cn.jpush.android.d.d dVar) {
        int i9;
        int i10;
        int i11;
        int m10 = m(context, dVar);
        int identifier = context.getResources().getIdentifier(m10 == 3 ? "push_notification_middle" : m10 == 4 ? "push_notification_large" : "push_notification", "layout", context.getPackageName());
        Logger.d("NotificationHelper", "layoutId:" + identifier);
        if (identifier <= 0) {
            return;
        }
        int g10 = cn.jpush.android.helper.i.g();
        Logger.d("NotificationHelper", "use notification style :" + g10);
        int identifier2 = context.getResources().getIdentifier("push_notification_style_default", "id", context.getPackageName());
        if (g10 != 0) {
            Resources resources = context.getResources();
            i9 = resources.getIdentifier("push_notification_style_" + g10, "id", context.getPackageName());
            if (i9 <= 0) {
                Logger.ww("NotificationHelper", "not found push_notification_style_" + g10 + " in layout");
                return;
            }
        } else {
            i9 = 0;
        }
        int identifier3 = context.getResources().getIdentifier("push_notification_fb_content", "id", context.getPackageName());
        int identifier4 = context.getResources().getIdentifier("push_notification_main_layout", "id", context.getPackageName());
        int identifier5 = context.getResources().getIdentifier("push_notification_layout_lefttop", "id", context.getPackageName());
        int identifier6 = context.getResources().getIdentifier("push_notification_banner_img", "id", context.getPackageName());
        int identifier7 = context.getResources().getIdentifier("push_notification_header_expand", "id", context.getPackageName());
        int identifier8 = context.getResources().getIdentifier("jpush_ic_action_close", "drawable", context.getPackageName());
        int identifier9 = context.getResources().getIdentifier("jpush_ic_action_close2", "drawable", context.getPackageName());
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), identifier);
        remoteViews.setViewVisibility(identifier3, 8);
        if (m10 == 2 && cn.jpush.android.helper.i.c()) {
            remoteViews.setViewVisibility(identifier6, 0);
        } else if ((m10 == 3 || m10 == 4) && cn.jpush.android.helper.i.b()) {
            remoteViews.setViewVisibility(identifier4, 0);
            remoteViews.setViewVisibility(identifier5, 0);
        } else if (g10 == 0) {
            remoteViews.setViewVisibility(identifier2, 0);
        } else {
            remoteViews.setViewVisibility(i9, 0);
        }
        try {
            i10 = new JSONObject(dVar.C).optInt("ssp_style");
        } catch (Throwable unused) {
            i10 = 0;
        }
        Logger.d("NotificationHelper", "showRealNotification ssp style:" + i10);
        if ((i10 & 8) != 0) {
            i11 = identifier7;
            remoteViews.setImageViewResource(i11, identifier8);
        } else {
            i11 = identifier7;
        }
        if ((i10 & 16) != 0) {
            remoteViews.setImageViewResource(i11, identifier9);
        }
        remoteViews.setOnClickPendingIntent(i11, b.a(context, a(dVar), "cn.jpush.android.action.fb_no_like", "", dVar));
        int i12 = Build.VERSION.SDK_INT;
        Notification.Builder builder = new Notification.Builder(context);
        builder.setContentTitle(dVar.f3034t).setContentText(dVar.f3036v).setTicker("").setSmallIcon(o(context, dVar)).setDefaults(0).setVibrate(new long[]{0}).setSound(null);
        builder.setShowWhen(true);
        builder.setContent(remoteViews);
        if (context.getApplicationInfo().targetSdkVersion >= 31 && i12 >= 24) {
            builder.setCustomBigContentView(remoteViews);
        }
        a.C0043a c0043a = new a.C0043a(dVar.E, "", dVar.A, 0, "fb_ssp");
        cn.jpush.android.aa.a.a(context, c0043a);
        a(context, builder, c0043a);
        if (cn.jpush.android.helper.i.f()) {
            builder.setGroupSummary(true);
            int nextInt = new Random(System.currentTimeMillis()).nextInt();
            builder.setGroup("group" + nextInt);
        } else {
            builder.setGroupSummary(false);
            builder.setGroup("group");
        }
        Notification a10 = a(builder);
        Intent b10 = dVar.U ? 2 == dVar.Z ? b(context, JPushInterface.ACTION_NOTIFICATION_OPENED, dVar) : a(context, JPushInterface.ACTION_NOTIFICATION_OPENED, dVar) : c(context, JPushInterface.ACTION_NOTIFICATION_OPENED, dVar);
        if (a10 != null) {
            a10.contentIntent = PendingIntent.getActivity(context, (int) System.currentTimeMillis(), b10, 1140850688);
            a10.deleteIntent = PendingIntent.getActivity(context, (int) (System.currentTimeMillis() + 1), c(context, "cn.jpush.android.intent.NOTIFICATION_DISMISS", dVar), 1140850688);
            int a11 = a(dVar);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (!cn.jpush.android.helper.i.f()) {
                a10.flags = 17;
            }
            if (notificationManager != null) {
                notificationManager.notify(a11, a10);
            }
        }
    }

    public static boolean d(Context context, String str) {
        boolean c10;
        if (TextUtils.isEmpty(str)) {
            Logger.d("NotificationHelper", "link uri is empty");
            return false;
        }
        try {
            Logger.d("NotificationHelper", "url:" + str);
            if (str.startsWith("http")) {
                c10 = f(context, str);
            } else {
                Logger.d("NotificationHelper", "jump intent:" + str);
                c10 = c(context, str, "");
            }
            return c10;
        } catch (Throwable th2) {
            Logger.d("NotificationHelper", "[handleSSP] start fail uri error:" + th2.getMessage());
            a(context, (int) TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND, 1, str + "---" + th2.getMessage());
            return false;
        }
    }

    public static void e(Context context, cn.jpush.android.d.d dVar) {
        if (dVar != null) {
            d(context, a(dVar));
        }
    }

    public static boolean e(Context context) {
        String str;
        int i9;
        try {
            if (JCoreHelper.checkSdkBanned(context).booleanValue()) {
                Logger.ww("NotificationHelper", "sdk is banned, call failed");
                return false;
            }
            Intent intent = new Intent();
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            if (Build.VERSION.SDK_INT >= 26) {
                intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
                str = "android.provider.extra.CHANNEL_ID";
                i9 = context.getApplicationInfo().uid;
            } else {
                intent.putExtra("app_package", context.getPackageName());
                str = "app_uid";
                i9 = context.getApplicationInfo().uid;
            }
            intent.putExtra(str, i9);
            intent.setFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    private static boolean e(Context context, int i9) {
        try {
            Logger.d("NotificationHelper", "【setEMUIBadge】number：" + i9);
            Bundle bundle = new Bundle();
            bundle.putString("package", context.getPackageName());
            bundle.putString("class", i(context));
            bundle.putInt("badgenumber", i9);
            context.getContentResolver().call(Uri.parse("content://com.huawei.android.launcher.settings/badge/"), "change_badge", (String) null, bundle);
            return true;
        } catch (Exception e10) {
            Logger.e("NotificationHelper", "e: " + e10);
            return false;
        }
    }

    private static boolean e(Context context, String str) {
        try {
            if (Build.VERSION.SDK_INT < 26 || TextUtils.isEmpty(str)) {
                return true;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            NotificationChannel notificationChannel = notificationManager != null ? notificationManager.getNotificationChannel(str) : null;
            if (notificationChannel != null && notificationChannel.getImportance() != 0) {
                Logger.dd("NotificationHelper", str + " channel is opened,will use it");
                return true;
            }
            Logger.ww("NotificationHelper", str + " channel maybe closed,please check it");
            return false;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0173 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0174 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int f(android.content.Context r9, cn.jpush.android.d.d r10) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.f(android.content.Context, cn.jpush.android.d.d):int");
    }

    public static boolean f(Context context) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", context.getPackageName(), null));
            intent.setFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean f(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            Logger.d("NotificationHelper", "link uri is empty");
            return false;
        }
        Logger.d("NotificationHelper", "[openWebUri]:" + str);
        try {
        } catch (Throwable unused) {
            Logger.d("NotificationHelper", "start android default browser failed");
            try {
                Intent parseUri = Intent.parseUri(str, 0);
                parseUri.setFlags(268435456);
                c(context, parseUri);
                context.startActivity(parseUri);
                a(context, (int) TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND, 0, str + "---by parse");
            } catch (Throwable th2) {
                th2.printStackTrace();
                Logger.d("NotificationHelper", "[openWebUri] start fail uri error:" + th2.getMessage());
                a(context, (int) TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND, 1, str + "---" + th2.getMessage());
                return false;
            }
        }
        if (!cn.jpush.android.af.a.d(context, "com.android.browser")) {
            Logger.dd("NotificationHelper", "not found com.android.browser,user will choose other browser");
            throw new Throwable("not found com.android.browser,user will choose other browser");
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.setFlags(268435456);
        intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
        c(context, intent);
        context.startActivity(intent);
        a(context, (int) TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND, 0, str + "---by default browser");
        return true;
    }

    public static void g(Context context) {
        int identifier;
        if (context == null) {
            Logger.ww("NotificationHelper", "context is null");
        } else if (!cn.jpush.android.af.a.a(context, JNotifyActivity.class)) {
            Logger.ee("NotificationHelper", "AndroidManifest.xml missing required activity: " + JNotifyActivity.class.getCanonicalName());
        } else if (context.getResources().getIdentifier("push_notification", "layout", context.getPackageName()) <= 0) {
            Logger.e("NotificationHelper", "not exist file push_notification.xml, please check directory: res/layout/");
        } else {
            if (Build.VERSION.SDK_INT >= 29 && (identifier = context.getResources().getIdentifier("v21", "id", context.getPackageName())) <= 0) {
                Logger.ww("NotificationHelper", "device is night mode style, and v21ID = " + identifier + ", please check your layout-v21/push_notification.xml");
            }
            int identifier2 = context.getResources().getIdentifier("push_notification_large", "layout", context.getPackageName());
            if (identifier2 <= 0) {
                Logger.ww("NotificationHelper", "not exist file push_notification_large.xml, please check directory: res/layout/");
            }
            int identifier3 = context.getResources().getIdentifier("push_notification_middle", "layout", context.getPackageName());
            if (identifier3 <= 0) {
                Logger.ww("NotificationHelper", "not exist file push_notification_middle.xml, please check directory: res/layout/");
            }
            int identifier4 = context.getResources().getIdentifier("jpush_ic_action_cancle", "drawable", context.getPackageName());
            int identifier5 = context.getResources().getIdentifier("jpush_ic_action_close", "drawable", context.getPackageName());
            int identifier6 = context.getResources().getIdentifier("jpush_ic_action_close2", "drawable", context.getPackageName());
            if (identifier4 <= 0 || identifier5 <= 0 || identifier6 <= 0) {
                String str = "not exist file";
                if (identifier4 <= 0) {
                    str = "not exist file jpush_ic_action_cancle.png";
                }
                if (identifier5 <= 0) {
                    str = str + " jpush_ic_action_close.png";
                }
                if (identifier6 <= 0) {
                    str = str + " jpush_ic_action_close2.png";
                }
                Logger.ww("NotificationHelper", str + ", please check directory: res/drawable/");
            }
            int identifier7 = context.getResources().getIdentifier("push_notification_layout_lefttop", "id", context.getPackageName());
            if (identifier7 <= 0) {
                Logger.ww("NotificationHelper", "not find layout push_notification_layout_lefttop in push_notification.xml, please check the file: res/layout/push_notification.xml");
            }
            int a10 = cn.jpush.android.helper.i.a(context);
            if (identifier2 > 0 && identifier3 > 0 && identifier4 > 0 && identifier5 > 0 && identifier6 > 0 && identifier7 > 0) {
                Logger.dd("NotificationHelper", "ssp is integrated succeed, layoutVersion: " + a10);
                return;
            }
            Logger.e("NotificationHelper", "some ssp functions are limited, layoutVersion: " + a10);
        }
    }

    private static String h(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setPackage(context.getPackageName());
            intent.addCategory("android.intent.category.LAUNCHER");
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (resolveActivity == null) {
                resolveActivity = packageManager.resolveActivity(intent, 0);
            }
            if (resolveActivity != null) {
                return resolveActivity.activityInfo.name;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String i(Context context) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage != null && launchIntentForPackage.getComponent() != null) {
                return launchIntentForPackage.getComponent().getClassName();
            }
        } catch (Throwable unused) {
        }
        return h(context);
    }

    private static int j(Context context, cn.jpush.android.d.d dVar) {
        try {
            JSONObject jSONObject = new JSONObject(dVar.C);
            int optInt = jSONObject.optInt("ssp_msgcount_limit", 5);
            long optLong = jSONObject.optLong("ssp_msg_gap", 1800L);
            if (optInt > 0) {
                Logger.d("NotificationHelper", "setSSPLimitCount:" + optInt);
            }
            if (optLong > 0) {
                optLong *= 1000;
                Logger.d("NotificationHelper", "setSSPLimitInterval:" + optLong);
            }
            return cn.jpush.android.helper.i.a(context, optInt, optLong);
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "parse ssp notificationExtra of frequency failed, error:" + th2.getMessage());
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ef A[Catch: all -> 0x0115, TryCatch #0 {all -> 0x0115, blocks: (B:3:0x0003, B:6:0x0026, B:8:0x002c, B:10:0x0032, B:13:0x003d, B:14:0x004a, B:16:0x004f, B:18:0x008f, B:20:0x0097, B:22:0x009d, B:24:0x00a3, B:26:0x00a9, B:28:0x00c3, B:30:0x00c9, B:33:0x00d2, B:37:0x00df, B:40:0x00ef, B:41:0x00f7, B:42:0x00ff, B:43:0x0107, B:44:0x010f), top: B:50:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean k(android.content.Context r12, cn.jpush.android.d.d r13) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.aa.c.k(android.content.Context, cn.jpush.android.d.d):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Context context, cn.jpush.android.d.d dVar) {
        try {
        } catch (Throwable th2) {
            Logger.w("NotificationHelper", "check same in-app show already error， err:" + th2.getMessage());
        }
        if (context == null) {
            Logger.d("NotificationHelper", "[checkSameSSPAlreadyExists] context is null return false");
            return false;
        }
        if (!(!TextUtils.isEmpty(dVar.G) && dVar.P == 1001)) {
            Logger.d("NotificationHelper", "not ssp notification, need not check in-app content of showing recently.");
            return false;
        }
        String str = dVar.f3034t;
        String str2 = dVar.f3036v;
        String d10 = cn.jpush.android.af.a.d(str + str2);
        if (!TextUtils.isEmpty(d10)) {
            JSONObject jSONObject = new JSONObject(dVar.C);
            int optInt = jSONObject.optInt("ssp_in_app_gap", 180);
            if (jSONObject.optInt("ssp_filter_msg", 1) != 0) {
                if (optInt > 0) {
                    optInt *= 1000;
                    Logger.d("NotificationHelper", "ssp_in_app_gap: " + optInt);
                }
                int a10 = cn.jpush.android.helper.i.a(context, d10, optInt);
                if (a10 == 1) {
                    Logger.w("NotificationHelper", "in-app message display recently, spp notification delay to show, delay time: " + (optInt / 1000) + NotifyType.SOUND);
                    long currentTimeMillis = System.currentTimeMillis() + ((long) optInt);
                    f.a().a(context, new f.a(currentTimeMillis, dVar, true), false);
                    long b10 = cn.jpush.android.af.b.b(dVar.as);
                    if (b10 > 0 && b10 > currentTimeMillis) {
                        Logger.d("NotificationHelper", "delay to show ssp, and it will auto cancel by end time, showTime: " + currentTimeMillis + ", endTime: " + b10);
                        f.a().a(context, new f.a(b10, a(dVar)), false);
                    }
                    cn.jpush.android.helper.c.a(dVar.f3017c, 1098, context);
                    return true;
                } else if (a10 == 2) {
                    Logger.d("NotificationHelper", "same content in-app message display recently, ssp notification not display");
                    cn.jpush.android.helper.c.a(dVar.f3017c, 1097, context);
                    return true;
                }
            }
        }
        return false;
    }

    private static int m(Context context, cn.jpush.android.d.d dVar) {
        String str;
        if (dVar == null || context == null) {
            return 0;
        }
        int identifier = context.getResources().getIdentifier("push_notification", "layout", context.getPackageName());
        int identifier2 = context.getResources().getIdentifier("push_notification_large", "layout", context.getPackageName());
        int identifier3 = context.getResources().getIdentifier("push_notification_middle", "layout", context.getPackageName());
        int identifier4 = context.getResources().getIdentifier("push_notification_banner_img", "id", context.getPackageName());
        int g10 = cn.jpush.android.helper.i.g();
        if (g10 == 0) {
            str = "";
        } else {
            str = "style_" + g10 + "_";
        }
        int identifier5 = context.getResources().getIdentifier("push_notification_" + str + "banner_icon", "id", context.getPackageName());
        try {
            int optInt = new JSONObject(dVar.C).optInt("ssp_style");
            if ((optInt & 64) != 0) {
                if (!cn.jpush.android.helper.i.b() || identifier3 <= 0 || identifier5 <= 0) {
                    return 1;
                }
                Logger.d("NotificationHelper", "choseLayoutType : use middle layout");
                return 3;
            } else if ((optInt & 128) != 0) {
                if (!cn.jpush.android.helper.i.b() || identifier2 <= 0 || identifier5 <= 0) {
                    return 1;
                }
                Logger.d("NotificationHelper", "choseLayoutType : use large layout");
                return 4;
            } else if ((optInt & 32) == 0 || identifier <= 0 || identifier4 <= 0) {
                return 1;
            } else {
                Logger.d("NotificationHelper", "choseLayoutType : use banner layout");
                return 2;
            }
        } catch (Throwable unused) {
            return 1;
        }
    }

    private static boolean n(Context context, cn.jpush.android.d.d dVar) {
        boolean z10 = true;
        if (dVar != null) {
            try {
                if (new JSONObject(dVar.C).optInt("ssp_use_app_icon", 0) != 0) {
                    z10 = false;
                }
                Logger.d("NotificationHelper", "ssp use transparent icon: " + z10 + ", extras: " + dVar.C);
            } catch (Throwable unused) {
            }
        }
        return z10;
    }

    private static int o(Context context, cn.jpush.android.d.d dVar) {
        if (n(context, dVar)) {
            return 17170445;
        }
        return h.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(Context context, cn.jpush.android.d.d dVar) {
        String str;
        boolean z10;
        String str2 = dVar.f3017c;
        String str3 = dVar.V;
        str = "";
        if (TextUtils.isEmpty(str3)) {
            Logger.w("NotificationHelper", "Show url is Empty! Give up to download!");
            z10 = false;
        } else {
            String a10 = cn.jpush.android.z.a.a(str3, 5, 5000L);
            boolean isEmpty = TextUtils.isEmpty(a10);
            str = isEmpty ? "" : a10;
            z10 = !isEmpty;
        }
        String c10 = cn.jpush.android.af.c.c(context, str2);
        if (!z10) {
            Logger.w("NotificationHelper", "NOTE: failed to download html page. Give up this.");
            cn.jpush.android.helper.c.a(str2, 1014, context);
            cn.jpush.android.helper.c.a(str2, 1021, (String) null, context);
            return;
        }
        String str4 = c10 + str2 + ".html";
        String substring = str3.substring(0, str3.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
        if (dVar.f2993ab.isEmpty()) {
            dVar.X = dVar.V;
        } else if (!i.a(dVar.f2993ab, context, substring, str2, true)) {
            Logger.d("NotificationHelper", "Loads rich push resources failed, webView will open url!");
            cn.jpush.android.helper.c.a(str2, 1014, context);
            b(context, dVar);
            return;
        } else {
            Logger.d("NotificationHelper", "Loads rich push resources succeed, webView will open cache!");
            if (!cn.jpush.android.af.c.b(str4, str.replaceAll("img src=\"" + substring, "img src=\"" + c10))) {
                cn.jpush.android.helper.c.a(str2, 1014, context);
                return;
            }
            dVar.X = "file://" + str4;
            cn.jpush.android.helper.c.a(str2, 995, context);
        }
        b(context, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(Context context, cn.jpush.android.d.d dVar) {
        String b10;
        String str;
        String str2 = dVar.f3039y;
        dVar.f3039y = "";
        if (dVar.f3037w != 3 || TextUtils.isEmpty(str2)) {
            return;
        }
        if (str2.startsWith("http://") || str2.startsWith("https://")) {
            b10 = b(context, str2, dVar.f3017c);
            if (TextUtils.isEmpty(b10)) {
                str = "Get network picture failed, show basic notification only.";
                Logger.ww("NotificationHelper", str);
                return;
            }
            dVar.f3039y = b10;
        }
        b10 = cn.jpush.android.af.c.d(context, str2);
        if (TextUtils.isEmpty(b10)) {
            str = "Get developer picture failed, show basic notification only.";
            Logger.ww("NotificationHelper", str);
            return;
        }
        dVar.f3039y = b10;
    }
}
