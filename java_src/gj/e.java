package gj;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class e extends m {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f40174a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f40175b;

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f40176c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f40177d;

    /* renamed from: e  reason: collision with root package name */
    private BigInteger f40178e;

    /* renamed from: f  reason: collision with root package name */
    private BigInteger f40179f;

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f40180g;

    /* renamed from: h  reason: collision with root package name */
    private BigInteger f40181h;

    /* renamed from: i  reason: collision with root package name */
    private BigInteger f40182i;

    /* renamed from: j  reason: collision with root package name */
    private s f40183j;

    public e(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this.f40183j = null;
        this.f40174a = BigInteger.valueOf(0L);
        this.f40175b = bigInteger;
        this.f40176c = bigInteger2;
        this.f40177d = bigInteger3;
        this.f40178e = bigInteger4;
        this.f40179f = bigInteger5;
        this.f40180g = bigInteger6;
        this.f40181h = bigInteger7;
        this.f40182i = bigInteger8;
    }

    private e(s sVar) {
        this.f40183j = null;
        Enumeration N = sVar.N();
        k kVar = (k) N.nextElement();
        int R = kVar.R();
        if (R < 0 || R > 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.f40174a = kVar.N();
        this.f40175b = ((k) N.nextElement()).N();
        this.f40176c = ((k) N.nextElement()).N();
        this.f40177d = ((k) N.nextElement()).N();
        this.f40178e = ((k) N.nextElement()).N();
        this.f40179f = ((k) N.nextElement()).N();
        this.f40180g = ((k) N.nextElement()).N();
        this.f40181h = ((k) N.nextElement()).N();
        this.f40182i = ((k) N.nextElement()).N();
        if (N.hasMoreElements()) {
            this.f40183j = (s) N.nextElement();
        }
    }

    public static e B(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(s.K(obj));
        }
        return null;
    }

    public BigInteger F() {
        return this.f40175b;
    }

    public BigInteger G() {
        return this.f40178e;
    }

    public BigInteger H() {
        return this.f40179f;
    }

    public BigInteger I() {
        return this.f40177d;
    }

    public BigInteger J() {
        return this.f40176c;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(10);
        fVar.a(new k(this.f40174a));
        fVar.a(new k(F()));
        fVar.a(new k(J()));
        fVar.a(new k(I()));
        fVar.a(new k(G()));
        fVar.a(new k(H()));
        fVar.a(new k(y()));
        fVar.a(new k(z()));
        fVar.a(new k(x()));
        s sVar = this.f40183j;
        if (sVar != null) {
            fVar.a(sVar);
        }
        return new a1(fVar);
    }

    public BigInteger x() {
        return this.f40182i;
    }

    public BigInteger y() {
        return this.f40180g;
    }

    public BigInteger z() {
        return this.f40181h;
    }
}
