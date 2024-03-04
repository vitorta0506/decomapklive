package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.cd;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.di;
import com.xiaomi.push.dk;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import com.xiaomi.push.ef;
import com.xiaomi.push.ej;
import com.xiaomi.push.service.az;
import java.nio.ByteBuffer;
import java.util.Map;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class f {
    static com.xiaomi.push.r0 a(XMPushService xMPushService, byte[] bArr) {
        dq dqVar = new dq();
        try {
            com.xiaomi.push.h2.c(dqVar, bArr);
            return b(a2.b(xMPushService), xMPushService, dqVar);
        } catch (ej e10) {
            tf.c.o(e10);
            return null;
        }
    }

    static com.xiaomi.push.r0 b(z1 z1Var, Context context, dq dqVar) {
        try {
            com.xiaomi.push.r0 r0Var = new com.xiaomi.push.r0();
            r0Var.g(5);
            r0Var.u(z1Var.f37426a);
            r0Var.r(f(dqVar));
            r0Var.j("SECMSG", "message");
            String str = z1Var.f37426a;
            dqVar.f162a.f91a = str.substring(0, str.indexOf("@"));
            dqVar.f162a.f95c = str.substring(str.indexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
            r0Var.l(com.xiaomi.push.h2.d(dqVar), z1Var.f37428c);
            r0Var.k((short) 1);
            tf.c.l("try send mi push message. packagename:" + dqVar.f167b + " action:" + dqVar.f160a);
            return r0Var;
        } catch (NullPointerException e10) {
            tf.c.o(e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dq c(String str, String str2) {
        dt dtVar = new dt();
        dtVar.b(str2);
        dtVar.c("package uninstalled");
        dtVar.a(com.xiaomi.push.r1.k());
        dtVar.a(false);
        return d(str, str2, dtVar, cz.Notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends ef<T, ?>> dq d(String str, String str2, T t10, cz czVar) {
        return e(str, str2, t10, czVar, true);
    }

    private static <T extends ef<T, ?>> dq e(String str, String str2, T t10, cz czVar, boolean z10) {
        byte[] d10 = com.xiaomi.push.h2.d(t10);
        dq dqVar = new dq();
        dk dkVar = new dk();
        dkVar.f90a = 5L;
        dkVar.f91a = "fakeid";
        dqVar.a(dkVar);
        dqVar.a(ByteBuffer.wrap(d10));
        dqVar.a(czVar);
        dqVar.b(z10);
        dqVar.b(str);
        dqVar.a(false);
        dqVar.a(str2);
        return dqVar;
    }

    private static String f(dq dqVar) {
        Map<String, String> map;
        di diVar = dqVar.f161a;
        if (diVar != null && (map = diVar.f81b) != null) {
            String str = map.get("ext_traffic_source_pkg");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return dqVar.f167b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(String str) {
        return str + ".permission.MIPUSH_RECEIVE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(XMPushService xMPushService) {
        z1 b10 = a2.b(xMPushService.getApplicationContext());
        if (b10 != null) {
            az.b a10 = a2.b(xMPushService.getApplicationContext()).a(xMPushService);
            tf.c.l("prepare account. " + a10.f37141a);
            j(xMPushService, a10);
            az.c().l(a10);
            q0.c(xMPushService).f(new g("GAID", 172800L, xMPushService, b10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(XMPushService xMPushService, dq dqVar) {
        com.xiaomi.push.c1 m1533a = xMPushService.m1533a();
        if (m1533a == null) {
            throw new cd("try send msg while connection is null.");
        }
        if (!m1533a.o()) {
            throw new cd("Don't support XMPP connection.");
        }
        com.xiaomi.push.r0 b10 = b(a2.b(xMPushService), xMPushService, dqVar);
        if (b10 != null) {
            m1533a.t(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(XMPushService xMPushService, az.b bVar) {
        bVar.h(null);
        bVar.i(new h(xMPushService));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(XMPushService xMPushService, String str, byte[] bArr) {
        com.xiaomi.push.c1 m1533a = xMPushService.m1533a();
        if (m1533a == null) {
            throw new cd("try send msg while connection is null.");
        }
        if (!m1533a.o()) {
            throw new cd("Don't support XMPP connection.");
        }
        com.xiaomi.push.r0 a10 = a(xMPushService, bArr);
        if (a10 != null) {
            m1533a.t(a10);
        } else {
            d2.b(xMPushService, str, bArr, 70000003, "not a valid message");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dq l(String str, String str2) {
        dt dtVar = new dt();
        dtVar.b(str2);
        dtVar.c(df.AppDataCleared.f42a);
        dtVar.a(x.a());
        dtVar.a(false);
        return d(str, str2, dtVar, cz.Notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends ef<T, ?>> dq m(String str, String str2, T t10, cz czVar) {
        return e(str, str2, t10, czVar, false);
    }
}
