package oj;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class j extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.k f55760a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.k f55761b;

    /* renamed from: c  reason: collision with root package name */
    org.bouncycastle.asn1.k f55762c;

    public j(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f55760a = new org.bouncycastle.asn1.k(bigInteger);
        this.f55761b = new org.bouncycastle.asn1.k(bigInteger2);
        this.f55762c = new org.bouncycastle.asn1.k(bigInteger3);
    }

    private j(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        Enumeration N = sVar.N();
        this.f55760a = org.bouncycastle.asn1.k.K(N.nextElement());
        this.f55761b = org.bouncycastle.asn1.k.K(N.nextElement());
        this.f55762c = org.bouncycastle.asn1.k.K(N.nextElement());
    }

    public static j y(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public BigInteger B() {
        return this.f55761b.M();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        fVar.a(this.f55760a);
        fVar.a(this.f55761b);
        fVar.a(this.f55762c);
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f55762c.M();
    }

    public BigInteger z() {
        return this.f55760a.M();
    }
}
