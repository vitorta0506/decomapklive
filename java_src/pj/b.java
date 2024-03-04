package pj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class b extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private n0 f56898a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.k f56899b;

    private b(s sVar) {
        if (sVar.size() == 2) {
            this.f56898a = n0.P(sVar.M(0));
            this.f56899b = org.bouncycastle.asn1.k.K(sVar.M(1));
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static b x(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f56898a);
        fVar.a(this.f56899b);
        return new a1(fVar);
    }
}
