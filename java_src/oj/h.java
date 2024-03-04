package oj;

import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class h extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.s f55751a;

    /* renamed from: b  reason: collision with root package name */
    x f55752b;

    /* renamed from: c  reason: collision with root package name */
    a f55753c;

    /* renamed from: d  reason: collision with root package name */
    n0 f55754d;

    private h(org.bouncycastle.asn1.s sVar) {
        this.f55751a = sVar;
        if (sVar.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
        this.f55752b = x.z(sVar.M(0));
        this.f55753c = a.y(sVar.M(1));
        this.f55754d = n0.P(sVar.M(2));
    }

    public static h y(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public org.bouncycastle.asn1.k B() {
        return this.f55752b.G();
    }

    public n0 F() {
        return this.f55754d;
    }

    public a G() {
        return this.f55753c;
    }

    public y H() {
        return this.f55752b.I();
    }

    public mj.c I() {
        return this.f55752b.J();
    }

    public v J() {
        return this.f55752b.K();
    }

    public x K() {
        return this.f55752b;
    }

    public int L() {
        return this.f55752b.M();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return this.f55751a;
    }

    public y x() {
        return this.f55752b.x();
    }

    public mj.c z() {
        return this.f55752b.B();
    }
}
