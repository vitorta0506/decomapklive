package com.google.firebase.messaging;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f14041a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final NotificationCompat.Builder f14042a;

        /* renamed from: b  reason: collision with root package name */
        public final String f14043b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14044c;

        a(NotificationCompat.Builder builder, String str, int i9) {
            this.f14042a = builder;
            this.f14043b = str;
            this.f14044c = i9;
        }
    }

    @Nullable
    private static PendingIntent a(Context context, f0 f0Var, String str, PackageManager packageManager) {
        Intent g10 = g(str, f0Var, packageManager);
        if (g10 == null) {
            return null;
        }
        g10.addFlags(67108864);
        g10.putExtras(f0Var.y());
        if (r(f0Var)) {
            g10.putExtra("gcm.n.analytics_data", f0Var.x());
        }
        return PendingIntent.getActivity(context, h(), g10, m(BasicMeasure.EXACTLY));
    }

    @Nullable
    private static PendingIntent b(Context context, Context context2, f0 f0Var) {
        if (r(f0Var)) {
            return c(context, context2, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(f0Var.x()));
        }
        return null;
    }

    private static PendingIntent c(Context context, Context context2, Intent intent) {
        return PendingIntent.getBroadcast(context, h(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context2, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), m(BasicMeasure.EXACTLY));
    }

    public static a d(Context context, Context context2, f0 f0Var, String str, Bundle bundle) {
        return e(context, context2, f0Var, str, bundle, context2.getPackageName(), context2.getResources(), context2.getPackageManager());
    }

    public static a e(Context context, Context context2, f0 f0Var, String str, Bundle bundle, String str2, Resources resources, PackageManager packageManager) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context2, str);
        String n9 = f0Var.n(resources, str2, "gcm.n.title");
        if (!TextUtils.isEmpty(n9)) {
            builder.setContentTitle(n9);
        }
        String n10 = f0Var.n(resources, str2, "gcm.n.body");
        if (!TextUtils.isEmpty(n10)) {
            builder.setContentText(n10);
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(n10));
        }
        builder.setSmallIcon(n(packageManager, resources, str2, f0Var.p("gcm.n.icon"), bundle));
        Uri o10 = o(str2, f0Var, resources);
        if (o10 != null) {
            builder.setSound(o10);
        }
        builder.setContentIntent(a(context, f0Var, str2, packageManager));
        PendingIntent b10 = b(context, context2, f0Var);
        if (b10 != null) {
            builder.setDeleteIntent(b10);
        }
        Integer i9 = i(context2, f0Var.p("gcm.n.color"), bundle);
        if (i9 != null) {
            builder.setColor(i9.intValue());
        }
        builder.setAutoCancel(!f0Var.a("gcm.n.sticky"));
        builder.setLocalOnly(f0Var.a("gcm.n.local_only"));
        String p10 = f0Var.p("gcm.n.ticker");
        if (p10 != null) {
            builder.setTicker(p10);
        }
        Integer m10 = f0Var.m();
        if (m10 != null) {
            builder.setPriority(m10.intValue());
        }
        Integer r10 = f0Var.r();
        if (r10 != null) {
            builder.setVisibility(r10.intValue());
        }
        Integer l10 = f0Var.l();
        if (l10 != null) {
            builder.setNumber(l10.intValue());
        }
        Long j10 = f0Var.j("gcm.n.event_time");
        if (j10 != null) {
            builder.setShowWhen(true);
            builder.setWhen(j10.longValue());
        }
        long[] q10 = f0Var.q();
        if (q10 != null) {
            builder.setVibrate(q10);
        }
        int[] e10 = f0Var.e();
        if (e10 != null) {
            builder.setLights(e10[0], e10[1], e10[2]);
        }
        builder.setDefaults(j(f0Var));
        return new a(builder, p(f0Var), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a f(Context context, f0 f0Var) {
        Bundle k10 = k(context.getPackageManager(), context.getPackageName());
        return d(context, context, f0Var, l(context, f0Var.k(), k10), k10);
    }

    private static Intent g(String str, f0 f0Var, PackageManager packageManager) {
        String p10 = f0Var.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(p10)) {
            Intent intent = new Intent(p10);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri f10 = f0Var.f();
        if (f10 != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(f10);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int h() {
        return f14041a.incrementAndGet();
    }

    private static Integer i(Context context, String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i9 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i9 != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(context, i9));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int j(f0 f0Var) {
        boolean a10 = f0Var.a("gcm.n.default_sound");
        ?? r02 = a10;
        if (f0Var.a("gcm.n.default_vibrate_timings")) {
            r02 = (a10 ? 1 : 0) | true;
        }
        return f0Var.a("gcm.n.default_light_settings") ? r02 | 4 : r02;
    }

    private static Bundle k(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    return bundle;
                }
            }
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e10);
        }
        return Bundle.EMPTY;
    }

    @VisibleForTesting
    public static String l(Context context, String str, Bundle bundle) {
        String string;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                Log.w("FirebaseMessaging", "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (!TextUtils.isEmpty(string2)) {
                if (notificationManager.getNotificationChannel(string2) != null) {
                    return string2;
                }
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            } else {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            }
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", TypedValues.Custom.S_STRING, context.getPackageName());
                if (identifier == 0) {
                    Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = "Misc";
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", string, 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static int m(int i9) {
        return Build.VERSION.SDK_INT >= 23 ? i9 | 67108864 : i9;
    }

    private static int n(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && q(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && q(resources, identifier2)) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i9 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i9 == 0 || !q(resources, i9)) {
            try {
                i9 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e10) {
                Log.w("FirebaseMessaging", "Couldn't get own application info: " + e10);
            }
        }
        if (i9 == 0 || !q(resources, i9)) {
            return 17301651;
        }
        return i9;
    }

    private static Uri o(String str, f0 f0Var, Resources resources) {
        String o10 = f0Var.o();
        if (TextUtils.isEmpty(o10)) {
            return null;
        }
        if (!V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND.equals(o10) && resources.getIdentifier(o10, "raw", str) != 0) {
            return Uri.parse("android.resource://" + str + "/raw/" + o10);
        }
        return RingtoneManager.getDefaultUri(2);
    }

    private static String p(f0 f0Var) {
        String p10 = f0Var.p("gcm.n.tag");
        if (TextUtils.isEmpty(p10)) {
            return "FCM-Notification:" + SystemClock.uptimeMillis();
        }
        return p10;
    }

    private static boolean q(Resources resources, int i9) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (resources.getDrawable(i9, null) instanceof AdaptiveIconDrawable) {
                Log.e("FirebaseMessaging", "Adaptive icons cannot be used in notifications. Ignoring icon id: " + i9);
                return false;
            }
            return true;
        } catch (Resources.NotFoundException unused) {
            Log.e("FirebaseMessaging", "Couldn't find resource " + i9 + ", treating it as an invalid icon");
            return false;
        }
    }

    static boolean r(@NonNull f0 f0Var) {
        return f0Var.a("google.c.a.e");
    }
}
