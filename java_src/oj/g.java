package oj;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class g extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.c f55749a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.k f55750b;

    private g(org.bouncycastle.asn1.s sVar) {
        this.f55749a = org.bouncycastle.asn1.c.N(false);
        this.f55750b = null;
        if (sVar.size() == 0) {
            this.f55749a = null;
            this.f55750b = null;
            return;
        }
        if (sVar.M(0) instanceof org.bouncycastle.asn1.c) {
            this.f55749a = org.bouncycastle.asn1.c.L(sVar.M(0));
        } else {
            this.f55749a = null;
            this.f55750b = org.bouncycastle.asn1.k.K(sVar.M(0));
        }
        if (sVar.size() > 1) {
            if (this.f55749a == null) {
                throw new IllegalArgumentException("wrong sequence in constructor");
            }
            this.f55750b = org.bouncycastle.asn1.k.K(sVar.M(1));
        }
    }

    public static g x(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj instanceof a0) {
            return x(a0.a((a0) obj));
        }
        if (obj != null) {
            return new g(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        org.bouncycastle.asn1.c cVar = this.f55749a;
        if (cVar != null) {
            fVar.a(cVar);
        }
        org.bouncycastle.asn1.k kVar = this.f55750b;
        if (kVar != null) {
            fVar.a(kVar);
        }
        return new a1(fVar);
    }

    public String toString() {
        StringBuilder sb2;
        if (this.f55750b == null) {
            sb2 = new StringBuilder();
            sb2.append("BasicConstraints: isCa(");
            sb2.append(z());
            sb2.append(")");
        } else {
            sb2 = new StringBuilder();
            sb2.append("BasicConstraints: isCa(");
            sb2.append(z());
            sb2.append("), pathLenConstraint = ");
            sb2.append(this.f55750b.N());
        }
        return sb2.toString();
    }

    public BigInteger y() {
        org.bouncycastle.asn1.k kVar = this.f55750b;
        if (kVar != null) {
            return kVar.N();
        }
        return null;
    }

    public boolean z() {
        org.bouncycastle.asn1.c cVar = this.f55749a;
        return cVar != null && cVar.O();
    }
}
