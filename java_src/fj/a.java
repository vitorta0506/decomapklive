package fj;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class a extends m {

    /* renamed from: a  reason: collision with root package name */
    k f39747a;

    /* renamed from: b  reason: collision with root package name */
    k f39748b;

    public a(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f39747a = new k(bigInteger);
        this.f39748b = new k(bigInteger2);
    }

    private a(s sVar) {
        Enumeration N = sVar.N();
        this.f39747a = (k) N.nextElement();
        this.f39748b = (k) N.nextElement();
    }

    public static a y(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        f fVar = new f(2);
        fVar.a(this.f39747a);
        fVar.a(this.f39748b);
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f39748b.M();
    }

    public BigInteger z() {
        return this.f39747a.M();
    }
}
