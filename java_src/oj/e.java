package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class e extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    f f55737a;

    /* renamed from: b  reason: collision with root package name */
    a f55738b;

    /* renamed from: c  reason: collision with root package name */
    n0 f55739c;

    public e(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() == 3) {
            this.f55737a = f.F(sVar.M(0));
            this.f55738b = a.y(sVar.M(1));
            this.f55739c = n0.P(sVar.M(2));
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static e y(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public n0 B() {
        return this.f55739c;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        fVar.a(this.f55737a);
        fVar.a(this.f55738b);
        fVar.a(this.f55739c);
        return new a1(fVar);
    }

    public f x() {
        return this.f55737a;
    }

    public a z() {
        return this.f55738b;
    }
}
