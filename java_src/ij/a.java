package ij;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class a extends m {

    /* renamed from: a  reason: collision with root package name */
    private s f41379a;

    public a(int i9, BigInteger bigInteger, e eVar) {
        this(i9, bigInteger, null, eVar);
    }

    public a(int i9, BigInteger bigInteger, n0 n0Var, e eVar) {
        byte[] a10 = org.bouncycastle.util.b.a((i9 + 7) / 8, bigInteger);
        f fVar = new f(4);
        fVar.a(new k(1L));
        fVar.a(new w0(a10));
        if (eVar != null) {
            fVar.a(new d1(true, 0, eVar));
        }
        if (n0Var != null) {
            fVar.a(new d1(true, 1, n0Var));
        }
        this.f41379a = new a1(fVar);
    }

    private a(s sVar) {
        this.f41379a = sVar;
    }

    public static a x(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(s.K(obj));
        }
        return null;
    }

    private r z(int i9) {
        Enumeration N = this.f41379a.N();
        while (N.hasMoreElements()) {
            e eVar = (e) N.nextElement();
            if (eVar instanceof y) {
                y yVar = (y) eVar;
                if (yVar.N() == i9) {
                    return yVar.M().f();
                }
            }
        }
        return null;
    }

    public n0 B() {
        return (n0) z(1);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        return this.f41379a;
    }

    public BigInteger y() {
        return new BigInteger(1, ((o) this.f41379a.M(1)).M());
    }
}
