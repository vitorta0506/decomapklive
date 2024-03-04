package gj;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    k f40093a;

    /* renamed from: b  reason: collision with root package name */
    k f40094b;

    /* renamed from: c  reason: collision with root package name */
    k f40095c;

    public b(BigInteger bigInteger, BigInteger bigInteger2, int i9) {
        this.f40093a = new k(bigInteger);
        this.f40094b = new k(bigInteger2);
        this.f40095c = i9 != 0 ? new k(i9) : null;
    }

    private b(s sVar) {
        Enumeration N = sVar.N();
        this.f40093a = k.K(N.nextElement());
        this.f40094b = k.K(N.nextElement());
        this.f40095c = N.hasMoreElements() ? (k) N.nextElement() : null;
    }

    public static b y(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(s.K(obj));
        }
        return null;
    }

    public BigInteger B() {
        return this.f40093a.M();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        fVar.a(this.f40093a);
        fVar.a(this.f40094b);
        if (z() != null) {
            fVar.a(this.f40095c);
        }
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f40094b.M();
    }

    public BigInteger z() {
        k kVar = this.f40095c;
        if (kVar == null) {
            return null;
        }
        return kVar.M();
    }
}
