package zi;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
/* loaded from: classes7.dex */
public class d extends m {

    /* renamed from: a  reason: collision with root package name */
    int f60585a;

    /* renamed from: b  reason: collision with root package name */
    k f60586b;

    /* renamed from: c  reason: collision with root package name */
    k f60587c;

    /* renamed from: d  reason: collision with root package name */
    k f60588d;

    public d(int i9, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f60585a = i9;
        this.f60586b = new k(bigInteger);
        this.f60587c = new k(bigInteger2);
        this.f60588d = new k(bigInteger3);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        f fVar = new f(4);
        fVar.a(new k(this.f60585a));
        fVar.a(this.f60586b);
        fVar.a(this.f60587c);
        fVar.a(this.f60588d);
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f60588d.M();
    }

    public BigInteger y() {
        return this.f60586b.M();
    }

    public BigInteger z() {
        return this.f60587c.M();
    }
}
