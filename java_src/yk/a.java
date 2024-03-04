package yk;

import java.io.IOException;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.o;
import org.bouncycastle.pqc.crypto.xmss.BDS;
import org.bouncycastle.pqc.crypto.xmss.BDSStateMap;
import org.bouncycastle.pqc.crypto.xmss.p;
import org.bouncycastle.pqc.crypto.xmss.q;
import org.bouncycastle.pqc.crypto.xmss.u;
import org.bouncycastle.pqc.crypto.xmss.v;
import org.bouncycastle.pqc.crypto.xmss.x;
import org.bouncycastle.util.g;
import pk.i;
import pk.j;
import pk.l;
import rk.k;
/* loaded from: classes7.dex */
public class a {
    private static short[] a(byte[] bArr) {
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int i9 = 0; i9 != length; i9++) {
            sArr[i9] = g.h(bArr, i9 * 2);
        }
        return sArr;
    }

    public static vj.a b(gj.d dVar) throws IOException {
        n x10 = dVar.B().x();
        if (x10.b0(xi.a.W)) {
            return new uk.a(e.c(dVar.B()), o.K(dVar.I()).M());
        } else if (x10.F(xi.a.f59980s)) {
            return new xk.b(o.K(dVar.I()).M(), e.e(i.x(dVar.B().B())));
        } else {
            if (x10.F(xi.a.f59965f0)) {
                return new tk.a(a(o.K(dVar.I()).M()));
            }
            if (x10.F(gj.c.Q1)) {
                byte[] M = o.K(dVar.I()).M();
                org.bouncycastle.asn1.b F = dVar.F();
                if (g.a(M, 0) == 1) {
                    if (F != null) {
                        byte[] M2 = F.M();
                        return k.j(org.bouncycastle.util.a.m(M, 4, M.length), org.bouncycastle.util.a.m(M2, 4, M2.length));
                    }
                    return k.i(org.bouncycastle.util.a.m(M, 4, M.length));
                } else if (F != null) {
                    return rk.c.e(org.bouncycastle.util.a.m(M, 4, M.length), F.M());
                } else {
                    return rk.c.d(org.bouncycastle.util.a.m(M, 4, M.length));
                }
            } else if (x10.F(xi.a.f59984w)) {
                j y10 = j.y(dVar.B().B());
                n x11 = y10.z().x();
                pk.n z10 = pk.n.z(dVar.I());
                try {
                    v.b o10 = new v.b(new u(y10.x(), e.a(x11))).l(z10.y()).q(z10.I()).p(z10.H()).n(z10.F()).o(z10.G());
                    if (z10.J() != 0) {
                        o10.m(z10.B());
                    }
                    if (z10.x() != null) {
                        o10.k(((BDS) x.f(z10.x(), BDS.class)).withWOTSDigest(x11));
                    }
                    return o10.j();
                } catch (ClassNotFoundException e10) {
                    throw new IOException("ClassNotFoundException processing BDS state: " + e10.getMessage());
                }
            } else if (x10.F(pk.e.F)) {
                pk.k y11 = pk.k.y(dVar.B().B());
                n x12 = y11.B().x();
                try {
                    l z11 = l.z(dVar.I());
                    q.b p10 = new q.b(new p(y11.x(), y11.z(), e.a(x12))).m(z11.y()).r(z11.I()).q(z11.H()).o(z11.F()).p(z11.G());
                    if (z11.J() != 0) {
                        p10.n(z11.B());
                    }
                    if (z11.x() != null) {
                        p10.l(((BDSStateMap) x.f(z11.x(), BDSStateMap.class)).withWOTSDigest(x12));
                    }
                    return p10.k();
                } catch (ClassNotFoundException e11) {
                    throw new IOException("ClassNotFoundException processing BDS state: " + e11.getMessage());
                }
            } else {
                throw new RuntimeException("algorithm identifier in private key not recognised");
            }
        }
    }
}
