package pj;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class e extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private n0 f56905a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.k f56906b;

    private e(s sVar) {
        if (sVar.size() == 2) {
            this.f56905a = n0.P(sVar.M(0));
            this.f56906b = org.bouncycastle.asn1.k.K(sVar.M(1));
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public e(byte[] bArr, int i9) {
        if (bArr == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        this.f56905a = new n0(bArr);
        this.f56906b = new org.bouncycastle.asn1.k(i9);
    }

    public static e x(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f56905a);
        fVar.a(this.f56906b);
        return new a1(fVar);
    }

    public BigInteger y() {
        return this.f56906b.M();
    }

    public byte[] z() {
        return this.f56905a.L();
    }
}
