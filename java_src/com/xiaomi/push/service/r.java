package com.xiaomi.push.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.xiaomi.push.db;
import com.xiaomi.push.q3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class r {

    /* renamed from: c  reason: collision with root package name */
    private static Context f37341c;

    /* renamed from: d  reason: collision with root package name */
    private static Object f37342d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f37343e;

    /* renamed from: f  reason: collision with root package name */
    private static WeakHashMap<Integer, r> f37344f = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private String f37345a;

    /* renamed from: b  reason: collision with root package name */
    private String f37346b;

    private r(String str) {
        this.f37345a = str;
    }

    private static int a(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                return f37341c.getPackageManager().getPackageUid(str, 0);
            } catch (Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    private static NotificationManager c() {
        return (NotificationManager) f37341c.getSystemService(RemoteMessageConst.NOTIFICATION);
    }

    public static r e(Context context, String str) {
        q(context);
        int hashCode = str.hashCode();
        r rVar = f37344f.get(Integer.valueOf(hashCode));
        if (rVar == null) {
            r rVar2 = new r(str);
            f37344f.put(Integer.valueOf(hashCode), rVar2);
            return rVar2;
        }
        return rVar;
    }

    private static <T> T f(Object obj) {
        if (obj != null) {
            try {
                return (T) obj.getClass().getMethod("getList", new Class[0]).invoke(obj, new Object[0]);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private static Object g(List list) {
        return Class.forName("android.content.pm.ParceledListSlice").getConstructor(List.class).newInstance(list);
    }

    public static String j(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String k10 = k("mipush|%s|%s", str2, "");
        return str.startsWith(k10) ? k("mipush_%s_%s", str2, str.replace(k10, "")) : str;
    }

    private static String k(String str, String str2, String str3) {
        return TextUtils.isEmpty(str) ? "" : String.format(str, str2, str3);
    }

    private static void q(Context context) {
        if (f37341c == null) {
            f37341c = context.getApplicationContext();
            NotificationManager c10 = c();
            Boolean bool = (Boolean) q3.e(c10, "isSystemConditionProviderEnabled", "xmsf_fake_condition_provider_path");
            r("fwk is support.init:" + bool);
            boolean booleanValue = bool != null ? bool.booleanValue() : false;
            f37343e = booleanValue;
            if (booleanValue) {
                f37342d = q3.e(c10, "getService", new Object[0]);
            }
        }
    }

    static void r(String str) {
        tf.c.l("NMHelper:" + str);
    }

    private static boolean s() {
        if (sf.e.h() && u.c(f37341c).k(db.NotificationBelongToAppSwitch.a(), true)) {
            return f37343e;
        }
        return false;
    }

    public static boolean t(Context context) {
        q(context);
        return s();
    }

    private StatusBarNotification[] v() {
        if (sf.e.i(d())) {
            try {
                Object e10 = q3.e(f37342d, "getActiveNotifications", d().getPackageName());
                if (e10 instanceof StatusBarNotification[]) {
                    return (StatusBarNotification[]) e10;
                }
                return null;
            } catch (Throwable th2) {
                r("getAllNotifications error " + th2);
                return null;
            }
        }
        return null;
    }

    private String x(String str) {
        return k(s() ? "mipush|%s|%s" : "mipush_%s_%s", this.f37345a, str);
    }

    public NotificationChannel b(String str) {
        NotificationChannel notificationChannel = null;
        try {
            if (s()) {
                List<NotificationChannel> l10 = l();
                if (l10 != null) {
                    for (NotificationChannel notificationChannel2 : l10) {
                        if (str.equals(notificationChannel2.getId())) {
                            notificationChannel = notificationChannel2;
                            break;
                        }
                    }
                }
            } else {
                notificationChannel = c().getNotificationChannel(str);
            }
        } catch (Exception e10) {
            r("getNotificationChannel error" + e10);
        }
        return notificationChannel;
    }

    public Context d() {
        return f37341c;
    }

    public String h() {
        return this.f37345a;
    }

    public String i(String str) {
        return TextUtils.isEmpty(str) ? w() : sf.e.i(d()) ? x(str) : str;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:10:0x0036
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    java.util.List<android.app.NotificationChannel> l() {
        /*
            r8 = this;
            java.lang.String r0 = r8.f37345a
            r1 = 0
            boolean r2 = s()     // Catch: java.lang.Exception -> L78
            if (r2 == 0) goto L3b
            int r2 = a(r0)     // Catch: java.lang.Exception -> L78
            r3 = -1
            if (r2 == r3) goto L39
            java.lang.Object r3 = com.xiaomi.push.service.r.f37342d     // Catch: java.lang.Exception -> L78
            java.lang.String r4 = "getNotificationChannelsForPackage"
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Exception -> L78
            r6 = 0
            r5[r6] = r0     // Catch: java.lang.Exception -> L78
            r6 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L78
            r5[r6] = r2     // Catch: java.lang.Exception -> L78
            r2 = 2
            java.lang.Boolean r6 = java.lang.Boolean.FALSE     // Catch: java.lang.Exception -> L78
            r5[r2] = r6     // Catch: java.lang.Exception -> L78
            java.lang.Object r2 = com.xiaomi.push.q3.e(r3, r4, r5)     // Catch: java.lang.Exception -> L78
            java.lang.Object r2 = f(r2)     // Catch: java.lang.Exception -> L78
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> L78
            java.lang.String r1 = "mipush|%s|%s"
            r7 = r2
            r2 = r1
            r1 = r7
            goto L45
        L36:
            r0 = move-exception
            r1 = r2
            goto L79
        L39:
            r2 = r1
            goto L45
        L3b:
            android.app.NotificationManager r2 = c()     // Catch: java.lang.Exception -> L78
            java.util.List r1 = r2.getNotificationChannels()     // Catch: java.lang.Exception -> L78
            java.lang.String r2 = "mipush_%s_%s"
        L45:
            boolean r3 = sf.e.h()     // Catch: java.lang.Exception -> L78
            if (r3 == 0) goto L8d
            if (r1 == 0) goto L8d
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> L78
            r3.<init>()     // Catch: java.lang.Exception -> L78
            java.lang.String r4 = ""
            java.lang.String r0 = k(r2, r0, r4)     // Catch: java.lang.Exception -> L78
            java.util.Iterator r2 = r1.iterator()     // Catch: java.lang.Exception -> L78
        L5c:
            boolean r4 = r2.hasNext()     // Catch: java.lang.Exception -> L78
            if (r4 == 0) goto L76
            java.lang.Object r4 = r2.next()     // Catch: java.lang.Exception -> L78
            android.app.NotificationChannel r4 = (android.app.NotificationChannel) r4     // Catch: java.lang.Exception -> L78
            java.lang.String r5 = r4.getId()     // Catch: java.lang.Exception -> L78
            boolean r5 = r5.startsWith(r0)     // Catch: java.lang.Exception -> L78
            if (r5 == 0) goto L5c
            r3.add(r4)     // Catch: java.lang.Exception -> L78
            goto L5c
        L76:
            r1 = r3
            goto L8d
        L78:
            r0 = move-exception
        L79:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "getNotificationChannels error "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r(r0)
        L8d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.r.l():java.util.List");
    }

    public void m(int i9) {
        String str = this.f37345a;
        try {
            if (!s()) {
                c().cancel(i9);
                return;
            }
            int a10 = sf.b.a();
            String packageName = d().getPackageName();
            if (Build.VERSION.SDK_INT >= 30) {
                q3.n(f37342d, "cancelNotificationWithTag", str, packageName, null, Integer.valueOf(i9), Integer.valueOf(a10));
            } else {
                q3.n(f37342d, "cancelNotificationWithTag", str, null, Integer.valueOf(i9), Integer.valueOf(a10));
            }
            r("cancel succ:" + i9);
        } catch (Exception e10) {
            r("cancel error" + e10);
        }
    }

    public void n(int i9, Notification notification) {
        String str = this.f37345a;
        NotificationManager c10 = c();
        try {
            int i10 = Build.VERSION.SDK_INT;
            if (s()) {
                notification.extras.putString("xmsf_target_package", str);
                if (i10 >= 29) {
                    c10.notifyAsPackage(str, null, i9, notification);
                }
            }
            c10.notify(i9, notification);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(NotificationChannel notificationChannel) {
        String str = this.f37345a;
        try {
            if (s()) {
                int a10 = a(str);
                if (a10 != -1) {
                    q3.n(f37342d, "createNotificationChannelsForPackage", str, Integer.valueOf(a10), g(Arrays.asList(notificationChannel)));
                }
            } else {
                c().createNotificationChannel(notificationChannel);
            }
        } catch (Exception e10) {
            r("createNotificationChannel error" + e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(NotificationChannel notificationChannel, boolean z10) {
        String str = this.f37345a;
        try {
            if (z10) {
                int a10 = a(str);
                if (a10 != -1) {
                    q3.n(f37342d, "updateNotificationChannelForPackage", str, Integer.valueOf(a10), notificationChannel);
                }
            } else {
                o(notificationChannel);
            }
        } catch (Exception e10) {
            r("updateNotificationChannel error " + e10);
        }
    }

    public String toString() {
        return "NotificationManagerHelper{" + this.f37345a + "}";
    }

    public boolean u(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(x(""));
    }

    String w() {
        if (TextUtils.isEmpty(this.f37346b)) {
            this.f37346b = x(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND);
        }
        return this.f37346b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String y(String str, String str2) {
        return s() ? str : str2;
    }

    public List<StatusBarNotification> z() {
        String str = this.f37345a;
        NotificationManager c10 = c();
        ArrayList arrayList = null;
        try {
            if (s()) {
                int a10 = sf.b.a();
                if (a10 != -1) {
                    return (List) f(q3.e(f37342d, "getAppActiveNotifications", str, Integer.valueOf(a10)));
                }
                return null;
            }
            StatusBarNotification[] activeNotifications = Build.VERSION.SDK_INT >= 23 ? c10.getActiveNotifications() : v();
            if (activeNotifications == null || activeNotifications.length <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (StatusBarNotification statusBarNotification : activeNotifications) {
                    if (str.equals(s.v(statusBarNotification.getNotification()))) {
                        arrayList2.add(statusBarNotification);
                    }
                }
                return arrayList2;
            } catch (Throwable th2) {
                th = th2;
                arrayList = arrayList2;
                r("getActiveNotifications error " + th);
                return arrayList;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
