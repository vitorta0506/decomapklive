package pj;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class i extends org.bouncycastle.asn1.m implements o {

    /* renamed from: g  reason: collision with root package name */
    private static final BigInteger f56937g = BigInteger.valueOf(1);

    /* renamed from: a  reason: collision with root package name */
    private m f56938a;

    /* renamed from: b  reason: collision with root package name */
    private fk.e f56939b;

    /* renamed from: c  reason: collision with root package name */
    private k f56940c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f56941d;

    /* renamed from: e  reason: collision with root package name */
    private BigInteger f56942e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f56943f;

    public i(fk.e eVar, k kVar, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eVar, kVar, bigInteger, bigInteger2, null);
    }

    public i(fk.e eVar, k kVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        m mVar;
        this.f56939b = eVar;
        this.f56940c = kVar;
        this.f56941d = bigInteger;
        this.f56942e = bigInteger2;
        this.f56943f = org.bouncycastle.util.a.e(bArr);
        if (fk.c.e(eVar)) {
            mVar = new m(eVar.p().b());
        } else if (!fk.c.c(eVar)) {
            throw new IllegalArgumentException("'curve' is of an unsupported type");
        } else {
            int[] a10 = ((mk.f) eVar.p()).c().a();
            if (a10.length == 3) {
                mVar = new m(a10[2], a10[1]);
            } else if (a10.length != 5) {
                throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
            } else {
                mVar = new m(a10[4], a10[1], a10[2], a10[3]);
            }
        }
        this.f56938a = mVar;
    }

    private i(s sVar) {
        if (!(sVar.M(0) instanceof org.bouncycastle.asn1.k) || !((org.bouncycastle.asn1.k) sVar.M(0)).O(f56937g)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        this.f56941d = ((org.bouncycastle.asn1.k) sVar.M(4)).N();
        if (sVar.size() == 6) {
            this.f56942e = ((org.bouncycastle.asn1.k) sVar.M(5)).N();
        }
        h hVar = new h(m.y(sVar.M(1)), this.f56941d, this.f56942e, s.K(sVar.M(2)));
        this.f56939b = hVar.x();
        org.bouncycastle.asn1.e M = sVar.M(3);
        if (M instanceof k) {
            this.f56940c = (k) M;
        } else {
            this.f56940c = new k(this.f56939b, (org.bouncycastle.asn1.o) M);
        }
        this.f56943f = hVar.y();
    }

    public static i B(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(s.K(obj));
        }
        return null;
    }

    public BigInteger F() {
        return this.f56941d;
    }

    public byte[] G() {
        return org.bouncycastle.util.a.e(this.f56943f);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(6);
        fVar.a(new org.bouncycastle.asn1.k(f56937g));
        fVar.a(this.f56938a);
        fVar.a(new h(this.f56939b, this.f56943f));
        fVar.a(this.f56940c);
        fVar.a(new org.bouncycastle.asn1.k(this.f56941d));
        BigInteger bigInteger = this.f56942e;
        if (bigInteger != null) {
            fVar.a(new org.bouncycastle.asn1.k(bigInteger));
        }
        return new a1(fVar);
    }

    public fk.e x() {
        return this.f56939b;
    }

    public fk.i y() {
        return this.f56940c.x();
    }

    public BigInteger z() {
        return this.f56942e;
    }
}
