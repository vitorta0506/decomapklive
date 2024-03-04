package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.push.cl;
import com.xiaomi.push.service.az;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class s1 {

    /* renamed from: a  reason: collision with root package name */
    private e2 f37364a = new e2();

    public static String c(az.b bVar) {
        StringBuilder sb2;
        String str;
        if ("9".equals(bVar.f37148h)) {
            sb2 = new StringBuilder();
            sb2.append(bVar.f37141a);
            str = ".permission.MIMC_RECEIVE";
        } else {
            sb2 = new StringBuilder();
            sb2.append(bVar.f37141a);
            str = ".permission.MIPUSH_RECEIVE";
        }
        sb2.append(str);
        return sb2.toString();
    }

    private static void e(Context context, Intent intent, az.b bVar) {
        if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
            context.sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent, c(bVar));
        }
    }

    az.b a(com.xiaomi.push.r0 r0Var) {
        Collection<az.b> f10 = az.c().f(Integer.toString(r0Var.a()));
        if (f10.isEmpty()) {
            return null;
        }
        Iterator<az.b> it = f10.iterator();
        if (f10.size() == 1) {
            return it.next();
        }
        String y10 = r0Var.y();
        while (it.hasNext()) {
            az.b next = it.next();
            if (TextUtils.equals(y10, next.f37142b)) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.xiaomi.push.service.az.b b(com.xiaomi.push.r1 r6) {
        /*
            r5 = this;
            com.xiaomi.push.service.az r0 = com.xiaomi.push.service.az.c()
            java.lang.String r1 = r6.m()
            java.util.Collection r0 = r0.f(r1)
            boolean r1 = r0.isEmpty()
            r2 = 0
            if (r1 == 0) goto L14
            return r2
        L14:
            java.util.Iterator r1 = r0.iterator()
            int r0 = r0.size()
            r3 = 1
            if (r0 != r3) goto L26
            java.lang.Object r6 = r1.next()
            com.xiaomi.push.service.az$b r6 = (com.xiaomi.push.service.az.b) r6
            return r6
        L26:
            java.lang.String r0 = r6.q()
            java.lang.String r6 = r6.o()
        L2e:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L4b
            java.lang.Object r3 = r1.next()
            com.xiaomi.push.service.az$b r3 = (com.xiaomi.push.service.az.b) r3
            java.lang.String r4 = r3.f37142b
            boolean r4 = android.text.TextUtils.equals(r0, r4)
            if (r4 != 0) goto L4a
            java.lang.String r4 = r3.f37142b
            boolean r4 = android.text.TextUtils.equals(r6, r4)
            if (r4 == 0) goto L2e
        L4a:
            return r3
        L4b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.s1.b(com.xiaomi.push.r1):com.xiaomi.push.service.az$b");
    }

    public void d(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.service_started");
        if (sf.e.o()) {
            intent.addFlags(16777216);
        }
        tf.c.l("[Bcst] send ***.push.service_started broadcast to inform push service has started.");
        context.sendBroadcast(intent);
    }

    public void f(Context context, az.b bVar, int i9) {
        if ("5".equalsIgnoreCase(bVar.f37148h)) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.channel_closed");
        intent.setPackage(bVar.f37141a);
        intent.putExtra(e0.f37229r, bVar.f37148h);
        intent.putExtra("ext_reason", i9);
        intent.putExtra(e0.f37226o, bVar.f37142b);
        intent.putExtra(e0.C, bVar.f37150j);
        if (bVar.f37158r == null || !"9".equals(bVar.f37148h)) {
            tf.c.l(String.format("[Bcst] notify channel closed. %s,%s,%d", bVar.f37148h, bVar.f37141a, Integer.valueOf(i9)));
            e(context, intent, bVar);
            return;
        }
        try {
            bVar.f37158r.send(Message.obtain(null, 17, intent));
        } catch (RemoteException unused) {
            bVar.f37158r = null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("peer may died: ");
            String str = bVar.f37142b;
            sb2.append(str.substring(str.lastIndexOf(64)));
            tf.c.l(sb2.toString());
        }
    }

    public void g(Context context, az.b bVar, String str, String str2) {
        if (bVar == null) {
            tf.c.u("error while notify kick by server!");
        } else if ("5".equalsIgnoreCase(bVar.f37148h)) {
            tf.c.u("mipush kicked by server");
        } else {
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.kicked");
            intent.setPackage(bVar.f37141a);
            intent.putExtra("ext_kick_type", str);
            intent.putExtra("ext_kick_reason", str2);
            intent.putExtra("ext_chid", bVar.f37148h);
            intent.putExtra(e0.f37226o, bVar.f37142b);
            intent.putExtra(e0.C, bVar.f37150j);
            tf.c.l(String.format("[Bcst] notify packet(blob) arrival. %s,%s,%s", bVar.f37148h, bVar.f37141a, str2));
            e(context, intent, bVar);
        }
    }

    public void h(Context context, az.b bVar, boolean z10, int i9, String str) {
        if ("5".equalsIgnoreCase(bVar.f37148h)) {
            this.f37364a.f(context, bVar, z10, i9, str);
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.channel_opened");
        intent.setPackage(bVar.f37141a);
        intent.putExtra("ext_succeeded", z10);
        if (!z10) {
            intent.putExtra("ext_reason", i9);
        }
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("ext_reason_msg", str);
        }
        intent.putExtra("ext_chid", bVar.f37148h);
        intent.putExtra(e0.f37226o, bVar.f37142b);
        intent.putExtra(e0.C, bVar.f37150j);
        tf.c.l(String.format("[Bcst] notify channel open result. %s,%s,%b,%d", bVar.f37148h, bVar.f37141a, Boolean.valueOf(z10), Integer.valueOf(i9)));
        e(context, intent, bVar);
    }

    public void i(XMPushService xMPushService, String str, com.xiaomi.push.r0 r0Var) {
        az.b a10 = a(r0Var);
        if (a10 == null) {
            tf.c.u("error while notify channel closed! channel " + str + " not registered");
        } else if ("5".equalsIgnoreCase(str)) {
            this.f37364a.g(xMPushService, r0Var, a10);
        } else {
            String str2 = a10.f37141a;
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.new_msg");
            intent.setPackage(str2);
            intent.putExtra("ext_rcv_timestamp", SystemClock.elapsedRealtime());
            intent.putExtra("ext_chid", str);
            intent.putExtra("ext_raw_packet", r0Var.o(a10.f37149i));
            intent.putExtra(e0.C, a10.f37150j);
            intent.putExtra(e0.f37232u, a10.f37149i);
            if (a10.f37158r != null) {
                try {
                    a10.f37158r.send(Message.obtain(null, 17, intent));
                    tf.c.l("message was sent by messenger for chid=" + str);
                    return;
                } catch (RemoteException unused) {
                    a10.f37158r = null;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("peer may died: ");
                    String str3 = a10.f37142b;
                    sb2.append(str3.substring(str3.lastIndexOf(64)));
                    tf.c.l(sb2.toString());
                }
            }
            if ("com.xiaomi.xmsf".equals(str2)) {
                return;
            }
            tf.c.l(String.format("[Bcst] notify packet(blob) arrival. %s,%s,%s", a10.f37148h, a10.f37141a, r0Var.w()));
            e(xMPushService, intent, a10);
        }
    }

    public void j(XMPushService xMPushService, String str, com.xiaomi.push.r1 r1Var) {
        String str2;
        String str3;
        az.b b10 = b(r1Var);
        if (b10 != null) {
            if ("5".equalsIgnoreCase(str)) {
                this.f37364a.h(xMPushService, r1Var, b10);
                return;
            }
            String str4 = b10.f37141a;
            if (r1Var instanceof com.xiaomi.push.q1) {
                str3 = "com.xiaomi.push.new_msg";
            } else if (r1Var instanceof com.xiaomi.push.p1) {
                str3 = "com.xiaomi.push.new_iq";
            } else if (r1Var instanceof cl) {
                str3 = "com.xiaomi.push.new_pres";
            } else {
                str2 = "unknown packet type, drop it";
            }
            Intent intent = new Intent();
            intent.setAction(str3);
            intent.setPackage(str4);
            intent.putExtra("ext_chid", str);
            intent.putExtra("ext_packet", r1Var.a());
            intent.putExtra(e0.C, b10.f37150j);
            intent.putExtra(e0.f37232u, b10.f37149i);
            tf.c.l(String.format("[Bcst] notify packet arrival. %s,%s,%s", b10.f37148h, b10.f37141a, r1Var.l()));
            e(xMPushService, intent, b10);
            return;
        }
        str2 = "error while notify channel closed! channel " + str + " not registered";
        tf.c.u(str2);
    }
}
