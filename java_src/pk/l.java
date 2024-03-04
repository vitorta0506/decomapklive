package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class l extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final int f57067a;

    /* renamed from: b  reason: collision with root package name */
    private final long f57068b;

    /* renamed from: c  reason: collision with root package name */
    private final long f57069c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f57070d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f57071e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f57072f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f57073g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f57074h;

    public l(long j10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f57067a = 0;
        this.f57068b = j10;
        this.f57070d = org.bouncycastle.util.a.e(bArr);
        this.f57071e = org.bouncycastle.util.a.e(bArr2);
        this.f57072f = org.bouncycastle.util.a.e(bArr3);
        this.f57073g = org.bouncycastle.util.a.e(bArr4);
        this.f57074h = org.bouncycastle.util.a.e(bArr5);
        this.f57069c = -1L;
    }

    public l(long j10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, long j11) {
        this.f57067a = 1;
        this.f57068b = j10;
        this.f57070d = org.bouncycastle.util.a.e(bArr);
        this.f57071e = org.bouncycastle.util.a.e(bArr2);
        this.f57072f = org.bouncycastle.util.a.e(bArr3);
        this.f57073g = org.bouncycastle.util.a.e(bArr4);
        this.f57074h = org.bouncycastle.util.a.e(bArr5);
        this.f57069c = j11;
    }

    private l(s sVar) {
        long j10;
        org.bouncycastle.asn1.k K = org.bouncycastle.asn1.k.K(sVar.M(0));
        if (!K.O(org.bouncycastle.util.b.f56259a) && !K.O(org.bouncycastle.util.b.f56260b)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f57067a = K.R();
        if (sVar.size() != 2 && sVar.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        s K2 = s.K(sVar.M(1));
        this.f57068b = org.bouncycastle.asn1.k.K(K2.M(0)).b0();
        this.f57070d = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(1)).M());
        this.f57071e = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(2)).M());
        this.f57072f = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(3)).M());
        this.f57073g = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(4)).M());
        if (K2.size() == 6) {
            y K3 = y.K(K2.M(5));
            if (K3.N() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            j10 = org.bouncycastle.asn1.k.L(K3, false).b0();
        } else if (K2.size() != 5) {
            throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
        } else {
            j10 = -1;
        }
        this.f57069c = j10;
        if (sVar.size() == 3) {
            this.f57074h = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.L(y.K(sVar.M(2)), true).M());
        } else {
            this.f57074h = null;
        }
    }

    public static l z(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(s.K(obj));
        }
        return null;
    }

    public long B() {
        return this.f57069c;
    }

    public byte[] F() {
        return org.bouncycastle.util.a.e(this.f57072f);
    }

    public byte[] G() {
        return org.bouncycastle.util.a.e(this.f57073g);
    }

    public byte[] H() {
        return org.bouncycastle.util.a.e(this.f57071e);
    }

    public byte[] I() {
        return org.bouncycastle.util.a.e(this.f57070d);
    }

    public int J() {
        return this.f57067a;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(this.f57069c >= 0 ? new org.bouncycastle.asn1.k(1L) : new org.bouncycastle.asn1.k(0L));
        org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f();
        fVar2.a(new org.bouncycastle.asn1.k(this.f57068b));
        fVar2.a(new w0(this.f57070d));
        fVar2.a(new w0(this.f57071e));
        fVar2.a(new w0(this.f57072f));
        fVar2.a(new w0(this.f57073g));
        long j10 = this.f57069c;
        if (j10 >= 0) {
            fVar2.a(new d1(false, 0, new org.bouncycastle.asn1.k(j10)));
        }
        fVar.a(new a1(fVar2));
        fVar.a(new d1(true, 0, new w0(this.f57074h)));
        return new a1(fVar);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.e(this.f57074h);
    }

    public long y() {
        return this.f57068b;
    }
}
