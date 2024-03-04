package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class q extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    o f55800a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.k f55801b;

    /* renamed from: c  reason: collision with root package name */
    n0 f55802c;

    private q(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() != 2 && sVar.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        this.f55800a = o.x(sVar.M(0));
        this.f55801b = org.bouncycastle.asn1.k.K(sVar.M(1));
        if (sVar.size() == 3) {
            this.f55802c = n0.P(sVar.M(2));
        }
    }

    public static q x(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public static q y(org.bouncycastle.asn1.y yVar, boolean z10) {
        return x(org.bouncycastle.asn1.s.L(yVar, z10));
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        fVar.a(this.f55800a);
        fVar.a(this.f55801b);
        n0 n0Var = this.f55802c;
        if (n0Var != null) {
            fVar.a(n0Var);
        }
        return new a1(fVar);
    }
}
