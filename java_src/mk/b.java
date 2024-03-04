package mk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    static final a f55168a = new g(BigInteger.valueOf(2));

    /* renamed from: b  reason: collision with root package name */
    static final a f55169b = new g(BigInteger.valueOf(3));

    public static f a(int[] iArr) {
        if (iArr[0] == 0) {
            for (int i9 = 1; i9 < iArr.length; i9++) {
                if (iArr[i9] <= iArr[i9 - 1]) {
                    throw new IllegalArgumentException("Polynomial exponents must be monotonically increasing");
                }
            }
            return new d(f55168a, new c(iArr));
        }
        throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
    }

    public static a b(BigInteger bigInteger) {
        int bitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || bitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (bitLength < 3) {
            int intValue = bigInteger.intValue();
            if (intValue == 2) {
                return f55168a;
            }
            if (intValue == 3) {
                return f55169b;
            }
        }
        return new g(bigInteger);
    }
}
