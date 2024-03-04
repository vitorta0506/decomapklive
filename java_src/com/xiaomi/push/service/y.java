package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.push.service.az;
/* loaded from: classes5.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private XMPushService f37420a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(XMPushService xMPushService) {
        this.f37420a = xMPushService;
    }

    private void b(com.xiaomi.push.o1 o1Var) {
        String k10 = o1Var.k();
        if (TextUtils.isEmpty(k10)) {
            return;
        }
        String[] split = k10.split(";");
        com.xiaomi.push.i b10 = com.xiaomi.push.m.c().b(com.xiaomi.push.d1.b(), false);
        if (b10 == null || split.length <= 0) {
            return;
        }
        b10.o(split);
        this.f37420a.a(20, (Exception) null);
        this.f37420a.a(true);
    }

    private void e(com.xiaomi.push.r1 r1Var) {
        az.b b10;
        String o10 = r1Var.o();
        String m10 = r1Var.m();
        if (TextUtils.isEmpty(o10) || TextUtils.isEmpty(m10) || (b10 = az.c().b(m10, o10)) == null) {
            return;
        }
        com.xiaomi.push.e2.j(this.f37420a, b10.f37141a, com.xiaomi.push.e2.b(r1Var.f()), true, true, System.currentTimeMillis());
    }

    private void f(com.xiaomi.push.r0 r0Var) {
        az.b b10;
        String y10 = r0Var.y();
        String num = Integer.toString(r0Var.a());
        if (TextUtils.isEmpty(y10) || TextUtils.isEmpty(num) || (b10 = az.c().b(num, y10)) == null) {
            return;
        }
        com.xiaomi.push.e2.j(this.f37420a, b10.f37141a, r0Var.s(), true, true, System.currentTimeMillis());
    }

    public void a(com.xiaomi.push.r0 r0Var) {
        if (5 != r0Var.a()) {
            f(r0Var);
        }
        try {
            d(r0Var);
        } catch (Exception e10) {
            tf.c.n("handle Blob chid = " + r0Var.a() + " cmd = " + r0Var.d() + " packetid = " + r0Var.w() + " failure ", e10);
        }
    }

    public void c(com.xiaomi.push.r1 r1Var) {
        if (!"5".equals(r1Var.m())) {
            e(r1Var);
        }
        String m10 = r1Var.m();
        if (TextUtils.isEmpty(m10)) {
            m10 = "1";
            r1Var.p("1");
        }
        if (m10.equals("0")) {
            tf.c.l("Received wrong packet with chid = 0 : " + r1Var.f());
        }
        if (r1Var instanceof com.xiaomi.push.p1) {
            com.xiaomi.push.o1 b10 = r1Var.b("kick");
            if (b10 != null) {
                String o10 = r1Var.o();
                String f10 = b10.f("type");
                String f11 = b10.f("reason");
                tf.c.l("kicked by server, chid=" + m10 + " res=" + az.b.e(o10) + " type=" + f10 + " reason=" + f11);
                if (!"wait".equals(f10)) {
                    this.f37420a.a(m10, o10, 3, f11, f10);
                    az.c().n(m10, o10);
                    return;
                }
                az.b b11 = az.c().b(m10, o10);
                if (b11 != null) {
                    this.f37420a.a(b11);
                    b11.k(az.c.unbind, 3, 0, f11, f10);
                    return;
                }
                return;
            }
        } else if (r1Var instanceof com.xiaomi.push.q1) {
            com.xiaomi.push.q1 q1Var = (com.xiaomi.push.q1) r1Var;
            if ("redir".equals(q1Var.B())) {
                com.xiaomi.push.o1 b12 = q1Var.b("hosts");
                if (b12 != null) {
                    b(b12);
                    return;
                }
                return;
            }
        }
        this.f37420a.m1538b().j(this.f37420a, m10, r1Var);
    }

    public void d(com.xiaomi.push.r0 r0Var) {
        StringBuilder sb2;
        String n9;
        String str;
        az.c cVar;
        int i9;
        int i10;
        String d10 = r0Var.d();
        if (r0Var.a() != 0) {
            String num = Integer.toString(r0Var.a());
            if (!"SECMSG".equals(r0Var.d())) {
                if (!"BIND".equals(d10)) {
                    if ("KICK".equals(d10)) {
                        com.xiaomi.push.c0 l10 = com.xiaomi.push.c0.l(r0Var.n());
                        String y10 = r0Var.y();
                        String m10 = l10.m();
                        String p10 = l10.p();
                        tf.c.l("kicked by server, chid=" + num + " res= " + az.b.e(y10) + " type=" + m10 + " reason=" + p10);
                        if (!"wait".equals(m10)) {
                            this.f37420a.a(num, y10, 3, p10, m10);
                            az.c().n(num, y10);
                            return;
                        }
                        az.b b10 = az.c().b(num, y10);
                        if (b10 != null) {
                            this.f37420a.a(b10);
                            b10.k(az.c.unbind, 3, 0, p10, m10);
                            return;
                        }
                        return;
                    }
                    return;
                }
                com.xiaomi.push.z m11 = com.xiaomi.push.z.m(r0Var.n());
                String y11 = r0Var.y();
                az.b b11 = az.c().b(num, y11);
                if (b11 == null) {
                    return;
                }
                if (m11.o()) {
                    tf.c.l("SMACK: channel bind succeeded, chid=" + r0Var.a());
                    b11.k(az.c.binded, 1, 0, null, null);
                    return;
                }
                String n10 = m11.n();
                if ("auth".equals(n10)) {
                    if ("invalid-sig".equals(m11.q())) {
                        tf.c.l("SMACK: bind error invalid-sig token = " + b11.f37143c + " sec = " + b11.f37149i);
                    }
                    cVar = az.c.unbind;
                    i9 = 1;
                    i10 = 5;
                } else if (!"cancel".equals(n10)) {
                    if ("wait".equals(n10)) {
                        this.f37420a.a(b11);
                        b11.k(az.c.unbind, 1, 7, m11.q(), n10);
                    }
                    str = "SMACK: channel bind failed, chid=" + num + " reason=" + m11.q();
                    tf.c.l(str);
                } else {
                    cVar = az.c.unbind;
                    i9 = 1;
                    i10 = 7;
                }
                b11.k(cVar, i9, i10, m11.q(), n10);
                az.c().n(num, y11);
                str = "SMACK: channel bind failed, chid=" + num + " reason=" + m11.q();
                tf.c.l(str);
            } else if (!r0Var.m()) {
                this.f37420a.m1538b().i(this.f37420a, num, r0Var);
                return;
            } else {
                sb2 = new StringBuilder();
                sb2.append("Recv SECMSG errCode = ");
                sb2.append(r0Var.p());
                sb2.append(" errStr = ");
                n9 = r0Var.t();
            }
        } else if ("PING".equals(d10)) {
            byte[] n11 = r0Var.n();
            if (n11 != null && n11.length > 0) {
                com.xiaomi.push.f0 o10 = com.xiaomi.push.f0.o(n11);
                if (o10.q()) {
                    o0.e().i(o10.k());
                }
            }
            if (!"com.xiaomi.xmsf".equals(this.f37420a.getPackageName())) {
                this.f37420a.m1535a();
            }
            if ("1".equals(r0Var.w())) {
                tf.c.l("received a server ping");
            }
            this.f37420a.m1539b();
            return;
        } else if ("SYNC".equals(d10)) {
            if ("CONF".equals(r0Var.q())) {
                o0.e().i(com.xiaomi.push.x.m(r0Var.n()));
                return;
            } else if (TextUtils.equals("U", r0Var.q())) {
                com.xiaomi.push.r0 r0Var2 = new com.xiaomi.push.r0();
                r0Var2.g(0);
                r0Var2.j(r0Var.d(), "UCA");
                r0Var2.i(r0Var.w());
                XMPushService xMPushService = this.f37420a;
                xMPushService.a(new m0(xMPushService, r0Var2));
                return;
            } else if (!TextUtils.equals("P", r0Var.q())) {
                return;
            } else {
                com.xiaomi.push.e0 m12 = com.xiaomi.push.e0.m(r0Var.n());
                com.xiaomi.push.r0 r0Var3 = new com.xiaomi.push.r0();
                r0Var3.g(0);
                r0Var3.j(r0Var.d(), "PCA");
                r0Var3.i(r0Var.w());
                com.xiaomi.push.e0 e0Var = new com.xiaomi.push.e0();
                if (m12.n()) {
                    e0Var.k(m12.j());
                }
                r0Var3.l(e0Var.h(), null);
                XMPushService xMPushService2 = this.f37420a;
                xMPushService2.a(new m0(xMPushService2, r0Var3));
                sb2 = new StringBuilder();
                sb2.append("ACK msgP: id = ");
                n9 = r0Var.w();
            }
        } else if (!"NOTIFY".equals(r0Var.d())) {
            return;
        } else {
            com.xiaomi.push.d0 m13 = com.xiaomi.push.d0.m(r0Var.n());
            sb2 = new StringBuilder();
            sb2.append("notify by server err = ");
            sb2.append(m13.q());
            sb2.append(" desc = ");
            n9 = m13.n();
        }
        sb2.append(n9);
        str = sb2.toString();
        tf.c.l(str);
    }
}
