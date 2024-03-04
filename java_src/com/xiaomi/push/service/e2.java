package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.xiaomi.push.cd;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.di;
import com.xiaomi.push.dl;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import com.xiaomi.push.service.az;
import com.xiaomi.push.service.i;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class e2 {
    public static Intent a(byte[] bArr, long j10) {
        dq d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mrt", Long.toString(j10));
        intent.setPackage(d10.f167b);
        return intent;
    }

    public static dq b(Context context, dq dqVar) {
        return c(context, dqVar, null);
    }

    public static dq c(Context context, dq dqVar, Map<String, String> map) {
        dl dlVar = new dl();
        dlVar.b(dqVar.m1456a());
        di m1455a = dqVar.m1455a();
        if (m1455a != null) {
            dlVar.a(m1455a.m1424a());
            dlVar.a(m1455a.m1422a());
            if (!TextUtils.isEmpty(m1455a.m1429b())) {
                dlVar.c(m1455a.m1429b());
            }
        }
        dlVar.a(com.xiaomi.push.h2.a(context, dqVar));
        dq d10 = f.d(dqVar.b(), dqVar.m1456a(), dlVar, cz.AckMessage);
        di m1455a2 = dqVar.m1455a();
        if (m1455a2 != null) {
            m1455a2 = k0.a(m1455a2.m1423a());
        }
        m1455a2.a("mat", Long.toString(System.currentTimeMillis()));
        if (map != null) {
            try {
                if (map.size() > 0) {
                    for (String str : map.keySet()) {
                        m1455a2.a(str, map.get(str));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        d10.a(m1455a2);
        return d10;
    }

    public static dq d(byte[] bArr) {
        dq dqVar = new dq();
        try {
            com.xiaomi.push.h2.c(dqVar, bArr);
            return dqVar;
        } catch (Throwable th2) {
            tf.c.o(th2);
            return null;
        }
    }

    public static void e(Context context, dq dqVar, byte[] bArr) {
        try {
            i.t(dqVar);
            dqVar.m1455a();
            i.c r10 = i.r(context, dqVar, bArr);
            if (r10.f37267b > 0 && !TextUtils.isEmpty(r10.f37266a)) {
                com.xiaomi.push.e2.j(context, r10.f37266a, r10.f37267b, true, false, System.currentTimeMillis());
            }
            if (!sf.e.i(context) || !e.e(context, dqVar, r10.f37268c)) {
                t(context, dqVar, bArr);
                return;
            }
            e.b(context, dqVar);
            tf.c.l("consume this broadcast by tts");
        } catch (Exception e10) {
            tf.c.l("notify push msg error " + e10);
            e10.printStackTrace();
        }
    }

    private static void i(XMPushService xMPushService, dq dqVar) {
        xMPushService.a(new f2(4, xMPushService, dqVar));
    }

    private static void j(XMPushService xMPushService, dq dqVar, dt dtVar) {
        xMPushService.a(new d(4, dtVar, dqVar, xMPushService));
    }

    private static void k(XMPushService xMPushService, dq dqVar, String str) {
        xMPushService.a(new i2(4, xMPushService, dqVar, str));
    }

    private static void l(XMPushService xMPushService, dq dqVar, String str, String str2) {
        xMPushService.a(new c(4, xMPushService, dqVar, str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x022b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m(com.xiaomi.push.service.XMPushService r12, java.lang.String r13, byte[] r14, android.content.Intent r15) {
        /*
            Method dump skipped, instructions count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.e2.m(com.xiaomi.push.service.XMPushService, java.lang.String, byte[], android.content.Intent):void");
    }

    private static void n(XMPushService xMPushService, byte[] bArr, long j10) {
        Map<String, String> m1425a;
        String m1424a;
        dq d10 = d(bArr);
        if (d10 == null) {
            return;
        }
        if (TextUtils.isEmpty(d10.f167b)) {
            tf.c.l("receive a mipush message without package name");
            return;
        }
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        Intent a10 = a(bArr, valueOf.longValue());
        String t10 = i.t(d10);
        com.xiaomi.push.e2.j(xMPushService, t10, j10, true, true, System.currentTimeMillis());
        di m1455a = d10.m1455a();
        if (m1455a != null && m1455a.m1424a() != null) {
            tf.c.v(String.format("receive a message. appid=%1$s, msgid= %2$s, action=%3$s", d10.m1456a(), x.b(m1455a.m1424a()), d10.a()));
        }
        if (m1455a != null) {
            m1455a.a("mrt", Long.toString(valueOf.longValue()));
        }
        cz czVar = cz.SendMessage;
        if (czVar == d10.a() && b2.a(xMPushService).c(d10.f167b) && !i.J(d10)) {
            m1424a = m1455a != null ? m1455a.m1424a() : "";
            tf.c.l("Drop a message for unregistered, msgid=" + m1424a);
            k(xMPushService, d10, d10.f167b);
        } else if (czVar == d10.a() && b2.a(xMPushService).g(d10.f167b) && !i.J(d10)) {
            m1424a = m1455a != null ? m1455a.m1424a() : "";
            tf.c.l("Drop a message for push closed, msgid=" + m1424a);
            k(xMPushService, d10, d10.f167b);
        } else if (czVar != d10.a() || TextUtils.equals(xMPushService.getPackageName(), "com.xiaomi.xmsf") || TextUtils.equals(xMPushService.getPackageName(), d10.f167b)) {
            if (m1455a == null || (m1425a = m1455a.m1425a()) == null || !m1425a.containsKey("hide") || !ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(m1425a.get("hide"))) {
                m(xMPushService, t10, bArr, a10);
            } else {
                i(xMPushService, d10);
            }
        } else {
            tf.c.l("Receive a message with wrong package name, expect " + xMPushService.getPackageName() + ", received " + d10.f167b);
            l(xMPushService, d10, "unmatched_package", "package should be " + xMPushService.getPackageName() + ", but got " + d10.f167b);
        }
    }

    private static boolean o(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (queryBroadcastReceivers != null) {
                if (!queryBroadcastReceivers.isEmpty()) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    private static boolean p(Context context, String str) {
        Intent intent = new Intent("com.xiaomi.mipush.miui.CLICK_MESSAGE");
        intent.setPackage(str);
        Intent intent2 = new Intent("com.xiaomi.mipush.miui.RECEIVE_MESSAGE");
        intent2.setPackage(str);
        PackageManager packageManager = context.getPackageManager();
        try {
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 32);
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 32);
            if (queryBroadcastReceivers.isEmpty()) {
                if (queryIntentServices.isEmpty()) {
                    return false;
                }
            }
            return true;
        } catch (Exception e10) {
            tf.c.o(e10);
            return false;
        }
    }

    public static boolean q(Context context, String str, byte[] bArr) {
        if (com.xiaomi.channel.commonutils.android.a.h(context, str)) {
            Intent intent = new Intent("com.xiaomi.mipush.MESSAGE_ARRIVED");
            intent.putExtra("mipush_payload", bArr);
            intent.setPackage(str);
            try {
                if (context.getPackageManager().queryBroadcastReceivers(intent, 0).isEmpty()) {
                    return false;
                }
                tf.c.l("broadcast message arrived.");
                context.sendBroadcast(intent, f.g(str));
                return true;
            } catch (Exception e10) {
                tf.c.l("meet error when broadcast message arrived. " + e10);
                return false;
            }
        }
        return false;
    }

    private static boolean r(dq dqVar) {
        return "com.xiaomi.xmsf".equals(dqVar.f167b) && dqVar.m1455a() != null && dqVar.m1455a().m1425a() != null && dqVar.m1455a().m1425a().containsKey("miui_package_name");
    }

    private static boolean s(XMPushService xMPushService, String str, dq dqVar, di diVar) {
        boolean z10 = true;
        if (diVar != null && diVar.m1425a() != null && diVar.m1425a().containsKey("__check_alive") && diVar.m1425a().containsKey("__awake")) {
            dt dtVar = new dt();
            dtVar.b(dqVar.m1456a());
            dtVar.d(str);
            dtVar.c(df.AwakeSystemApp.f42a);
            dtVar.a(diVar.m1424a());
            dtVar.f179a = new HashMap();
            boolean h10 = com.xiaomi.channel.commonutils.android.a.h(xMPushService.getApplicationContext(), str);
            dtVar.f179a.put("app_running", Boolean.toString(h10));
            if (!h10) {
                boolean parseBoolean = Boolean.parseBoolean(diVar.m1425a().get("__awake"));
                dtVar.f179a.put("awaked", Boolean.toString(parseBoolean));
                if (!parseBoolean) {
                    z10 = false;
                }
            }
            try {
                f.i(xMPushService, f.d(dqVar.b(), dqVar.m1456a(), dtVar, cz.Notification));
            } catch (cd e10) {
                tf.c.o(e10);
            }
        }
        return z10;
    }

    private static void t(Context context, dq dqVar, byte[] bArr) {
        if (i.J(dqVar)) {
            return;
        }
        String t10 = i.t(dqVar);
        if (TextUtils.isEmpty(t10)) {
            return;
        }
        q(context, t10, bArr);
    }

    private static void u(XMPushService xMPushService, dq dqVar) {
        xMPushService.a(new g2(4, xMPushService, dqVar));
    }

    private static boolean v(dq dqVar) {
        Map<String, String> m1425a = dqVar.m1455a().m1425a();
        return m1425a != null && m1425a.containsKey("notify_effect");
    }

    private static void w(XMPushService xMPushService, dq dqVar) {
        xMPushService.a(new h2(4, xMPushService, dqVar));
    }

    private static boolean x(dq dqVar) {
        if (dqVar.m1455a() == null || dqVar.m1455a().m1425a() == null) {
            return false;
        }
        return "1".equals(dqVar.m1455a().m1425a().get("obslete_ads_message"));
    }

    public void f(Context context, az.b bVar, boolean z10, int i9, String str) {
        z1 b10;
        if (z10 || (b10 = a2.b(context)) == null || !"token-expired".equals(str)) {
            return;
        }
        a2.c(context, b10.f37431f, b10.f37429d, b10.f37430e);
    }

    public void g(XMPushService xMPushService, com.xiaomi.push.r0 r0Var, az.b bVar) {
        try {
            n(xMPushService, r0Var.o(bVar.f37149i), r0Var.s());
        } catch (IllegalArgumentException e10) {
            tf.c.o(e10);
        }
    }

    public void h(XMPushService xMPushService, com.xiaomi.push.r1 r1Var, az.b bVar) {
        if (!(r1Var instanceof com.xiaomi.push.q1)) {
            tf.c.l("not a mipush message");
            return;
        }
        com.xiaomi.push.q1 q1Var = (com.xiaomi.push.q1) r1Var;
        com.xiaomi.push.o1 b10 = q1Var.b(NotifyType.SOUND);
        if (b10 != null) {
            try {
                n(xMPushService, i0.h(i0.g(bVar.f37149i, q1Var.l()), b10.k()), com.xiaomi.push.e2.b(r1Var.f()));
            } catch (IllegalArgumentException e10) {
                tf.c.o(e10);
            }
        }
    }
}
