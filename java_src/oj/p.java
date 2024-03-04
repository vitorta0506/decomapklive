package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
/* loaded from: classes7.dex */
public class p extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    q f55796a;

    /* renamed from: b  reason: collision with root package name */
    o f55797b;

    /* renamed from: c  reason: collision with root package name */
    t f55798c;

    /* renamed from: d  reason: collision with root package name */
    private int f55799d;

    private p(org.bouncycastle.asn1.s sVar) {
        this.f55799d = 1;
        if (sVar.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        for (int i9 = 0; i9 != sVar.size(); i9++) {
            org.bouncycastle.asn1.y K = org.bouncycastle.asn1.y.K(sVar.M(i9));
            int N = K.N();
            if (N == 0) {
                this.f55796a = q.y(K, false);
            } else if (N == 1) {
                this.f55797b = o.y(K, false);
            } else if (N != 2) {
                throw new IllegalArgumentException("unknown tag in Holder");
            } else {
                this.f55798c = t.y(K, false);
            }
        }
        this.f55799d = 1;
    }

    private p(org.bouncycastle.asn1.y yVar) {
        this.f55799d = 1;
        int N = yVar.N();
        if (N == 0) {
            this.f55796a = q.y(yVar, true);
        } else if (N != 1) {
            throw new IllegalArgumentException("unknown tag in Holder");
        } else {
            this.f55797b = o.y(yVar, true);
        }
        this.f55799d = 0;
    }

    public static p x(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj instanceof org.bouncycastle.asn1.y) {
            return new p(org.bouncycastle.asn1.y.K(obj));
        }
        if (obj != null) {
            return new p(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        if (this.f55799d != 1) {
            o oVar = this.f55797b;
            return oVar != null ? new d1(true, 1, oVar) : new d1(true, 0, this.f55796a);
        }
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        q qVar = this.f55796a;
        if (qVar != null) {
            fVar.a(new d1(false, 0, qVar));
        }
        o oVar2 = this.f55797b;
        if (oVar2 != null) {
            fVar.a(new d1(false, 1, oVar2));
        }
        t tVar = this.f55798c;
        if (tVar != null) {
            fVar.a(new d1(false, 2, tVar));
        }
        return new a1(fVar);
    }
}
