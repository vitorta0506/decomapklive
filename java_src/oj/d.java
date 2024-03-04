package oj;

import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class d extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.n f55735a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.u f55736b;

    private d(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() == 2) {
            this.f55735a = org.bouncycastle.asn1.n.P(sVar.M(0));
            this.f55736b = org.bouncycastle.asn1.u.L(sVar.M(1));
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static d y(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f55735a);
        fVar.a(this.f55736b);
        return new a1(fVar);
    }

    public org.bouncycastle.asn1.n x() {
        return new org.bouncycastle.asn1.n(this.f55735a.O());
    }
}
