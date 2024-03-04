package yk;

import java.io.IOException;
import oj.v;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.pqc.crypto.xmss.r;
import org.bouncycastle.pqc.crypto.xmss.w;
import pk.i;
import pk.j;
import pk.k;
import pk.m;
import pk.o;
import rk.l;
/* loaded from: classes7.dex */
public class d {
    public static v a(vj.a aVar) throws IOException {
        if (aVar instanceof uk.b) {
            uk.b bVar = (uk.b) aVar;
            return new v(e.b(bVar.c()), bVar.b());
        } else if (aVar instanceof xk.c) {
            xk.c cVar = (xk.c) aVar;
            return new v(new oj.a(pk.e.f57030r, new i(e.d(cVar.b()))), cVar.c());
        } else if (aVar instanceof tk.b) {
            return new v(new oj.a(pk.e.f57034v), ((tk.b) aVar).b());
        } else {
            if (aVar instanceof l) {
                return new v(new oj.a(gj.c.Q1), new w0(rk.a.f().i(1).c((l) aVar).b()));
            } else if (aVar instanceof rk.d) {
                rk.d dVar = (rk.d) aVar;
                return new v(new oj.a(gj.c.Q1), new w0(rk.a.f().i(dVar.c()).c(dVar.d()).b()));
            } else if (aVar instanceof w) {
                w wVar = (w) aVar;
                byte[] d10 = wVar.d();
                byte[] e10 = wVar.e();
                byte[] encoded = wVar.getEncoded();
                return encoded.length > d10.length + e10.length ? new v(new oj.a(cj.a.f1750a), new w0(encoded)) : new v(new oj.a(pk.e.f57035w, new j(wVar.c().b(), e.f(wVar.b()))), new o(d10, e10));
            } else if (aVar instanceof r) {
                r rVar = (r) aVar;
                byte[] d11 = rVar.d();
                byte[] e11 = rVar.e();
                byte[] encoded2 = rVar.getEncoded();
                return encoded2.length > d11.length + e11.length ? new v(new oj.a(cj.a.f1751b), new w0(encoded2)) : new v(new oj.a(pk.e.F, new k(rVar.c().a(), rVar.c().b(), e.f(rVar.b()))), new m(rVar.d(), rVar.e()));
            } else {
                throw new IOException("key parameters not recognized");
            }
        }
    }
}
