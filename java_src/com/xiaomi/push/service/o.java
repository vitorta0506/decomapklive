package com.xiaomi.push.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.push.db;
import com.xiaomi.push.q3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static o f37313a = new o();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        List<b> f37314a;

        /* renamed from: b  reason: collision with root package name */
        List<b> f37315b;

        private a() {
            this.f37314a = new ArrayList();
            this.f37315b = new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f37317a;

        /* renamed from: b  reason: collision with root package name */
        Notification f37318b;

        public b(int i9, Notification notification) {
            this.f37317a = i9;
            this.f37318b = notification;
        }

        public String toString() {
            return "id:" + this.f37317a;
        }
    }

    private o() {
    }

    private int a(String str, String str2) {
        return ("GroupSummary" + str + str2).hashCode();
    }

    public static o b() {
        return f37313a;
    }

    private String c(Notification notification) {
        Bundle bundle;
        if (notification == null || (bundle = notification.extras) == null) {
            return null;
        }
        return bundle.getString("push_src_group_name");
    }

    private List<StatusBarNotification> e(r rVar) {
        List<StatusBarNotification> z10 = rVar != null ? rVar.z() : null;
        if (z10 == null || z10.size() == 0) {
            return null;
        }
        return z10;
    }

    private void g(Context context, int i9, Notification notification, boolean z10) {
        String str;
        String v10 = s.v(notification);
        if (TextUtils.isEmpty(v10)) {
            str = "group auto not extract pkg from notification:" + i9;
        } else {
            List<StatusBarNotification> e10 = e(r.e(context, v10));
            if (e10 != null) {
                String n9 = n(notification);
                HashMap hashMap = new HashMap();
                for (StatusBarNotification statusBarNotification : e10) {
                    if (statusBarNotification.getNotification() != null && statusBarNotification.getId() != i9) {
                        j(hashMap, statusBarNotification);
                    }
                }
                for (Map.Entry<String, a> entry : hashMap.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        a value = entry.getValue();
                        if (z10 && key.equals(n9) && !p(notification)) {
                            (l(notification) ? value.f37315b : value.f37314a).add(new b(i9, notification));
                        }
                        int size = value.f37314a.size();
                        if (value.f37315b.size() <= 0) {
                            if (z10 && size >= 2) {
                                i(context, v10, key, value.f37314a.get(0).f37318b);
                            }
                        } else if (size <= 0) {
                            h(context, v10, key);
                        }
                    }
                }
                return;
            }
            str = "group auto not get notifications";
        }
        tf.c.l(str);
    }

    private void h(Context context, String str, String str2) {
        tf.c.s("group cancel summary:" + str2);
        r.e(context, str).m(a(str, str2));
    }

    private void i(Context context, String str, String str2, Notification notification) {
        Notification.Builder defaults;
        try {
            if (TextUtils.isEmpty(str2)) {
                tf.c.l("group show summary group is null");
                return;
            }
            int b10 = s.b(context, str);
            if (b10 == 0) {
                tf.c.l("group show summary not get icon from " + str);
                return;
            }
            r e10 = r.e(context, str);
            if (Build.VERSION.SDK_INT >= 26) {
                String y10 = e10.y(notification.getChannelId(), "groupSummary");
                NotificationChannel b11 = e10.b(y10);
                if ("groupSummary".equals(y10) && b11 == null) {
                    e10.o(new NotificationChannel(y10, "group_summary", 3));
                }
                defaults = new Notification.Builder(context, y10);
            } else {
                defaults = new Notification.Builder(context).setPriority(0).setDefaults(-1);
            }
            s.o(defaults, true);
            Notification build = defaults.setContentTitle("GroupSummary").setContentText("GroupSummary").setSmallIcon(Icon.createWithResource(str, b10)).setAutoCancel(true).setGroup(str2).setGroupSummary(true).build();
            if (!sf.e.o() && "com.xiaomi.xmsf".equals(context.getPackageName())) {
                s.k(build, str);
            }
            int a10 = a(str, str2);
            e10.n(a10, build);
            tf.c.s("group show summary notify:" + a10);
        } catch (Exception e11) {
            tf.c.l("group show summary error " + e11);
        }
    }

    private void j(Map<String, a> map, StatusBarNotification statusBarNotification) {
        String n9 = n(statusBarNotification.getNotification());
        a aVar = map.get(n9);
        if (aVar == null) {
            aVar = new a();
            map.put(n9, aVar);
        }
        (l(statusBarNotification.getNotification()) ? aVar.f37315b : aVar.f37314a).add(new b(statusBarNotification.getId(), statusBarNotification.getNotification()));
    }

    private boolean k() {
        return Build.VERSION.SDK_INT >= 24;
    }

    private boolean l(Notification notification) {
        if (notification != null) {
            Object e10 = q3.e(notification, "isGroupSummary", null);
            if (e10 instanceof Boolean) {
                return ((Boolean) e10).booleanValue();
            }
            return false;
        }
        return false;
    }

    private boolean m(Context context) {
        if (q(context)) {
            r.t(context);
            return false;
        }
        return false;
    }

    private String n(Notification notification) {
        if (notification == null) {
            return null;
        }
        return p(notification) ? c(notification) : notification.getGroup();
    }

    private void o(Context context, int i9, Notification notification) {
        String str;
        String v10 = s.v(notification);
        if (TextUtils.isEmpty(v10)) {
            str = "group restore not extract pkg from notification:" + i9;
        } else {
            r e10 = r.e(context, v10);
            List<StatusBarNotification> e11 = e(e10);
            if (e11 != null) {
                for (StatusBarNotification statusBarNotification : e11) {
                    Notification notification2 = statusBarNotification.getNotification();
                    if (notification2 != null && p(notification2) && statusBarNotification.getId() != i9) {
                        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, statusBarNotification.getNotification());
                        recoverBuilder.setGroup(c(notification2));
                        s.o(recoverBuilder, l(notification2));
                        e10.n(statusBarNotification.getId(), recoverBuilder.build());
                        tf.c.s("group restore notification:" + statusBarNotification.getId());
                    }
                }
                return;
            }
            str = "group restore not get notifications";
        }
        tf.c.l(str);
    }

    private boolean p(Notification notification) {
        Bundle bundle;
        if (notification == null || notification.getGroup() == null || (bundle = notification.extras) == null) {
            return false;
        }
        return notification.getGroup().equals(String.format("pushmask_%s_%s", Long.valueOf(bundle.getLong("push_src_group_time")), c(notification)));
    }

    private boolean q(Context context) {
        return u.c(context).k(db.NotificationAutoGroupSwitch.a(), true);
    }

    public String d(Context context, Notification.Builder builder, String str) {
        if (k() && m(context)) {
            long currentTimeMillis = System.currentTimeMillis();
            Bundle extras = builder.getExtras();
            extras.putString("push_src_group_name", str);
            extras.putLong("push_src_group_time", currentTimeMillis);
            return String.format("pushmask_%s_%s", Long.valueOf(currentTimeMillis), str);
        }
        return str;
    }

    public void f(Context context, int i9, Notification notification) {
        if (k()) {
            if (m(context)) {
                try {
                    o(context, i9, notification);
                } catch (Exception e10) {
                    tf.c.l("group notify handle restore error " + e10);
                }
            }
            if (q(context)) {
                try {
                    g(context, i9, notification, true);
                } catch (Exception e11) {
                    tf.c.l("group notify handle auto error " + e11);
                }
            }
        }
    }
}
