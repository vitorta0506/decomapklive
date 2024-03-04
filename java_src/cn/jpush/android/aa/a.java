package cn.jpush.android.aa;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import cn.jpush.android.helper.Logger;
import com.guochao.faceshow.aaspring.utils.Language;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Locale;
/* loaded from: classes.dex */
public class a {

    /* renamed from: cn.jpush.android.aa.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0043a {

        /* renamed from: a  reason: collision with root package name */
        public String f2803a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f2804b;

        /* renamed from: c  reason: collision with root package name */
        public int f2805c;

        /* renamed from: d  reason: collision with root package name */
        public int f2806d;

        /* renamed from: e  reason: collision with root package name */
        public int f2807e;

        /* renamed from: f  reason: collision with root package name */
        public String f2808f;

        /* renamed from: g  reason: collision with root package name */
        public Uri f2809g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f2810h;

        public C0043a(String str, CharSequence charSequence, int i9, int i10, String str2) {
            this.f2803a = str;
            this.f2804b = charSequence;
            this.f2805c = i9;
            this.f2807e = i10;
            this.f2808f = str2;
        }
    }

    private static int a(int i9) {
        if (i9 != -2) {
            if (i9 != -1) {
                return (i9 == 1 || i9 == 2) ? 4 : 3;
            }
            return 2;
        }
        return 1;
    }

    private static NotificationChannel a(Context context, String str) {
        try {
            if (Build.VERSION.SDK_INT >= 26 && !TextUtils.isEmpty(str)) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
                NotificationChannel notificationChannel = notificationManager != null ? notificationManager.getNotificationChannel(str) : null;
                if (notificationChannel != null) {
                    Logger.dd("ChannelHelper", "channel has created: " + str);
                    return notificationChannel;
                }
                Logger.dd("ChannelHelper", "not found channed id from user set,will use sdk default channel ID");
            }
        } catch (Throwable th2) {
            Logger.e("ChannelHelper", "config channelID error,will use sdk default channel ID:" + th2);
        }
        return null;
    }

    private static String a(Context context, int i9) {
        boolean z10;
        String str;
        String str2 = i9 != -2 ? i9 != -1 ? (i9 == 1 || i9 == 2) ? "HIGH" : "DEFAULT" : "LOW" : "MIN";
        String str3 = "";
        try {
            String str4 = "jg_channel_name_p_" + str2.toLowerCase();
            int identifier = context.getResources().getIdentifier(str4, TypedValues.Custom.S_STRING, context.getPackageName());
            if (identifier != 0) {
                str3 = context.getResources().getString(identifier);
                str = "found " + str3 + " from resource by name:" + str4;
            } else {
                str = "not found string value from resource by name:" + str4;
            }
            Logger.dd("ChannelHelper", str);
        } catch (Throwable th2) {
            Logger.ww("ChannelHelper", "get resource channel ID failed:" + th2.getMessage());
        }
        if (TextUtils.isEmpty(str3)) {
            try {
                z10 = Locale.getDefault().getLanguage().contains(Language.SIMPLE_CHINESE);
            } catch (Throwable th3) {
                Logger.ww("ChannelHelper", "get language failed:" + th3.getMessage());
                z10 = true;
            }
            if (i9 == -2 || i9 == -1) {
                return z10 ? "不重要" : "LOW";
            } else if (i9 == 1 || i9 == 2) {
                return z10 ? "重要" : "HIGH";
            } else {
                return z10 ? "普通" : "NORMAL";
            }
        }
        return str3;
    }

    private static String a(Context context, int i9, int i10) {
        int a10 = a(i9);
        String str = "JPush_" + a10 + "_" + i10;
        String a11 = a(context, i9);
        Logger.d("ChannelHelper", "channelId:" + str + ",channelName:" + a11);
        return a(context, str, a11, a10, i10, null) ? str : "";
    }

    private static String a(C0043a c0043a) {
        String str = "JPush_" + c0043a.f2806d + "_" + c0043a.f2807e;
        if (c0043a.f2809g != null) {
            return str + "_" + c0043a.f2808f;
        }
        return str;
    }

    public static void a(Context context) {
        a(context, -1, 0);
        a(context, 0, 7);
    }

    public static void a(Context context, Notification.Builder builder, String str, CharSequence charSequence, int i9, int i10, String str2) {
        C0043a c0043a = new C0043a(str, charSequence, i9, i10, str2);
        a(context, c0043a);
        c.a(context, builder, c0043a);
    }

    public static void a(Context context, Notification notification, String str, CharSequence charSequence, int i9, int i10, String str2) {
        C0043a c0043a = new C0043a(str, charSequence, i9, i10, str2);
        a(context, c0043a);
        c.a(notification, c0043a);
    }

    public static void a(Context context, C0043a c0043a) {
        NotificationChannel a10;
        NotificationChannel a11;
        if (c.c(context)) {
            Logger.d("ChannelHelper", "in silence push time,change defaults to 0");
            c0043a.f2803a = "";
            c0043a.f2807e = 0;
            c0043a.f2808f = null;
        } else if (Build.VERSION.SDK_INT >= 26 && (a10 = a(context, c0043a.f2803a)) != null) {
            c0043a.f2803a = a10.getId();
            c0043a.f2804b = a10.getName();
            int importance = a10.getImportance();
            c0043a.f2806d = importance;
            c0043a.f2805c = b(importance);
            Uri sound = a10.getSound();
            c0043a.f2809g = sound;
            if (sound != null) {
                c0043a.f2808f = sound.getPath();
            }
            c0043a.f2810h = true;
            return;
        }
        int i9 = c0043a.f2805c;
        if (i9 == -2 || i9 == -1) {
            c0043a.f2807e = 0;
            c0043a.f2808f = null;
        } else if (i9 >= 0 && c0043a.f2807e == 0 && TextUtils.isEmpty(c0043a.f2808f)) {
            c0043a.f2805c = -1;
        }
        c0043a.f2807e &= 7;
        if (c0043a.f2805c == 2) {
            c0043a.f2805c = 1;
        }
        int a12 = a(c0043a.f2805c);
        c0043a.f2806d = a12;
        c0043a.f2805c = b(a12);
        Uri a13 = c.a(context, c0043a.f2808f);
        c0043a.f2809g = a13;
        if (a13 != null) {
            c0043a.f2807e &= -2;
        } else {
            c0043a.f2808f = null;
        }
        if (TextUtils.isEmpty(c0043a.f2803a)) {
            String a14 = a(c0043a);
            c0043a.f2803a = a14;
            if (Build.VERSION.SDK_INT >= 26 && (a11 = a(context, a14)) != null) {
                c0043a.f2803a = a11.getId();
                c0043a.f2804b = a11.getName();
                c0043a.f2810h = true;
                return;
            }
        }
        if (TextUtils.isEmpty(c0043a.f2804b)) {
            c0043a.f2804b = ("KG_channel_normal".equals(c0043a.f2803a) && "com.tencent.karaoke".equals(context.getPackageName())) ? "普通_K歌" : a(context, c0043a.f2805c);
        }
        Logger.d("ChannelHelper", "create channelId:" + c0043a.f2803a + ",channelName:" + ((Object) c0043a.f2804b) + " soundUri:" + c0043a.f2809g);
        c0043a.f2810h = a(context, c0043a.f2803a, c0043a.f2804b, c0043a.f2806d, c0043a.f2807e, c0043a.f2809g);
    }

    private static boolean a(Context context, String str, CharSequence charSequence, int i9, int i10, Uri uri) {
        if (Build.VERSION.SDK_INT < 26 || context.getApplicationInfo().targetSdkVersion < 26) {
            Logger.d("ChannelHelper", "sdkversion < 26, no need use notificationChannel!");
            return false;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager == null) {
                Logger.ee("ChannelHelper", "NotificationManager is null!");
                return false;
            }
            Logger.dd("ChannelHelper", "prepare NotificationChannel, channelId=" + str + "");
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
            if (notificationChannel != null) {
                notificationChannel.setName(charSequence);
                notificationManager.createNotificationChannel(notificationChannel);
                return true;
            }
            NotificationChannel notificationChannel2 = new NotificationChannel(str, charSequence, i9);
            if (Build.VERSION.SDK_INT < 28 || notificationManager.getNotificationChannelGroup("JIGUANG_CHANNEL_GROUP") == null) {
                notificationManager.createNotificationChannelGroup(new NotificationChannelGroup("JIGUANG_CHANNEL_GROUP", cn.jpush.android.af.a.b(context)));
            }
            notificationChannel2.setGroup("JIGUANG_CHANNEL_GROUP");
            notificationChannel2.enableLights((i10 & 4) != 0);
            notificationChannel2.enableVibration((i10 & 2) != 0);
            if (uri != null) {
                notificationChannel2.setSound(uri, null);
            } else {
                if (!((i10 & 1) != 0)) {
                    notificationChannel2.setSound(null, null);
                }
            }
            notificationManager.createNotificationChannel(notificationChannel2);
            return true;
        } catch (Throwable th2) {
            Logger.ee("ChannelHelper", "new NotificationChannel fail:" + th2);
            return false;
        }
    }

    private static int b(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                return (i9 == 4 || i9 == 5) ? 1 : 0;
            }
            return -1;
        }
        return -2;
    }
}
