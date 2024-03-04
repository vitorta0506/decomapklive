package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class n {
    public static boolean A(int i9, int[] iArr) {
        for (int i10 = 0; i10 < i9; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int B(int i9, int[] iArr, int[] iArr2) {
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            j10 = (j10 + ((iArr[i10] & 4294967295L) - (4294967295L & iArr2[i10]))) >> 32;
        }
        return (int) j10;
    }

    public static int C(int i9, int i10, int[] iArr, int i11, int[] iArr2, int[] iArr3, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = i11 & 4294967295L;
        long j12 = 0;
        int i13 = 0;
        do {
            int i14 = i12 + i13;
            long j13 = j12 + ((iArr[i13] & 4294967295L) * j10) + ((iArr2[i13] & 4294967295L) * j11) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j13;
            j12 = j13 >>> 32;
            i13++;
        } while (i13 < i9);
        return (int) j12;
    }

    public static int D(int i9, int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = 0;
        int i13 = 0;
        do {
            int i14 = i12 + i13;
            long j12 = j11 + ((iArr[i11 + i13] & 4294967295L) * j10) + (iArr2[i14] & 4294967295L);
            iArr2[i14] = (int) j12;
            j11 = j12 >>> 32;
            i13++;
        } while (i13 < i9);
        return (int) j11;
    }

    public static int E(int i9, int[] iArr, int i10) {
        while (true) {
            i9--;
            if (i9 < 0) {
                return i10 << 31;
            }
            int i11 = iArr[i9];
            iArr[i9] = (i10 << 31) | (i11 >>> 1);
            i10 = i11;
        }
    }

    public static int F(int i9, int[] iArr, int i10, int i11) {
        while (true) {
            i9--;
            if (i9 < 0) {
                return i11 << (-i10);
            }
            int i12 = iArr[i9];
            iArr[i9] = (i11 << (-i10)) | (i12 >>> i10);
            i11 = i12;
        }
    }

    public static int G(int i9, int[] iArr, int i10, int i11, int i12, int[] iArr2, int i13) {
        while (true) {
            i9--;
            if (i9 < 0) {
                return i12 << (-i11);
            }
            int i14 = iArr[i10 + i9];
            iArr2[i13 + i9] = (i12 << (-i11)) | (i14 >>> i11);
            i12 = i14;
        }
    }

    public static int H(int i9, int[] iArr, int i10) {
        while (true) {
            i9--;
            if (i9 < 0) {
                return i10;
            }
            int i11 = iArr[i9];
            iArr[i9] = i10;
            i10 = i11;
        }
    }

    public static int I(int i9, int[] iArr, int i10, int i11, int[] iArr2, int i12) {
        int i13 = 0;
        while (i13 < i9) {
            int i14 = iArr[i10 + i13];
            iArr2[i12 + i13] = (i11 >>> 31) | (i14 << 1);
            i13++;
            i11 = i14;
        }
        return i11 >>> 31;
    }

    public static int J(int i9, int[] iArr, int i10, int[] iArr2) {
        int i11 = 0;
        while (i11 < i9) {
            int i12 = iArr[i11];
            iArr2[i11] = (i10 >>> 31) | (i12 << 1);
            i11++;
            i10 = i12;
        }
        return i10 >>> 31;
    }

    public static long K(int i9, long[] jArr, int i10, long j10, long[] jArr2, int i11) {
        int i12 = 0;
        while (i12 < i9) {
            long j11 = jArr[i10 + i12];
            jArr2[i11 + i12] = (j10 >>> 63) | (j11 << 1);
            i12++;
            j10 = j11;
        }
        return j10 >>> 63;
    }

    public static int L(int i9, int[] iArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i9) {
            int i13 = iArr[i12];
            iArr[i12] = (i11 >>> (-i10)) | (i13 << i10);
            i12++;
            i11 = i13;
        }
        return i11 >>> (-i10);
    }

    public static int M(int i9, int[] iArr, int i10, int i11, int[] iArr2) {
        int i12 = 0;
        while (i12 < i9) {
            int i13 = iArr[i12];
            iArr2[i12] = (i11 >>> (-i10)) | (i13 << i10);
            i12++;
            i11 = i13;
        }
        return i11 >>> (-i10);
    }

    public static long N(int i9, long[] jArr, int i10, int i11, long j10) {
        int i12 = 0;
        while (i12 < i9) {
            int i13 = i10 + i12;
            long j11 = jArr[i13];
            jArr[i13] = (j10 >>> (-i11)) | (j11 << i11);
            i12++;
            j10 = j11;
        }
        return j10 >>> (-i11);
    }

    public static long O(int i9, long[] jArr, int i10, int i11, long j10, long[] jArr2, int i12) {
        int i13 = 0;
        while (i13 < i9) {
            long j11 = jArr[i10 + i13];
            jArr2[i12 + i13] = (j10 >>> (-i11)) | (j11 << i11);
            i13++;
            j10 = j11;
        }
        return j10 >>> (-i11);
    }

    public static int P(int i9, int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            long j11 = j10 + ((iArr[i10] & 4294967295L) - (4294967295L & iArr2[i10]));
            iArr3[i10] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int Q(int i9, int i10, int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - (i10 & 4294967295L);
        iArr[0] = (int) j10;
        long j11 = (j10 >> 32) + ((4294967295L & iArr[1]) - 1);
        iArr[1] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return n(i9, iArr, 2);
    }

    public static int R(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = 0;
        for (int i12 = 0; i12 < i9; i12++) {
            int i13 = i11 + i12;
            long j11 = j10 + ((iArr2[i13] & 4294967295L) - (4294967295L & iArr[i10 + i12]));
            iArr2[i13] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int S(int i9, int[] iArr, int[] iArr2) {
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            long j11 = j10 + ((iArr2[i10] & 4294967295L) - (4294967295L & iArr[i10]));
            iArr2[i10] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int T(int i9, int i10, int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - (4294967295L & i10);
        iArr[0] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return n(i9, iArr, 1);
    }

    public static BigInteger U(int i9, int[] iArr) {
        byte[] bArr = new byte[i9 << 2];
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                org.bouncycastle.util.g.c(i11, bArr, ((i9 - 1) - i10) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void V(int i9, int[] iArr) {
        for (int i10 = 0; i10 < i9; i10++) {
            iArr[i10] = 0;
        }
    }

    public static void W(int i9, long[] jArr) {
        for (int i10 = 0; i10 < i9; i10++) {
            jArr[i10] = 0;
        }
    }

    public static int a(int i9, int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            long j11 = j10 + (iArr[i10] & 4294967295L) + (4294967295L & iArr2[i10]);
            iArr3[i10] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int b(int i9, int i10, int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) + (i10 & 4294967295L);
        iArr[0] = (int) j10;
        long j11 = (j10 >>> 32) + (4294967295L & iArr[1]) + 1;
        iArr[1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return x(i9, iArr, 2);
    }

    public static int c(int i9, int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            long j11 = j10 + (iArr[i10] & 4294967295L) + (iArr2[i10] & 4294967295L) + (4294967295L & iArr3[i10]);
            iArr3[i10] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int d(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = 0;
        for (int i12 = 0; i12 < i9; i12++) {
            int i13 = i11 + i12;
            long j11 = j10 + (iArr[i10 + i12] & 4294967295L) + (4294967295L & iArr2[i13]);
            iArr2[i13] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int e(int i9, int[] iArr, int[] iArr2) {
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            long j11 = j10 + (iArr[i10] & 4294967295L) + (4294967295L & iArr2[i10]);
            iArr2[i10] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int f(int i9, int i10, int[] iArr, int i11) {
        long j10 = (i10 & 4294967295L) + (4294967295L & iArr[i11]);
        iArr[i11] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return x(i9, iArr, i11 + 1);
    }

    public static int g(int i9, int i10, int[] iArr) {
        long j10 = (i10 & 4294967295L) + (4294967295L & iArr[0]);
        iArr[0] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return x(i9, iArr, 1);
    }

    public static int h(int i9, int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (-(i10 & 1)) & 4294967295L;
        long j11 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            long j12 = j11 + (iArr[i11] & 4294967295L) + (iArr2[i11] & j10);
            iArr3[i11] = (int) j12;
            j11 = j12 >>> 32;
        }
        return (int) j11;
    }

    public static int i(int i9, int[] iArr, int[] iArr2) {
        for (int i10 = i9 - 1; i10 >= 0; i10--) {
            int i11 = iArr[i10] ^ Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE ^ iArr2[i10];
            if (i11 < i12) {
                return -1;
            }
            if (i11 > i12) {
                return 1;
            }
        }
        return 0;
    }

    public static void j(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        System.arraycopy(iArr, i10, iArr2, i11, i9);
    }

    public static int[] k(int i9) {
        return new int[i9];
    }

    public static long[] l(int i9) {
        return new long[i9];
    }

    public static int m(int i9, int[] iArr) {
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = iArr[i10] - 1;
            iArr[i10] = i11;
            if (i11 != -1) {
                return 0;
            }
        }
        return -1;
    }

    public static int n(int i9, int[] iArr, int i10) {
        while (i10 < i9) {
            int i11 = iArr[i10] - 1;
            iArr[i10] = i11;
            if (i11 != -1) {
                return 0;
            }
            i10++;
        }
        return -1;
    }

    public static boolean o(int i9, int[] iArr, int[] iArr2) {
        for (int i10 = i9 - 1; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int p(int i9, int[] iArr, int i10) {
        int i11 = i10 ^ iArr[0];
        for (int i12 = 1; i12 < i9; i12++) {
            i11 |= iArr[i12];
        }
        return (((i11 >>> 1) | (i11 & 1)) - 1) >> 31;
    }

    public static int q(int i9, int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static int[] r(int i9, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i9) {
            throw new IllegalArgumentException();
        }
        int i10 = (i9 + 31) >> 5;
        int[] k10 = k(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            k10[i11] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return k10;
    }

    public static long[] s(int i9, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i9) {
            throw new IllegalArgumentException();
        }
        int i10 = (i9 + 63) >> 6;
        long[] l10 = l(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            l10[i11] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return l10;
    }

    public static int t(int[] iArr, int i9) {
        int i10;
        if (i9 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i9 >> 5;
            if (i11 < 0 || i11 >= iArr.length) {
                return 0;
            }
            i10 = iArr[i11] >>> (i9 & 31);
        }
        return i10 & 1;
    }

    public static boolean u(int i9, int[] iArr, int[] iArr2) {
        for (int i10 = i9 - 1; i10 >= 0; i10--) {
            int i11 = iArr[i10] ^ Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE ^ iArr2[i10];
            if (i11 < i12) {
                return false;
            }
            if (i11 > i12) {
                return true;
            }
        }
        return true;
    }

    public static int v(int i9, int[] iArr) {
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = iArr[i10] + 1;
            iArr[i10] = i11;
            if (i11 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int w(int i9, int[] iArr, int[] iArr2) {
        int i10 = 0;
        while (i10 < i9) {
            int i11 = iArr[i10] + 1;
            iArr2[i10] = i11;
            i10++;
            if (i11 != 0) {
                while (i10 < i9) {
                    iArr2[i10] = iArr[i10];
                    i10++;
                }
                return 0;
            }
        }
        return 1;
    }

    public static int x(int i9, int[] iArr, int i10) {
        while (i10 < i9) {
            int i11 = iArr[i10] + 1;
            iArr[i10] = i11;
            if (i11 != 0) {
                return 0;
            }
            i10++;
        }
        return 1;
    }

    public static int y(int i9, int[] iArr, int i10, int i11) {
        while (i11 < i9) {
            int i12 = i10 + i11;
            int i13 = iArr[i12] + 1;
            iArr[i12] = i13;
            if (i13 != 0) {
                return 0;
            }
            i11++;
        }
        return 1;
    }

    public static boolean z(int i9, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < i9; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }
}
