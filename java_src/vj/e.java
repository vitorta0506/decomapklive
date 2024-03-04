package vj;

import java.math.BigInteger;
import java.util.Objects;
/* loaded from: classes7.dex */
public class e extends b {

    /* renamed from: d  reason: collision with root package name */
    private static final BigInteger f59191d = BigInteger.valueOf(1);

    /* renamed from: e  reason: collision with root package name */
    private static final BigInteger f59192e = BigInteger.valueOf(2);

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59193c;

    public e(BigInteger bigInteger, c cVar) {
        super(false, cVar);
        this.f59193c = e(bigInteger, cVar);
    }

    private static int d(BigInteger bigInteger, BigInteger bigInteger2) {
        int bitLength = bigInteger2.bitLength();
        int[] r10 = nk.n.r(bitLength, bigInteger);
        int[] r11 = nk.n.r(bitLength, bigInteger2);
        int length = r11.length;
        int i9 = 0;
        while (true) {
            if (r10[0] == 0) {
                nk.n.H(length, r10, 0);
            } else {
                int b10 = org.bouncycastle.util.e.b(r10[0]);
                if (b10 > 0) {
                    nk.n.F(length, r10, b10, 0);
                    int i10 = r11[0];
                    i9 ^= (b10 << 1) & (i10 ^ (i10 >>> 1));
                }
                int i11 = nk.n.i(length, r10, r11);
                if (i11 == 0) {
                    break;
                }
                if (i11 < 0) {
                    i9 ^= r10[0] & r11[0];
                    int[] iArr = r11;
                    r11 = r10;
                    r10 = iArr;
                }
                while (true) {
                    int i12 = length - 1;
                    if (r10[i12] != 0) {
                        break;
                    }
                    length = i12;
                }
                nk.n.P(length, r10, r11, r10);
            }
        }
        if (nk.n.z(length, r11)) {
            return 1 - (i9 & 2);
        }
        return 0;
    }

    private BigInteger e(BigInteger bigInteger, c cVar) {
        Objects.requireNonNull(bigInteger, "y value cannot be null");
        BigInteger f10 = cVar.f();
        BigInteger bigInteger2 = f59192e;
        if (bigInteger.compareTo(bigInteger2) < 0 || bigInteger.compareTo(f10.subtract(bigInteger2)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        }
        BigInteger g10 = cVar.g();
        if (g10 == null) {
            return bigInteger;
        }
        if (f10.testBit(0) && f10.bitLength() - 1 == g10.bitLength() && f10.shiftRight(1).equals(g10)) {
            if (1 == d(bigInteger, f10)) {
                return bigInteger;
            }
        } else if (f59191d.equals(bigInteger.modPow(g10, f10))) {
            return bigInteger;
        }
        throw new IllegalArgumentException("Y value does not appear to be in correct group");
    }

    public BigInteger c() {
        return this.f59193c;
    }

    @Override // vj.b
    public boolean equals(Object obj) {
        return (obj instanceof e) && ((e) obj).c().equals(this.f59193c) && super.equals(obj);
    }

    @Override // vj.b
    public int hashCode() {
        return this.f59193c.hashCode() ^ super.hashCode();
    }
}
