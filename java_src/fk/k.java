package fk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class k extends b {
    @Override // fk.b
    protected i c(i iVar, BigInteger bigInteger) {
        int a10;
        e i9 = iVar.i();
        if (bigInteger.bitLength() <= m.a(i9)) {
            l b10 = m.b(iVar);
            g a11 = b10.a();
            int c10 = b10.c();
            int i10 = ((a10 + c10) - 1) / c10;
            i r10 = i9.r();
            int i11 = c10 * i10;
            int[] r11 = nk.n.r(i11, bigInteger);
            int i12 = i11 - 1;
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = 0;
                for (int i15 = i12 - i13; i15 >= 0; i15 -= i10) {
                    int i16 = r11[i15 >>> 5] >>> (i15 & 31);
                    i14 = ((i14 ^ (i16 >>> 1)) << 1) ^ i16;
                }
                r10 = r10.F(a11.a(i14));
            }
            return r10.a(b10.b());
        }
        throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
    }
}
