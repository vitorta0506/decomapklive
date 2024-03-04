package yk;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import oj.v;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.o;
import org.bouncycastle.pqc.crypto.xmss.p;
import org.bouncycastle.pqc.crypto.xmss.r;
import org.bouncycastle.pqc.crypto.xmss.u;
import org.bouncycastle.pqc.crypto.xmss.w;
import pk.i;
import pk.j;
import pk.k;
import rk.l;
/* loaded from: classes7.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Map f60275a;

    /* loaded from: classes7.dex */
    private static class b extends f {
        private b() {
            super();
        }

        @Override // yk.c.f
        vj.a a(v vVar, Object obj) throws IOException {
            byte[] M = o.K(vVar.F()).M();
            if (org.bouncycastle.util.g.a(M, 0) == 1) {
                return l.b(org.bouncycastle.util.a.m(M, 4, M.length));
            }
            if (M.length == 64) {
                M = org.bouncycastle.util.a.m(M, 4, M.length);
            }
            return rk.d.b(M);
        }
    }

    /* renamed from: yk.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    private static class C0701c extends f {
        private C0701c() {
            super();
        }

        @Override // yk.c.f
        vj.a a(v vVar, Object obj) throws IOException {
            return new tk.b(vVar.B().L());
        }
    }

    /* loaded from: classes7.dex */
    private static class d extends f {
        private d() {
            super();
        }

        @Override // yk.c.f
        vj.a a(v vVar, Object obj) throws IOException {
            return new uk.b(yk.e.c(vVar.x()), vVar.B().M());
        }
    }

    /* loaded from: classes7.dex */
    private static class e extends f {
        private e() {
            super();
        }

        @Override // yk.c.f
        vj.a a(v vVar, Object obj) throws IOException {
            return new xk.c(vVar.B().L(), yk.e.e(i.x(vVar.x().B())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static abstract class f {
        private f() {
        }

        abstract vj.a a(v vVar, Object obj) throws IOException;
    }

    /* loaded from: classes7.dex */
    private static class g extends f {
        private g() {
            super();
        }

        @Override // yk.c.f
        vj.a a(v vVar, Object obj) throws IOException {
            w.b f10;
            j y10 = j.y(vVar.x().B());
            if (y10 != null) {
                n x10 = y10.z().x();
                pk.o x11 = pk.o.x(vVar.F());
                f10 = new w.b(new u(y10.x(), yk.e.a(x10))).g(x11.y()).h(x11.z());
            } else {
                byte[] M = o.K(vVar.F()).M();
                f10 = new w.b(u.k(org.bouncycastle.util.g.a(M, 0))).f(M);
            }
            return f10.e();
        }
    }

    /* loaded from: classes7.dex */
    private static class h extends f {
        private h() {
            super();
        }

        @Override // yk.c.f
        vj.a a(v vVar, Object obj) throws IOException {
            r.b f10;
            k y10 = k.y(vVar.x().B());
            if (y10 != null) {
                n x10 = y10.B().x();
                pk.o x11 = pk.o.x(vVar.F());
                f10 = new r.b(new p(y10.x(), y10.z(), yk.e.a(x10))).g(x11.y()).h(x11.z());
            } else {
                byte[] M = o.K(vVar.F()).M();
                f10 = new r.b(p.i(org.bouncycastle.util.g.a(M, 0))).f(M);
            }
            return f10.e();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f60275a = hashMap;
        hashMap.put(pk.e.X, new d());
        f60275a.put(pk.e.Y, new d());
        f60275a.put(pk.e.f57030r, new e());
        f60275a.put(pk.e.f57034v, new C0701c());
        f60275a.put(pk.e.f57035w, new g());
        f60275a.put(pk.e.F, new h());
        f60275a.put(cj.a.f1750a, new g());
        f60275a.put(cj.a.f1751b, new h());
        f60275a.put(gj.c.Q1, new b());
    }

    public static vj.a a(v vVar) throws IOException {
        return b(vVar, null);
    }

    public static vj.a b(v vVar, Object obj) throws IOException {
        oj.a x10 = vVar.x();
        f fVar = (f) f60275a.get(x10.x());
        if (fVar != null) {
            return fVar.a(vVar, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + x10.x());
    }
}
