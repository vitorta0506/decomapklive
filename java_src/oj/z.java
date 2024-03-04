package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
/* loaded from: classes7.dex */
public class z extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    o f55842a;

    /* renamed from: b  reason: collision with root package name */
    q f55843b;

    /* renamed from: c  reason: collision with root package name */
    t f55844c;

    public z(org.bouncycastle.asn1.s sVar) {
        int i9;
        if (sVar.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        if (sVar.M(0) instanceof org.bouncycastle.asn1.y) {
            i9 = 0;
        } else {
            this.f55842a = o.x(sVar.M(0));
            i9 = 1;
        }
        while (i9 != sVar.size()) {
            org.bouncycastle.asn1.y K = org.bouncycastle.asn1.y.K(sVar.M(i9));
            if (K.N() == 0) {
                this.f55843b = q.y(K, false);
            } else if (K.N() != 1) {
                throw new IllegalArgumentException("Bad tag number: " + K.N());
            } else {
                this.f55844c = t.y(K, false);
            }
            i9++;
        }
    }

    public static z x(Object obj) {
        if (obj instanceof z) {
            return (z) obj;
        }
        if (obj != null) {
            return new z(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public static z y(org.bouncycastle.asn1.y yVar, boolean z10) {
        return x(org.bouncycastle.asn1.s.L(yVar, z10));
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        o oVar = this.f55842a;
        if (oVar != null) {
            fVar.a(oVar);
        }
        q qVar = this.f55843b;
        if (qVar != null) {
            fVar.a(new d1(false, 0, qVar));
        }
        t tVar = this.f55844c;
        if (tVar != null) {
            fVar.a(new d1(false, 1, tVar));
        }
        return new a1(fVar);
    }
}
