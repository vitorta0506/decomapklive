package oj;

import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class a extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.n f55650a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.e f55651b;

    public a(org.bouncycastle.asn1.n nVar) {
        this.f55650a = nVar;
    }

    public a(org.bouncycastle.asn1.n nVar, org.bouncycastle.asn1.e eVar) {
        this.f55650a = nVar;
        this.f55651b = eVar;
    }

    private a(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() >= 1 && sVar.size() <= 2) {
            this.f55650a = org.bouncycastle.asn1.n.P(sVar.M(0));
            this.f55651b = sVar.size() == 2 ? sVar.M(1) : null;
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static a y(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public static a z(org.bouncycastle.asn1.y yVar, boolean z10) {
        return y(org.bouncycastle.asn1.s.L(yVar, z10));
    }

    public org.bouncycastle.asn1.e B() {
        return this.f55651b;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f55650a);
        org.bouncycastle.asn1.e eVar = this.f55651b;
        if (eVar != null) {
            fVar.a(eVar);
        }
        return new a1(fVar);
    }

    public org.bouncycastle.asn1.n x() {
        return this.f55650a;
    }
}
