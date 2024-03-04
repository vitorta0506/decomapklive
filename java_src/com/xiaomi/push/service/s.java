package com.xiaomi.push.service;

import android.app.Notification;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.facebook.internal.ServerProtocol;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.xiaomi.push.q3;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes5.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f37354a = {"com.mi.globalbrowser", "com.android.browser"};

    /* renamed from: b  reason: collision with root package name */
    private static String f37355b = null;

    /* renamed from: c  reason: collision with root package name */
    public static final a<String, String, String> f37356c = new a<>("setSound", "canSound", "canSound");

    /* renamed from: d  reason: collision with root package name */
    public static final a<String, String, String> f37357d = new a<>("setVibrate", "canVibrate", "canVibrate");

    /* renamed from: e  reason: collision with root package name */
    public static final a<String, String, String> f37358e = new a<>("setLights", "canLights", "canLights");

    /* renamed from: f  reason: collision with root package name */
    public static final a<String, String, String> f37359f = new a<>("setShowOnKeyguard", "canShowOnKeyguard", "canShowOnKeyguard");

    /* renamed from: g  reason: collision with root package name */
    public static final a<String, String, String> f37360g = new a<>("setFloat", "canFloat", "canShowFloat");

    /* loaded from: classes5.dex */
    public static class a<F, S, T> {

        /* renamed from: a  reason: collision with root package name */
        F f37361a;

        /* renamed from: b  reason: collision with root package name */
        S f37362b;

        /* renamed from: c  reason: collision with root package name */
        T f37363c;

        private a(F f10, S s10, T t10) {
            this.f37361a = f10;
            this.f37362b = s10;
            this.f37363c = t10;
        }
    }

    public static int a(ContentResolver contentResolver) {
        try {
            return Settings.Global.getInt(contentResolver, "user_aggregate", 0);
        } catch (Exception e10) {
            tf.c.l("get user aggregate failed, " + e10);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Context context, String str) {
        return com.xiaomi.channel.commonutils.android.a.i(context, str);
    }

    public static int c(Context context, String str, String str2, a<String, String, String> aVar) {
        if (aVar != null) {
            try {
                Bundle d10 = d(context, aVar.f37362b, str, str2, null);
                if (d10 == null || !d10.containsKey(aVar.f37363c)) {
                    return -1;
                }
                return d10.getBoolean(aVar.f37363c) ? 1 : 0;
            } catch (Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    private static Bundle d(Context context, String str, String str2, String str3, Bundle bundle) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("call notification provider failed!");
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("package", str2);
        if (!TextUtils.isEmpty(str3)) {
            bundle2.putString("channel_id", str3);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        return context.getContentResolver().call(Uri.parse("content://statusbar.notification"), str, (String) null, bundle2);
    }

    public static <T> T e(Notification notification, String str) {
        Bundle bundle = notification.extras;
        if (bundle != null) {
            try {
                return (T) bundle.get(str);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T f(java.lang.Object r2, java.lang.String r3, T r4) {
        /*
            r0 = 0
            boolean r1 = r2 instanceof android.app.Notification     // Catch: java.lang.Exception -> L38
            if (r1 == 0) goto Ld
            android.app.Notification r2 = (android.app.Notification) r2     // Catch: java.lang.Exception -> L38
            java.lang.Object r2 = e(r2, r3)     // Catch: java.lang.Exception -> L38
        Lb:
            r0 = r2
            goto L4d
        Ld:
            boolean r1 = r2 instanceof java.util.Map     // Catch: java.lang.Exception -> L38
            if (r1 == 0) goto L18
            java.util.Map r2 = (java.util.Map) r2     // Catch: java.lang.Exception -> L38
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Exception -> L38
            goto Lb
        L18:
            boolean r1 = r2 instanceof android.os.Bundle     // Catch: java.lang.Exception -> L38
            if (r1 == 0) goto L23
            android.os.Bundle r2 = (android.os.Bundle) r2     // Catch: java.lang.Exception -> L38
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Exception -> L38
            goto Lb
        L23:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L38
            r3.<init>()     // Catch: java.lang.Exception -> L38
            java.lang.String r1 = "not support get value from classType:"
            r3.append(r1)     // Catch: java.lang.Exception -> L38
            r3.append(r2)     // Catch: java.lang.Exception -> L38
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Exception -> L38
            tf.c.l(r2)     // Catch: java.lang.Exception -> L38
            goto L4d
        L38:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = "get value error "
            r3.append(r1)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            tf.c.l(r2)
        L4d:
            if (r0 != 0) goto L50
            goto L51
        L50:
            r4 = r0
        L51:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.s.f(java.lang.Object, java.lang.String, java.lang.Object):java.lang.Object");
    }

    public static String g(Notification notification) {
        CharSequence charSequence;
        Bundle bundle = notification.extras;
        if (bundle != null) {
            charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_TITLE);
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
            }
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence("mipush.customTitle");
            }
        } else {
            charSequence = null;
        }
        return charSequence != null ? charSequence.toString() : "";
    }

    public static String h(Object obj) {
        return (String) f(obj, "msg_busi_type", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(Notification notification, int i9) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putInt("miui.messageCount", i9);
            }
            Object d10 = q3.d(notification, "extraNotification");
            if (d10 != null) {
                q3.e(d10, "setMessageCount", Integer.valueOf(i9));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(Notification notification, int i9, int i10) {
        if (notification != null) {
            if (notification.extras == null) {
                notification.extras = new Bundle();
            }
            notification.extras.putInt("is_priority", i9);
            notification.extras.putInt("mipush_class", i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(Notification notification, String str) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putString(HiAnalyticsConstant.BI_KEY_TARGET_PACKAGE, str);
            }
            Object d10 = q3.d(notification, "extraNotification");
            if (d10 != null) {
                q3.e(d10, "setTargetPkg", str);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(Notification notification, boolean z10) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putBoolean("miui.enableFloat", z10);
            }
            Object d10 = q3.d(notification, "extraNotification");
            if (d10 != null) {
                q3.e(d10, "setEnableFloat", Boolean.valueOf(z10));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(Context context, Intent intent) {
        String str;
        int i9 = -1;
        while (true) {
            str = i9 < 0 ? f37355b : f37354a[i9];
            if (!TextUtils.isEmpty(str)) {
                intent.setPackage(str);
                try {
                    if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
                        break;
                    }
                } catch (Exception e10) {
                    tf.c.l("not found xm browser:" + e10);
                }
            }
            i9++;
            if (i9 >= f37354a.length) {
                str = null;
                break;
            }
        }
        intent.setPackage(str);
        f37355b = str;
    }

    public static void n(Map<String, String> map, Bundle bundle, String str) {
        if (map == null || bundle == null || TextUtils.isEmpty(str)) {
            tf.c.l("cp map to b fail:" + str);
        } else if (TextUtils.isEmpty(map.get(str))) {
            bundle.remove(str);
        } else {
            bundle.putString(str, map.get(str));
        }
    }

    public static boolean o(Notification.Builder builder, boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setGroupAlertBehavior(z10 ? 2 : 1);
            return true;
        }
        tf.c.s("not support setGroupAlertBehavior");
        return false;
    }

    public static boolean p(ContentResolver contentResolver) {
        int a10 = a(contentResolver);
        return a10 == 1 || a10 == 2;
    }

    public static boolean q(Context context, String str, String str2, a<String, String, String> aVar, boolean z10) {
        if (aVar != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putBoolean(aVar.f37363c, z10);
                d(context, aVar.f37361a, str, str2, bundle);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean r(Map<String, String> map) {
        return Boolean.parseBoolean((String) f(map, "not_suppress", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
    }

    public static Notification.Action[] s(Notification notification) {
        Parcelable[] parcelableArray;
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr;
        }
        Bundle bundle = notification.extras;
        if (bundle == null || (parcelableArray = bundle.getParcelableArray("mipush.customActions")) == null) {
            return null;
        }
        return (Notification.Action[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Notification.Action[].class);
    }

    public static String t(Notification notification) {
        CharSequence charSequence;
        Bundle bundle = notification.extras;
        if (bundle != null) {
            charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_TEXT);
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence(NotificationCompat.EXTRA_BIG_TEXT);
            }
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence("mipush.customContent");
            }
        } else {
            charSequence = null;
        }
        return charSequence != null ? charSequence.toString() : "";
    }

    public static void u(Notification notification, boolean z10) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putBoolean("miui.enableKeyguard", z10);
            }
            Object d10 = q3.d(notification, "extraNotification");
            if (d10 != null) {
                q3.e(d10, "setEnableKeyguard", Boolean.valueOf(z10));
            }
        } catch (Exception unused) {
        }
    }

    public static String v(Notification notification) {
        Object d10;
        try {
            Bundle bundle = notification.extras;
            r0 = bundle != null ? bundle.getString(HiAnalyticsConstant.BI_KEY_TARGET_PACKAGE) : null;
            return (!TextUtils.isEmpty(r0) || (d10 = q3.d(notification, "extraNotification")) == null) ? r0 : (String) q3.e(d10, "getTargetPkg", new Object[0]);
        } catch (Exception unused) {
            return r0;
        }
    }
}
