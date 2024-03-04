package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class n extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final int f57077a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57078b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f57079c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f57080d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f57081e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f57082f;

    /* renamed from: g  reason: collision with root package name */
    private final int f57083g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f57084h;

    public n(int i9, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f57077a = 0;
        this.f57078b = i9;
        this.f57079c = org.bouncycastle.util.a.e(bArr);
        this.f57080d = org.bouncycastle.util.a.e(bArr2);
        this.f57081e = org.bouncycastle.util.a.e(bArr3);
        this.f57082f = org.bouncycastle.util.a.e(bArr4);
        this.f57084h = org.bouncycastle.util.a.e(bArr5);
        this.f57083g = -1;
    }

    public n(int i9, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i10) {
        this.f57077a = 1;
        this.f57078b = i9;
        this.f57079c = org.bouncycastle.util.a.e(bArr);
        this.f57080d = org.bouncycastle.util.a.e(bArr2);
        this.f57081e = org.bouncycastle.util.a.e(bArr3);
        this.f57082f = org.bouncycastle.util.a.e(bArr4);
        this.f57084h = org.bouncycastle.util.a.e(bArr5);
        this.f57083g = i10;
    }

    private n(s sVar) {
        int i9;
        org.bouncycastle.asn1.k K = org.bouncycastle.asn1.k.K(sVar.M(0));
        if (!K.O(org.bouncycastle.util.b.f56259a) && !K.O(org.bouncycastle.util.b.f56260b)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f57077a = K.R();
        if (sVar.size() != 2 && sVar.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        s K2 = s.K(sVar.M(1));
        this.f57078b = org.bouncycastle.asn1.k.K(K2.M(0)).R();
        this.f57079c = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(1)).M());
        this.f57080d = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(2)).M());
        this.f57081e = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(3)).M());
        this.f57082f = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(K2.M(4)).M());
        if (K2.size() == 6) {
            y K3 = y.K(K2.M(5));
            if (K3.N() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            i9 = org.bouncycastle.asn1.k.L(K3, false).R();
        } else if (K2.size() != 5) {
            throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
        } else {
            i9 = -1;
        }
        this.f57083g = i9;
        if (sVar.size() == 3) {
            this.f57084h = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.L(y.K(sVar.M(2)), true).M());
        } else {
            this.f57084h = null;
        }
    }

    public static n z(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(s.K(obj));
        }
        return null;
    }

    public int B() {
        return this.f57083g;
    }

    public byte[] F() {
        return org.bouncycastle.util.a.e(this.f57081e);
    }

    public byte[] G() {
        return org.bouncycastle.util.a.e(this.f57082f);
    }

    public byte[] H() {
        return org.bouncycastle.util.a.e(this.f57080d);
    }

    public byte[] I() {
        return org.bouncycastle.util.a.e(this.f57079c);
    }

    public int J() {
        return this.f57077a;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(this.f57083g >= 0 ? new org.bouncycastle.asn1.k(1L) : new org.bouncycastle.asn1.k(0L));
        org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f();
        fVar2.a(new org.bouncycastle.asn1.k(this.f57078b));
        fVar2.a(new w0(this.f57079c));
        fVar2.a(new w0(this.f57080d));
        fVar2.a(new w0(this.f57081e));
        fVar2.a(new w0(this.f57082f));
        int i9 = this.f57083g;
        if (i9 >= 0) {
            fVar2.a(new d1(false, 0, new org.bouncycastle.asn1.k(i9)));
        }
        fVar.a(new a1(fVar2));
        fVar.a(new d1(true, 0, new w0(this.f57084h)));
        return new a1(fVar);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.e(this.f57084h);
    }

    public int y() {
        return this.f57078b;
    }
}
