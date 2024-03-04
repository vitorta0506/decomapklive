package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class t extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.g f55811a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.n f55812b;

    /* renamed from: c  reason: collision with root package name */
    a f55813c;

    /* renamed from: d  reason: collision with root package name */
    n0 f55814d;

    private t(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() > 4 || sVar.size() < 3) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        int i9 = 0;
        this.f55811a = org.bouncycastle.asn1.g.L(sVar.M(0));
        if (sVar.size() == 4) {
            this.f55812b = org.bouncycastle.asn1.n.P(sVar.M(1));
            i9 = 1;
        }
        this.f55813c = a.y(sVar.M(i9 + 1));
        this.f55814d = n0.P(sVar.M(i9 + 2));
    }

    public static t x(Object obj) {
        if (obj instanceof t) {
            return (t) obj;
        }
        if (obj != null) {
            return new t(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public static t y(org.bouncycastle.asn1.y yVar, boolean z10) {
        return x(org.bouncycastle.asn1.s.L(yVar, z10));
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(4);
        fVar.a(this.f55811a);
        org.bouncycastle.asn1.n nVar = this.f55812b;
        if (nVar != null) {
            fVar.a(nVar);
        }
        fVar.a(this.f55813c);
        fVar.a(this.f55814d);
        return new a1(fVar);
    }
}
