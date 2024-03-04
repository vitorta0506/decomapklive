package xj;

import gj.c;
import gj.d;
import gj.e;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;
import oj.j;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.asn1.w0;
import pj.g;
import pj.o;
import vj.e0;
import vj.f0;
import vj.g0;
import vj.h;
import vj.i;
import vj.i0;
import vj.l;
import vj.m;
import vj.p;
import vj.r;
import vj.t;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Set f59988a;

    static {
        HashSet hashSet = new HashSet(5);
        f59988a = hashSet;
        hashSet.add(zi.a.f60573x);
        f59988a.add(zi.a.f60574y);
        f59988a.add(zi.a.f60575z);
        f59988a.add(zi.a.A);
        f59988a.add(zi.a.B);
    }

    public static d a(vj.a aVar, u uVar) throws IOException {
        int bitLength;
        g gVar;
        BigInteger d10;
        n nVar;
        if (aVar instanceof e0) {
            f0 f0Var = (f0) aVar;
            return new d(new oj.a(c.f40124l0, u0.f55980a), new e(f0Var.c(), f0Var.h(), f0Var.b(), f0Var.g(), f0Var.i(), f0Var.e(), f0Var.f(), f0Var.j()), uVar);
        } else if (aVar instanceof i) {
            i iVar = (i) aVar;
            h b10 = iVar.b();
            return new d(new oj.a(o.f56959h4, new j(b10.b(), b10.c(), b10.a())), new k(iVar.c()), uVar);
        } else if (!(aVar instanceof p)) {
            if (aVar instanceof i0) {
                i0 i0Var = (i0) aVar;
                return new d(new oj.a(aj.a.f796c), new w0(i0Var.getEncoded()), uVar, i0Var.b().getEncoded());
            } else if (aVar instanceof g0) {
                g0 g0Var = (g0) aVar;
                return new d(new oj.a(aj.a.f795b), new w0(g0Var.getEncoded()), uVar, g0Var.b().getEncoded());
            } else if (aVar instanceof t) {
                t tVar = (t) aVar;
                return new d(new oj.a(aj.a.f798e), new w0(tVar.getEncoded()), uVar, tVar.b().getEncoded());
            } else if (aVar instanceof r) {
                r rVar = (r) aVar;
                return new d(new oj.a(aj.a.f797d), new w0(rVar.getEncoded()), uVar, rVar.b().getEncoded());
            } else {
                throw new IOException("key parameters not recognized");
            }
        } else {
            p pVar = (p) aVar;
            l b11 = pVar.b();
            if (b11 == null) {
                gVar = new g((org.bouncycastle.asn1.l) u0.f55980a);
                d10 = pVar.c();
            } else if (b11 instanceof m) {
                m mVar = (m) b11;
                zi.e eVar = new zi.e(mVar.k(), mVar.i(), mVar.j());
                if (f59988a.contains(eVar.B())) {
                    nVar = zi.a.f60562m;
                } else {
                    boolean z10 = pVar.c().bitLength() > 256;
                    n nVar2 = z10 ? hj.a.f40796h : hj.a.f40795g;
                    r2 = z10 ? 64 : 32;
                    nVar = nVar2;
                }
                byte[] bArr = new byte[r2];
                b(bArr, r2, 0, pVar.c());
                return new d(new oj.a(nVar, eVar), new w0(bArr));
            } else if (!(b11 instanceof vj.o)) {
                g gVar2 = new g(new pj.i(b11.a(), new pj.k(b11.b(), false), b11.d(), b11.c(), b11.e()));
                bitLength = b11.d().bitLength();
                gVar = gVar2;
                return new d(new oj.a(o.f56983v3, gVar), new ij.a(bitLength, pVar.c(), new n0(new fk.k().b(b11.b(), pVar.c()).l(false)), gVar), uVar);
            } else {
                gVar = new g(((vj.o) b11).h());
                d10 = b11.d();
            }
            bitLength = d10.bitLength();
            return new d(new oj.a(o.f56983v3, gVar), new ij.a(bitLength, pVar.c(), new n0(new fk.k().b(b11.b(), pVar.c()).l(false)), gVar), uVar);
        }
    }

    private static void b(byte[] bArr, int i9, int i10, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i9) {
            byte[] bArr2 = new byte[i9];
            System.arraycopy(byteArray, 0, bArr2, i9 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i11 = 0; i11 != i9; i11++) {
            bArr[i10 + i11] = byteArray[(byteArray.length - 1) - i11];
        }
    }
}
