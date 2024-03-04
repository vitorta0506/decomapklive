package pj;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class c extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f56900a;

    /* renamed from: b  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f56901b;

    /* renamed from: c  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f56902c;

    /* renamed from: d  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f56903d;

    /* renamed from: e  reason: collision with root package name */
    private final e f56904e;

    public c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, e eVar) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f56900a = new org.bouncycastle.asn1.k(bigInteger);
        this.f56901b = new org.bouncycastle.asn1.k(bigInteger2);
        this.f56902c = new org.bouncycastle.asn1.k(bigInteger3);
        this.f56903d = bigInteger4 != null ? new org.bouncycastle.asn1.k(bigInteger4) : null;
        this.f56904e = eVar;
    }

    private c(s sVar) {
        if (sVar.size() < 3 || sVar.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        Enumeration N = sVar.N();
        this.f56900a = org.bouncycastle.asn1.k.K(N.nextElement());
        this.f56901b = org.bouncycastle.asn1.k.K(N.nextElement());
        this.f56902c = org.bouncycastle.asn1.k.K(N.nextElement());
        org.bouncycastle.asn1.e B = B(N);
        if (B == null || !(B instanceof org.bouncycastle.asn1.k)) {
            this.f56903d = null;
        } else {
            this.f56903d = org.bouncycastle.asn1.k.K(B);
            B = B(N);
        }
        if (B != null) {
            this.f56904e = e.x(B.f());
        } else {
            this.f56904e = null;
        }
    }

    private static org.bouncycastle.asn1.e B(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (org.bouncycastle.asn1.e) enumeration.nextElement();
        }
        return null;
    }

    public static c y(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(s.K(obj));
        }
        return null;
    }

    public BigInteger F() {
        return this.f56900a.M();
    }

    public BigInteger G() {
        return this.f56902c.M();
    }

    public e H() {
        return this.f56904e;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(5);
        fVar.a(this.f56900a);
        fVar.a(this.f56901b);
        fVar.a(this.f56902c);
        org.bouncycastle.asn1.k kVar = this.f56903d;
        if (kVar != null) {
            fVar.a(kVar);
        }
        e eVar = this.f56904e;
        if (eVar != null) {
            fVar.a(eVar);
        }
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f56901b.M();
    }

    public BigInteger z() {
        org.bouncycastle.asn1.k kVar = this.f56903d;
        if (kVar == null) {
            return null;
        }
        return kVar.M();
    }
}
