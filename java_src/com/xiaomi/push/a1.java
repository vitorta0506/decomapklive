package com.xiaomi.push;

import com.facebook.GraphResponse;
import com.xiaomi.push.c1;
import com.xiaomi.push.service.az;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
/* loaded from: classes5.dex */
public class a1 implements m1 {

    /* renamed from: g  reason: collision with root package name */
    public static boolean f36352g = false;

    /* renamed from: b  reason: collision with root package name */
    private c1 f36354b;

    /* renamed from: a  reason: collision with root package name */
    private SimpleDateFormat f36353a = new SimpleDateFormat("hh:mm:ss aaa");

    /* renamed from: c  reason: collision with root package name */
    private a f36355c = null;

    /* renamed from: d  reason: collision with root package name */
    private a f36356d = null;

    /* renamed from: e  reason: collision with root package name */
    private e1 f36357e = null;

    /* renamed from: f  reason: collision with root package name */
    private final String f36358f = "[Slim] ";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements g1, n1 {

        /* renamed from: a  reason: collision with root package name */
        String f36359a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f36360b;

        a(boolean z10) {
            this.f36360b = z10;
            this.f36359a = z10 ? " RCV " : " Sent ";
        }

        @Override // com.xiaomi.push.g1
        public void a(r1 r1Var) {
            StringBuilder sb2;
            String str;
            if (a1.f36352g) {
                sb2 = new StringBuilder();
                sb2.append("[Slim] ");
                sb2.append(a1.this.f36353a.format(new Date()));
                sb2.append(this.f36359a);
                sb2.append(" PKT ");
                str = r1Var.f();
            } else {
                sb2 = new StringBuilder();
                sb2.append("[Slim] ");
                sb2.append(a1.this.f36353a.format(new Date()));
                sb2.append(this.f36359a);
                sb2.append(" PKT [");
                sb2.append(r1Var.m());
                sb2.append(",");
                sb2.append(r1Var.l());
                str = "]";
            }
            sb2.append(str);
            tf.c.t(sb2.toString());
        }

        @Override // com.xiaomi.push.n1
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo1404a(r1 r1Var) {
            return true;
        }

        @Override // com.xiaomi.push.g1
        public void b(r0 r0Var) {
            StringBuilder sb2;
            String str;
            if (a1.f36352g) {
                sb2 = new StringBuilder();
                sb2.append("[Slim] ");
                sb2.append(a1.this.f36353a.format(new Date()));
                sb2.append(this.f36359a);
                str = r0Var.toString();
            } else {
                sb2 = new StringBuilder();
                sb2.append("[Slim] ");
                sb2.append(a1.this.f36353a.format(new Date()));
                sb2.append(this.f36359a);
                sb2.append(" Blob [");
                sb2.append(r0Var.d());
                sb2.append(",");
                sb2.append(r0Var.a());
                sb2.append(",");
                sb2.append(com.xiaomi.push.service.x.b(r0Var.w()));
                str = "]";
            }
            sb2.append(str);
            tf.c.t(sb2.toString());
            if (r0Var == null || r0Var.a() != 99999) {
                return;
            }
            String d10 = r0Var.d();
            r0 r0Var2 = null;
            if (!this.f36360b) {
                if ("BIND".equals(d10)) {
                    tf.c.l("build binded result for loopback.");
                    z zVar = new z();
                    zVar.l(true);
                    zVar.s("login success.");
                    zVar.p(GraphResponse.SUCCESS_KEY);
                    zVar.k(GraphResponse.SUCCESS_KEY);
                    r0 r0Var3 = new r0();
                    r0Var3.l(zVar.h(), null);
                    r0Var3.k((short) 2);
                    r0Var3.g(99999);
                    r0Var3.j("BIND", null);
                    r0Var3.i(r0Var.w());
                    r0Var3.r(null);
                    r0Var3.u(r0Var.y());
                    r0Var2 = r0Var3;
                } else if (!"UBND".equals(d10) && "SECMSG".equals(d10)) {
                    r0 r0Var4 = new r0();
                    r0Var4.g(99999);
                    r0Var4.j("SECMSG", null);
                    r0Var4.u(r0Var.y());
                    r0Var4.i(r0Var.w());
                    r0Var4.k(r0Var.f());
                    r0Var4.r(r0Var.x());
                    r0Var4.l(r0Var.o(az.c().b(String.valueOf(99999), r0Var.y()).f37149i), null);
                    r0Var2 = r0Var4;
                }
            }
            if (r0Var2 != null) {
                for (Map.Entry<g1, c1.a> entry : a1.this.f36354b.e().entrySet()) {
                    if (a1.this.f36355c != entry.getKey()) {
                        entry.getValue().a(r0Var2);
                    }
                }
            }
        }
    }

    public a1(c1 c1Var) {
        this.f36354b = c1Var;
        d();
    }

    private void d() {
        this.f36355c = new a(true);
        this.f36356d = new a(false);
        c1 c1Var = this.f36354b;
        a aVar = this.f36355c;
        c1Var.i(aVar, aVar);
        c1 c1Var2 = this.f36354b;
        a aVar2 = this.f36356d;
        c1Var2.v(aVar2, aVar2);
        this.f36357e = new b1(this);
    }
}
