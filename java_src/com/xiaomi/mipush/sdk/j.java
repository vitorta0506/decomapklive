package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.push.Cdo;
import com.xiaomi.push.bg;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.di;
import com.xiaomi.push.dj;
import com.xiaomi.push.dt;
import com.xiaomi.push.du;
import com.xiaomi.push.dy;
import com.xiaomi.push.ea;
import com.xiaomi.push.f3;
import com.xiaomi.push.service.receivers.NetworkStatusReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private static Context f36239a;

    /* renamed from: b  reason: collision with root package name */
    private static long f36240b = System.currentTimeMillis();

    /* renamed from: c  reason: collision with root package name */
    protected static volatile Region f36241c = null;

    /* loaded from: classes5.dex */
    public interface a<R> {
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        private String f36242a;

        /* JADX INFO: Access modifiers changed from: protected */
        public String a() {
            return this.f36242a;
        }

        public void b(String str, long j10, String str2, List<String> list) {
        }

        public void c(long j10, String str, String str2) {
        }

        public void d(MiPushMessage miPushMessage) {
        }

        public void e(String str, String str2, String str3, boolean z10) {
        }

        public void f(long j10, String str, String str2) {
        }

        public void g(long j10, String str, String str2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean A(Context context) {
        k(context, "context");
        return f0.e(context).m(c.ASSEMBLE_PUSH_HUAWEI);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean B(Context context) {
        k(context, "context");
        return f0.e(context).m(c.ASSEMBLE_PUSH_COS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean C(Context context) {
        return f0.e(context).m(c.ASSEMBLE_PUSH_FTOS);
    }

    public static String D(Context context) {
        if (n.c(context).s()) {
            return n.c(context).q();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void E(Context context, String str, String str2, b bVar, String str3, a aVar, String str4) {
        boolean z10;
        try {
            tf.c.j(context.getApplicationContext());
            tf.c.v("sdk_version = 5_0_6-G");
            if (bVar != null) {
                PushMessageHandler.a(bVar);
            }
            if (aVar != null) {
                PushMessageHandler.a(aVar);
            }
            if (sf.j.f(f36239a)) {
                p.b(f36239a);
            }
            if (sf.e.h()) {
                z10 = false;
            } else if (TextUtils.isEmpty(str4)) {
                tf.c.l("please set region before registering");
                return;
            } else {
                z10 = l(f36239a, str4);
            }
            boolean z11 = n.c(f36239a).a() != d.a();
            if (!z11 && !b0(f36239a)) {
                w.h(f36239a).m();
                tf.c.l("Could not send  register message within 5s repeatly .");
                return;
            }
            if (z11 || !n.c(f36239a).l(str, str2) || n.c(f36239a).y() || z10) {
                String a10 = com.xiaomi.push.g.a(6);
                n.c(f36239a).e();
                n.c(f36239a).f(d.a());
                n.c(f36239a).i(str, str2, a10);
                m(f36239a);
                p(context);
                du duVar = new du();
                duVar.a(com.xiaomi.push.service.x.c());
                duVar.b(str);
                duVar.e(str2);
                duVar.d(f36239a.getPackageName());
                duVar.f(a10);
                Context context2 = f36239a;
                duVar.c(com.xiaomi.channel.commonutils.android.a.g(context2, context2.getPackageName()));
                Context context3 = f36239a;
                duVar.b(com.xiaomi.channel.commonutils.android.a.b(context3, context3.getPackageName()));
                duVar.h("5_0_6-G");
                duVar.a(50006);
                duVar.a(dj.Init);
                if (!TextUtils.isEmpty(str3)) {
                    duVar.g(str3);
                }
                int a11 = sf.b.a();
                if (a11 >= 0) {
                    duVar.c(a11);
                }
                w.h(f36239a).s(duVar, z11, z10);
                f36239a.getSharedPreferences("mipush_extra", 4).getBoolean("mipush_registed", true);
            } else {
                if (1 == m.c(f36239a)) {
                    k(bVar, "callback");
                    bVar.c(0L, null, n.c(f36239a).q());
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(n.c(f36239a).q());
                    m.f(f36239a, m.a(bg.COMMAND_REGISTER.f21a, arrayList, 0L, null, null));
                }
                w.h(f36239a).m();
                if (n.c(f36239a).k()) {
                    dt dtVar = new dt();
                    dtVar.b(n.c(f36239a).d());
                    dtVar.c(df.ClientInfoUpdate.f42a);
                    dtVar.a(com.xiaomi.push.service.x.a());
                    HashMap hashMap = new HashMap();
                    dtVar.f179a = hashMap;
                    Context context4 = f36239a;
                    hashMap.put("app_version", com.xiaomi.channel.commonutils.android.a.g(context4, context4.getPackageName()));
                    Map<String, String> map = dtVar.f179a;
                    Context context5 = f36239a;
                    map.put(TPDownloadProxyEnum.USER_APP_VERSION_CODE, Integer.toString(com.xiaomi.channel.commonutils.android.a.b(context5, context5.getPackageName())));
                    dtVar.f179a.put("push_sdk_vn", "5_0_6-G");
                    dtVar.f179a.put("push_sdk_vc", Integer.toString(50006));
                    String v10 = n.c(f36239a).v();
                    if (!TextUtils.isEmpty(v10)) {
                        dtVar.f179a.put("deviceid", v10);
                    }
                    w.h(f36239a).w(dtVar, cz.Notification, false, null);
                }
                if (c0(f36239a) && a0(f36239a)) {
                    dt dtVar2 = new dt();
                    dtVar2.b(n.c(f36239a).d());
                    dtVar2.c(df.PullOfflineMessage.f42a);
                    dtVar2.a(com.xiaomi.push.service.x.a());
                    dtVar2.a(false);
                    w.h(f36239a).x(dtVar2, cz.Notification, false, null, false);
                    g(f36239a);
                }
            }
            h(f36239a);
            U();
            if (!f36239a.getPackageName().equals("com.xiaomi.xmsf")) {
                if (h.a() != null) {
                    h.c(f36239a, h.a());
                }
                tf.c.f(2);
            }
            F(context);
        } catch (Throwable th2) {
            tf.c.o(th2);
        }
    }

    private static void F(Context context) {
        if ("syncing".equals(x0.b(f36239a).c(am.DISABLE_PUSH))) {
            s(f36239a);
        }
        if ("syncing".equals(x0.b(f36239a).c(am.ENABLE_PUSH))) {
            t(f36239a);
        }
        if ("syncing".equals(x0.b(f36239a).c(am.UPLOAD_HUAWEI_TOKEN))) {
            h0(f36239a);
        }
        if ("syncing".equals(x0.b(f36239a).c(am.UPLOAD_FCM_TOKEN))) {
            f0(f36239a);
        }
        if ("syncing".equals(x0.b(f36239a).c(am.UPLOAD_COS_TOKEN))) {
            e0(context);
        }
        if ("syncing".equals(x0.b(f36239a).c(am.UPLOAD_FTOS_TOKEN))) {
            g0(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void G(Context context, dj djVar) {
        tf.c.v("re-register reason: " + djVar);
        String a10 = com.xiaomi.push.g.a(6);
        String d10 = n.c(context).d();
        String m10 = n.c(context).m();
        n.c(context).e();
        n(context);
        p(context);
        n.c(context).f(d.a());
        n.c(context).i(d10, m10, a10);
        du duVar = new du();
        duVar.a(com.xiaomi.push.service.x.c());
        duVar.b(d10);
        duVar.e(m10);
        duVar.f(a10);
        duVar.d(context.getPackageName());
        duVar.c(com.xiaomi.channel.commonutils.android.a.g(context, context.getPackageName()));
        duVar.b(com.xiaomi.channel.commonutils.android.a.b(context, context.getPackageName()));
        duVar.h("5_0_6-G");
        duVar.a(50006);
        duVar.a(djVar);
        int a11 = sf.b.a();
        if (a11 >= 0) {
            duVar.c(a11);
        }
        w.h(context).s(duVar, false, false);
    }

    private static void H(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addCategory("android.intent.category.DEFAULT");
            sf.f.a(context.getApplicationContext(), new NetworkStatusReceiver(null), intentFilter);
            sf.f.e(context, NetworkStatusReceiver.class);
        } catch (Throwable th2) {
            tf.c.l("dynamic register network status receiver failed:" + th2);
        }
    }

    public static void I(Context context, String str, String str2) {
        J(context, str, str2, new l());
    }

    public static void J(Context context, String str, String str2, l lVar) {
        K(context, str, str2, lVar, null, null);
    }

    private static void K(Context context, String str, String str2, l lVar, String str3, a aVar) {
        k(context, "context");
        k(str, "appID");
        k(str2, "appToken");
        if (!sf.e.h()) {
            k(f36241c, "region");
        }
        Context applicationContext = context.getApplicationContext();
        f36239a = applicationContext;
        if (applicationContext == null) {
            f36239a = context;
        }
        Context context2 = f36239a;
        sf.j.d(context2);
        if (!NetworkStatusReceiver.a()) {
            H(f36239a);
        }
        f0.e(f36239a).g(lVar);
        f3.b(context2).g(new i(str, str2, str3, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void L(Context context) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("accept_time");
            sf.h.a(edit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void M(Context context, String str) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("account_" + str).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void N(Context context, String str) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("alias_" + str).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void O(Context context) {
        synchronized (j.class) {
            for (String str : x(context)) {
                M(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void P(Context context) {
        synchronized (j.class) {
            for (String str : v(context)) {
                N(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void Q(Context context) {
        synchronized (j.class) {
            for (String str : w(context)) {
                R(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void R(Context context, String str) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("topic_" + str).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void S(Context context, String str, di diVar, String str2, String str3) {
        dt dtVar = new dt();
        if (TextUtils.isEmpty(str3)) {
            tf.c.u("do not report clicked message");
            return;
        }
        dtVar.b(str3);
        dtVar.c("bar:click");
        dtVar.a(str);
        dtVar.a(false);
        w.h(context).z(dtVar, cz.Notification, false, true, diVar, true, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void T(Context context, String str, di diVar, String str2) {
        dt dtVar = new dt();
        if (TextUtils.isEmpty(str2)) {
            if (!n.c(context).p()) {
                tf.c.u("do not report clicked message");
                return;
            }
            str2 = n.c(context).d();
        }
        dtVar.b(str2);
        dtVar.c("bar:click");
        dtVar.a(str);
        dtVar.a(false);
        w.h(context).w(dtVar, cz.Notification, false, diVar);
    }

    private static void U() {
        f3.b(f36239a).j(new w0(f36239a), 86400, 5);
    }

    public static void V(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        W(context, bg.COMMAND_SET_ALIAS.f21a, str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
        if (1 == com.xiaomi.mipush.sdk.m.c(r12)) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        com.xiaomi.mipush.sdk.PushMessageHandler.a(r12, r15, r13, 0, null, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
        com.xiaomi.mipush.sdk.m.f(r12, com.xiaomi.mipush.sdk.m.a(r0.f21a, r6, 0, null, r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
        if (1 == com.xiaomi.mipush.sdk.m.c(r12)) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static void W(android.content.Context r12, java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            boolean r0 = android.text.TextUtils.isEmpty(r14)
            if (r0 != 0) goto Le
            r6.add(r14)
        Le:
            com.xiaomi.push.bg r0 = com.xiaomi.push.bg.COMMAND_SET_ALIAS
            java.lang.String r1 = r0.f21a
            boolean r1 = r1.equalsIgnoreCase(r13)
            r2 = 1
            if (r1 == 0) goto L4e
            long r3 = java.lang.System.currentTimeMillis()
            long r7 = j(r12, r14)
            long r3 = r3 - r7
            long r3 = java.lang.Math.abs(r3)
            r7 = 86400000(0x5265c00, double:4.2687272E-316)
            int r1 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r1 >= 0) goto L4e
            int r14 = com.xiaomi.mipush.sdk.m.c(r12)
            if (r2 != r14) goto L3e
        L33:
            r3 = 0
            r5 = 0
            r0 = r12
            r1 = r15
            r2 = r13
            com.xiaomi.mipush.sdk.PushMessageHandler.a(r0, r1, r2, r3, r5, r6)
            goto Lc7
        L3e:
            java.lang.String r0 = r0.f21a
            r2 = 0
            r4 = 0
            r1 = r6
            r5 = r15
            com.xiaomi.mipush.sdk.MiPushCommandMessage r13 = com.xiaomi.mipush.sdk.m.a(r0, r1, r2, r4, r5)
            com.xiaomi.mipush.sdk.m.f(r12, r13)
            goto Lc7
        L4e:
            com.xiaomi.push.bg r0 = com.xiaomi.push.bg.COMMAND_UNSET_ALIAS
            java.lang.String r0 = r0.f21a
            boolean r0 = r0.equalsIgnoreCase(r13)
            java.lang.String r1 = " is unseted"
            r3 = 3
            r4 = 0
            if (r0 == 0) goto L85
            long r7 = j(r12, r14)
            int r0 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r0 >= 0) goto L85
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "Don't cancel alias for "
        L6c:
            r12.append(r13)
            java.lang.String r13 = r6.toString()
            java.lang.String r13 = com.xiaomi.push.g.c(r13, r3)
            r12.append(r13)
            r12.append(r1)
            java.lang.String r12 = r12.toString()
            tf.c.l(r12)
            goto Lc7
        L85:
            com.xiaomi.push.bg r0 = com.xiaomi.push.bg.COMMAND_SET_ACCOUNT
            java.lang.String r7 = r0.f21a
            boolean r7 = r7.equalsIgnoreCase(r13)
            if (r7 == 0) goto Laa
            long r7 = java.lang.System.currentTimeMillis()
            long r9 = c(r12, r14)
            long r7 = r7 - r9
            long r7 = java.lang.Math.abs(r7)
            r9 = 3600000(0x36ee80, double:1.7786363E-317)
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 >= 0) goto Laa
            int r14 = com.xiaomi.mipush.sdk.m.c(r12)
            if (r2 != r14) goto L3e
            goto L33
        Laa:
            com.xiaomi.push.bg r0 = com.xiaomi.push.bg.COMMAND_UNSET_ACCOUNT
            java.lang.String r0 = r0.f21a
            boolean r0 = r0.equalsIgnoreCase(r13)
            if (r0 == 0) goto Lc4
            long r7 = c(r12, r14)
            int r14 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r14 >= 0) goto Lc4
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "Don't cancel account for "
            goto L6c
        Lc4:
            X(r12, r13, r6, r15)
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.j.W(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    protected static void X(Context context, String str, ArrayList<String> arrayList, String str2) {
        if (TextUtils.isEmpty(n.c(context).d())) {
            return;
        }
        Cdo cdo = new Cdo();
        String a10 = com.xiaomi.push.service.x.a();
        cdo.a(a10);
        cdo.b(n.c(context).d());
        cdo.c(str);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            cdo.m1446a(it.next());
        }
        cdo.e(str2);
        cdo.d(context.getPackageName());
        tf.c.v("cmd:" + str + ", " + a10);
        w.h(context).u(cdo, cz.Command, null);
    }

    public static void Y(Region region) {
        if (sf.e.h()) {
            return;
        }
        f36241c = region;
    }

    public static void Z(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        W(context, bg.COMMAND_SET_ACCOUNT.f21a, str, str2);
    }

    private static boolean a0(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_pull_notification", -1L)) > 300000;
    }

    private static boolean b0(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_reg_request", -1L)) > 5000;
    }

    public static long c(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        return sharedPreferences.getLong("account_" + str, -1L);
    }

    public static boolean c0(Context context) {
        return w.h(context).H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void d(Context context, String str, String str2) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putString("accept_time", str + "," + str2);
            sf.h.a(edit);
        }
    }

    public static void d0(Context context, String str, String str2) {
        if (TextUtils.isEmpty(n.c(context).d()) || TextUtils.isEmpty(str)) {
            return;
        }
        if (Math.abs(System.currentTimeMillis() - i0(context, str)) <= 86400000) {
            if (1 == m.c(context)) {
                PushMessageHandler.a(context, str2, 0L, null, str);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            m.f(context, m.a(bg.COMMAND_SUBSCRIBE_TOPIC.f21a, arrayList, 0L, null, null));
            return;
        }
        dy dyVar = new dy();
        String a10 = com.xiaomi.push.service.x.a();
        dyVar.a(a10);
        dyVar.b(n.c(context).d());
        dyVar.c(str);
        dyVar.d(context.getPackageName());
        dyVar.e(str2);
        tf.c.v("cmd:" + bg.COMMAND_SUBSCRIBE_TOPIC + ", " + a10);
        w.h(context).u(dyVar, cz.Subscription, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void e(Context context, String str) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putLong("account_" + str, System.currentTimeMillis()).commit();
        }
    }

    public static void e0(Context context) {
        w.h(context).C(null, am.UPLOAD_COS_TOKEN, c.ASSEMBLE_PUSH_COS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void f(Context context, String str) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putLong("alias_" + str, System.currentTimeMillis()).commit();
        }
    }

    public static void f0(Context context) {
        w.h(context).C(null, am.UPLOAD_FCM_TOKEN, c.ASSEMBLE_PUSH_FCM);
    }

    private static void g(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.putLong("last_pull_notification", System.currentTimeMillis());
        sf.h.a(edit);
    }

    public static void g0(Context context) {
        w.h(context).C(null, am.UPLOAD_FTOS_TOKEN, c.ASSEMBLE_PUSH_FTOS);
    }

    private static void h(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.putLong("last_reg_request", System.currentTimeMillis());
        sf.h.a(edit);
    }

    public static void h0(Context context) {
        w.h(context).C(null, am.UPLOAD_HUAWEI_TOKEN, c.ASSEMBLE_PUSH_HUAWEI);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void i(Context context, String str) {
        synchronized (j.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putLong("topic_" + str, System.currentTimeMillis()).commit();
        }
    }

    public static long i0(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        return sharedPreferences.getLong("topic_" + str, -1L);
    }

    public static long j(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        return sharedPreferences.getLong("alias_" + str, -1L);
    }

    public static void j0(Context context) {
        i0.n(context);
        com.xiaomi.push.service.u.c(context).f();
        if (n.c(context).p()) {
            ea eaVar = new ea();
            eaVar.a(com.xiaomi.push.service.x.a());
            eaVar.b(n.c(context).d());
            eaVar.c(n.c(context).q());
            eaVar.e(n.c(context).m());
            eaVar.d(context.getPackageName());
            w.h(context).t(eaVar);
            PushMessageHandler.a();
            PushMessageHandler.b();
            n.c(context).n();
            o(context);
            p(context);
            m(context);
        }
    }

    private static void k(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("param " + str + " is not nullable");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (com.xiaomi.channel.commonutils.android.Region.Global.name().equals(r8) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean l(android.content.Context r7, java.lang.String r8) {
        /*
            android.content.Context r0 = com.xiaomi.mipush.sdk.j.f36239a
            java.lang.String r1 = "mipush_region"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "user_region"
            java.lang.String r3 = ""
            java.lang.String r3 = r0.getString(r1, r3)
            android.content.SharedPreferences$Editor r0 = r0.edit()
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            java.lang.String r5 = "req_hosts"
            r6 = 1
            if (r4 == 0) goto L52
            r0.putString(r1, r8)
            java.lang.String r7 = y(r7)
            boolean r1 = android.text.TextUtils.isEmpty(r7)
            if (r1 != 0) goto L5b
            com.xiaomi.channel.commonutils.android.Region r1 = com.xiaomi.channel.commonutils.android.Region.Europe
            java.lang.String r1 = r1.name()
            boolean r1 = r1.equals(r7)
            if (r1 != 0) goto L5b
            boolean r1 = r7.equals(r8)
            if (r1 != 0) goto L5f
            java.lang.String r1 = "Singapore"
            boolean r7 = r1.equals(r7)
            if (r7 == 0) goto L5b
            com.xiaomi.channel.commonutils.android.Region r7 = com.xiaomi.channel.commonutils.android.Region.Global
            java.lang.String r7 = r7.name()
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L5f
            goto L5b
        L52:
            boolean r7 = r8.equals(r3)
            if (r7 != 0) goto L5f
            r0.putString(r1, r8)
        L5b:
            r0.putBoolean(r5, r6)
            r2 = 1
        L5f:
            r0.apply()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "current register region: "
            r7.append(r0)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            tf.c.l(r7)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.j.l(android.content.Context, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void m(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.clear();
        edit.commit();
    }

    private static void n(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        Iterator<String> it = v(context).iterator();
        while (it.hasNext()) {
            edit.remove("alias_" + it.next());
        }
        Iterator<String> it2 = x(context).iterator();
        while (it2.hasNext()) {
            edit.remove("account_" + it2.next());
        }
        Iterator<String> it3 = w(context).iterator();
        while (it3.hasNext()) {
            edit.remove("topic_" + it3.next());
        }
        edit.remove("accept_time");
        edit.commit();
    }

    public static void o(Context context) {
        w.h(context).X();
    }

    public static void p(Context context) {
        w.h(context).n(-1);
    }

    public static void q(Context context, int i9) {
        w.h(context).n(i9);
    }

    public static void r(Context context, String str, String str2) {
        w.h(context).E(str, str2);
    }

    public static void s(Context context) {
        w.h(context).F(true);
    }

    public static void t(Context context) {
        w.h(context).F(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String u(Context context) {
        return context.getSharedPreferences("mipush_extra", 0).getString("accept_time", "00:00-23:59");
    }

    public static List<String> v(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (str.startsWith("alias_")) {
                arrayList.add(str.substring(6));
            }
        }
        return arrayList;
    }

    public static List<String> w(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (str.startsWith("topic_") && !str.contains("**ALL**")) {
                arrayList.add(str.substring(6));
            }
        }
        return arrayList;
    }

    public static List<String> x(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (str.startsWith("account_")) {
                arrayList.add(str.substring(8));
            }
        }
        return arrayList;
    }

    public static String y(Context context) {
        if (n.c(context).s()) {
            return n.c(context).x();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean z(Context context) {
        k(context, "context");
        return f0.e(context).m(c.ASSEMBLE_PUSH_FCM);
    }
}
