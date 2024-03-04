package yk;

import java.io.IOException;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.pqc.crypto.xmss.BDS;
import org.bouncycastle.pqc.crypto.xmss.BDSStateMap;
import org.bouncycastle.pqc.crypto.xmss.q;
import org.bouncycastle.pqc.crypto.xmss.v;
import org.bouncycastle.pqc.crypto.xmss.x;
import org.bouncycastle.util.g;
import pk.i;
import pk.j;
import pk.l;
import pk.n;
import rk.k;
/* loaded from: classes7.dex */
public class b {
    public static gj.d a(vj.a aVar, u uVar) throws IOException {
        if (aVar instanceof uk.a) {
            uk.a aVar2 = (uk.a) aVar;
            return new gj.d(e.b(aVar2.c()), new w0(aVar2.b()), uVar);
        } else if (aVar instanceof xk.b) {
            xk.b bVar = (xk.b) aVar;
            return new gj.d(new oj.a(pk.e.f57030r, new i(e.d(bVar.b()))), new w0(bVar.c()));
        } else if (aVar instanceof tk.a) {
            oj.a aVar3 = new oj.a(pk.e.f57034v);
            short[] b10 = ((tk.a) aVar).b();
            byte[] bArr = new byte[b10.length * 2];
            for (int i9 = 0; i9 != b10.length; i9++) {
                g.o(b10[i9], bArr, i9 * 2);
            }
            return new gj.d(aVar3, new w0(bArr));
        } else if (aVar instanceof k) {
            k kVar = (k) aVar;
            byte[] b11 = rk.a.f().i(1).c(kVar).b();
            return new gj.d(new oj.a(gj.c.Q1), new w0(b11), uVar, rk.a.f().i(1).c(kVar.n()).b());
        } else if (aVar instanceof rk.c) {
            rk.c cVar = (rk.c) aVar;
            byte[] b12 = rk.a.f().i(cVar.g()).c(cVar).b();
            return new gj.d(new oj.a(gj.c.Q1), new w0(b12), uVar, rk.a.f().i(cVar.g()).c(cVar.h().d()).b());
        } else if (aVar instanceof v) {
            v vVar = (v) aVar;
            return new gj.d(new oj.a(pk.e.f57035w, new j(vVar.e().b(), e.f(vVar.b()))), b(vVar), uVar);
        } else if (aVar instanceof q) {
            q qVar = (q) aVar;
            return new gj.d(new oj.a(pk.e.F, new pk.k(qVar.e().a(), qVar.e().b(), e.f(qVar.b()))), c(qVar), uVar);
        } else {
            throw new IOException("key parameters not recognized");
        }
    }

    private static n b(v vVar) throws IOException {
        byte[] encoded = vVar.getEncoded();
        int h10 = vVar.e().h();
        int b10 = vVar.e().b();
        int a10 = (int) x.a(encoded, 0, 4);
        if (x.l(b10, a10)) {
            byte[] g10 = x.g(encoded, 4, h10);
            int i9 = 4 + h10;
            byte[] g11 = x.g(encoded, i9, h10);
            int i10 = i9 + h10;
            byte[] g12 = x.g(encoded, i10, h10);
            int i11 = i10 + h10;
            byte[] g13 = x.g(encoded, i11, h10);
            int i12 = i11 + h10;
            byte[] g14 = x.g(encoded, i12, encoded.length - i12);
            try {
                BDS bds = (BDS) x.f(g14, BDS.class);
                return bds.getMaxIndex() != (1 << b10) - 1 ? new n(a10, g10, g11, g12, g13, g14, bds.getMaxIndex()) : new n(a10, g10, g11, g12, g13, g14);
            } catch (ClassNotFoundException e10) {
                throw new IOException("cannot parse BDS: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("index out of bounds");
    }

    private static l c(q qVar) throws IOException {
        byte[] encoded = qVar.getEncoded();
        int f10 = qVar.e().f();
        int a10 = qVar.e().a();
        int i9 = (a10 + 7) / 8;
        long a11 = (int) x.a(encoded, 0, i9);
        if (x.l(a10, a11)) {
            int i10 = i9 + 0;
            byte[] g10 = x.g(encoded, i10, f10);
            int i11 = i10 + f10;
            byte[] g11 = x.g(encoded, i11, f10);
            int i12 = i11 + f10;
            byte[] g12 = x.g(encoded, i12, f10);
            int i13 = i12 + f10;
            byte[] g13 = x.g(encoded, i13, f10);
            int i14 = i13 + f10;
            byte[] g14 = x.g(encoded, i14, encoded.length - i14);
            try {
                BDSStateMap bDSStateMap = (BDSStateMap) x.f(g14, BDSStateMap.class);
                return bDSStateMap.getMaxIndex() != (1 << a10) - 1 ? new l(a11, g10, g11, g12, g13, g14, bDSStateMap.getMaxIndex()) : new l(a11, g10, g11, g12, g13, g14);
            } catch (ClassNotFoundException e10) {
                throw new IOException("cannot parse BDSStateMap: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("index out of bounds");
    }
}
