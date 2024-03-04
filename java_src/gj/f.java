package gj;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class f extends m {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f40184a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f40185b;

    public f(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f40184a = bigInteger;
        this.f40185b = bigInteger2;
    }

    private f(s sVar) {
        if (sVar.size() == 2) {
            Enumeration N = sVar.N();
            this.f40184a = k.K(N.nextElement()).M();
            this.f40185b = k.K(N.nextElement()).M();
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static f x(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(new k(y()));
        fVar.a(new k(z()));
        return new a1(fVar);
    }

    public BigInteger y() {
        return this.f40184a;
    }

    public BigInteger z() {
        return this.f40185b;
    }
}
