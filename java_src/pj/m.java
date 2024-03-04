package pj;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class m extends org.bouncycastle.asn1.m implements o {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.n f56950a;

    /* renamed from: b  reason: collision with root package name */
    private r f56951b;

    public m(int i9, int i10) {
        this(i9, i10, 0, 0);
    }

    public m(int i9, int i10, int i11, int i12) {
        this.f56950a = o.f56969o3;
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        fVar.a(new org.bouncycastle.asn1.k(i9));
        if (i11 == 0) {
            if (i12 != 0) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            fVar.a(o.f56973q3);
            fVar.a(new org.bouncycastle.asn1.k(i10));
        } else if (i11 <= i10 || i12 <= i11) {
            throw new IllegalArgumentException("inconsistent k values");
        } else {
            fVar.a(o.f56975r3);
            org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f(3);
            fVar2.a(new org.bouncycastle.asn1.k(i10));
            fVar2.a(new org.bouncycastle.asn1.k(i11));
            fVar2.a(new org.bouncycastle.asn1.k(i12));
            fVar.a(new a1(fVar2));
        }
        this.f56951b = new a1(fVar);
    }

    public m(BigInteger bigInteger) {
        this.f56950a = o.f56967n3;
        this.f56951b = new org.bouncycastle.asn1.k(bigInteger);
    }

    private m(s sVar) {
        this.f56950a = org.bouncycastle.asn1.n.P(sVar.M(0));
        this.f56951b = sVar.M(1).f();
    }

    public static m y(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f56950a);
        fVar.a(this.f56951b);
        return new a1(fVar);
    }

    public org.bouncycastle.asn1.n x() {
        return this.f56950a;
    }

    public r z() {
        return this.f56951b;
    }
}
