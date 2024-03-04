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
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    private s f41380a;

    public b(BigInteger bigInteger, e eVar) {
        this(bigInteger, null, eVar);
    }

    public b(BigInteger bigInteger, n0 n0Var, e eVar) {
        byte[] b10 = org.bouncycastle.util.b.b(bigInteger);
        f fVar = new f(4);
        fVar.a(new k(1L));
        fVar.a(new w0(b10));
        if (eVar != null) {
            fVar.a(new d1(true, 0, eVar));
        }
        if (n0Var != null) {
            fVar.a(new d1(true, 1, n0Var));
        }
        this.f41380a = new a1(fVar);
    }

    public b(s sVar) {
        this.f41380a = sVar;
    }

    private r y(int i9) {
        Enumeration N = this.f41380a.N();
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

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        return this.f41380a;
    }

    public BigInteger x() {
        return new BigInteger(1, ((o) this.f41380a.M(1)).M());
    }

    public n0 z() {
        return (n0) y(1);
    }
}
