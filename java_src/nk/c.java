package nk;

import java.util.Random;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
/* loaded from: classes7.dex */
public abstract class c {
    private static int a(int i9, int[] iArr, int[] iArr2) {
        int i10 = i9 - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i11 + iArr[i12] + iArr2[i12];
            iArr[i12] = 1073741823 & i13;
            i11 = i13 >> 30;
        }
        int i14 = i11 + iArr[i10] + iArr2[i10];
        iArr[i10] = i14;
        return i14 >> 30;
    }

    private static int b(int i9, int i10, int[] iArr, int[] iArr2) {
        int i11 = i9 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + iArr[i13] + (iArr2[i13] & i10);
            iArr[i13] = 1073741823 & i14;
            i12 = i14 >> 30;
        }
        int i15 = i12 + iArr[i11] + (i10 & iArr2[i11]);
        iArr[i11] = i15;
        return i15 >> 30;
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        if (l(iArr, iArr2, iArr3) == 0) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    private static int d(int i9, int i10, int[] iArr) {
        int i11 = i9 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + ((iArr[i13] ^ i10) - i10);
            iArr[i13] = 1073741823 & i14;
            i12 = i14 >> 30;
        }
        int i15 = i12 + ((iArr[i11] ^ i10) - i10);
        iArr[i11] = i15;
        return i15 >> 30;
    }

    private static int e(int i9, int i10, int[] iArr, int[] iArr2) {
        int i11 = i9 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + (iArr[i13] - (iArr2[i13] & i10));
            iArr[i13] = 1073741823 & i14;
            i12 = i14 >> 30;
        }
        int i15 = i12 + (iArr[i11] - (i10 & iArr2[i11]));
        iArr[i11] = i15;
        return i15 >> 30;
    }

    private static void f(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = 0;
        long j10 = 0;
        while (i9 > 0) {
            while (i12 < Math.min(32, i9)) {
                j10 |= iArr[i10] << i12;
                i12 += 30;
                i10++;
            }
            iArr2[i11] = (int) j10;
            j10 >>>= 32;
            i12 -= 32;
            i9 -= 32;
            i11++;
        }
    }

    private static int g(int i9, int i10, int i11, int[] iArr) {
        int i12 = 1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1;
        for (int i16 = 0; i16 < 30; i16++) {
            int i17 = i9 >> 31;
            int i18 = -(i11 & 1);
            int i19 = i11 + (((i10 ^ i17) - i17) & i18);
            i14 += ((i12 ^ i17) - i17) & i18;
            i15 += ((i13 ^ i17) - i17) & i18;
            int i20 = i17 & i18;
            i9 = (i9 ^ i20) - (i20 + 1);
            i10 += i19 & i20;
            i11 = i19 >> 1;
            i12 = (i12 + (i14 & i20)) << 1;
            i13 = (i13 + (i20 & i15)) << 1;
        }
        iArr[0] = i12;
        iArr[1] = i13;
        iArr[2] = i14;
        iArr[3] = i15;
        return i9;
    }

    private static int h(int i9, int i10, int i11, int[] iArr) {
        int i12;
        int i13 = i9;
        int i14 = i10;
        int i15 = i11;
        int i16 = 30;
        int i17 = 1;
        int i18 = 0;
        int i19 = 0;
        int i20 = 1;
        while (true) {
            int b10 = org.bouncycastle.util.e.b(((-1) << i16) | i15);
            int i21 = i15 >> b10;
            i17 <<= b10;
            i18 <<= b10;
            i13 -= b10;
            i16 -= b10;
            if (i16 <= 0) {
                iArr[0] = i17;
                iArr[1] = i18;
                iArr[2] = i19;
                iArr[3] = i20;
                return i13;
            }
            if (i13 < 0) {
                i13 = -i13;
                int i22 = -i14;
                int i23 = -i17;
                int i24 = -i18;
                int i25 = i13 + 1;
                if (i25 > i16) {
                    i25 = i16;
                }
                i12 = ((-1) >>> (32 - i25)) & 63 & (i21 * i22 * ((i21 * i21) - 2));
                i21 = i22;
                i14 = i21;
                int i26 = i19;
                i19 = i23;
                i17 = i26;
                int i27 = i20;
                i20 = i24;
                i18 = i27;
            } else {
                int i28 = i13 + 1;
                if (i28 > i16) {
                    i28 = i16;
                }
                i12 = ((-1) >>> (32 - i28)) & 15 & ((-((((i14 + 1) & 4) << 1) + i14)) * i21);
            }
            i15 = i21 + (i14 * i12);
            i19 += i17 * i12;
            i20 += i12 * i18;
        }
    }

    private static void i(int i9, int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = 0;
        long j10 = 0;
        while (i9 > 0) {
            if (i12 < Math.min(30, i9)) {
                j10 |= (iArr[i10] & 4294967295L) << i12;
                i12 += 32;
                i10++;
            }
            iArr2[i11] = ((int) j10) & LockFreeTaskQueueCore.MAX_CAPACITY_MASK;
            j10 >>>= 30;
            i12 -= 30;
            i9 -= 30;
            i11++;
        }
    }

    private static int j(int i9) {
        return ((i9 * 49) + (i9 < 46 ? 80 : 47)) / 17;
    }

    public static int k(int i9) {
        int i10 = (2 - (i9 * i9)) * i9;
        int i11 = i10 * (2 - (i9 * i10));
        int i12 = i11 * (2 - (i9 * i11));
        return i12 * (2 - (i9 * i12));
    }

    public static int l(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int a10 = (length << 5) - org.bouncycastle.util.e.a(iArr[length - 1]);
        int i9 = (a10 + 29) / 30;
        int i10 = (-k(iArr[0])) << 2;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i9];
        int[] iArr6 = new int[i9];
        int[] iArr7 = new int[i9];
        int[] iArr8 = new int[i9];
        int[] iArr9 = new int[i9];
        iArr6[0] = 1;
        i(a10, iArr2, 0, iArr8, 0);
        i(a10, iArr, 0, iArr9, 0);
        System.arraycopy(iArr9, 0, iArr7, 0, i9);
        int j10 = j(a10);
        int i11 = -1;
        int i12 = 0;
        while (i12 < j10) {
            int g10 = g(i11, iArr7[0], iArr8[0], iArr4);
            int[] iArr10 = iArr9;
            int[] iArr11 = iArr8;
            q(i9, iArr5, iArr6, iArr4, i10, iArr10);
            r(i9, iArr7, iArr11, iArr4);
            i12 += 30;
            iArr9 = iArr10;
            iArr8 = iArr11;
            i11 = g10;
        }
        int[] iArr12 = iArr9;
        int i13 = iArr7[i9 - 1] >> 31;
        d(i9, i13, iArr7);
        b(i9, b(i9, e(i9, ~d(i9, i13, iArr5), iArr5, iArr12), iArr5, iArr12), iArr5, iArr12);
        f(a10, iArr5, 0, iArr3, 0);
        return n.p(i9, iArr7, 1) & n.q(i9, iArr8);
    }

    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v4 */
    public static boolean m(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4;
        int p10;
        int length = iArr.length;
        int a10 = (length << 5) - org.bouncycastle.util.e.a(iArr[length - 1]);
        int i9 = (a10 + 29) / 30;
        ?? r10 = 0;
        int i10 = (-k(iArr[0])) << 2;
        int[] iArr5 = new int[4];
        int[] iArr6 = new int[i9];
        int[] iArr7 = new int[i9];
        int[] iArr8 = new int[i9];
        int[] iArr9 = new int[i9];
        int[] iArr10 = new int[i9];
        iArr7[0] = 1;
        i(a10, iArr2, 0, iArr9, 0);
        i(a10, iArr, 0, iArr10, 0);
        System.arraycopy(iArr10, 0, iArr8, 0, i9);
        int i11 = i9 - 1;
        int a11 = (-1) - (org.bouncycastle.util.e.a(iArr9[i11] | 1) - (((i9 * 30) + 2) - a10));
        int j10 = j(a10);
        int i12 = i9;
        int i13 = 0;
        while (!n.A(i12, iArr9)) {
            if (i13 >= j10) {
                return r10;
            }
            int i14 = i13 + 30;
            int h10 = h(a11, iArr8[r10], iArr9[r10], iArr5);
            int i15 = i12;
            int i16 = j10;
            int[] iArr11 = iArr10;
            int[] iArr12 = iArr9;
            q(i9, iArr6, iArr7, iArr5, i10, iArr11);
            r(i15, iArr8, iArr12, iArr5);
            int i17 = i15 - 1;
            int i18 = iArr8[i17];
            int i19 = iArr12[i17];
            int i20 = i15 - 2;
            if (((i20 >> 31) | ((i18 >> 31) ^ i18) | ((i19 >> 31) ^ i19)) == 0) {
                iArr8[i20] = (i18 << 30) | iArr8[i20];
                iArr12[i20] = iArr12[i20] | (i19 << 30);
                i12 = i15 - 1;
            } else {
                i12 = i15;
            }
            iArr10 = iArr11;
            a11 = h10;
            iArr9 = iArr12;
            i13 = i14;
            j10 = i16;
            r10 = 0;
        }
        int i21 = i12;
        int[] iArr13 = iArr10;
        if ((iArr8[i21 - 1] >> 31) != 0) {
            n(i21, iArr8);
            n(i9, iArr6);
        }
        if (n.z(i21, iArr8)) {
            if ((iArr6[i11] >> 31) < 0) {
                iArr4 = iArr13;
                p10 = a(i9, iArr6, iArr4);
            } else {
                iArr4 = iArr13;
                p10 = p(i9, iArr6, iArr4);
            }
            if (p10 < 0) {
                a(i9, iArr6, iArr4);
            }
            f(a10, iArr6, 0, iArr3, 0);
            return true;
        }
        return false;
    }

    private static int n(int i9, int[] iArr) {
        int i10 = i9 - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i11 - iArr[i12];
            iArr[i12] = 1073741823 & i13;
            i11 = i13 >> 30;
        }
        int i14 = i11 - iArr[i10];
        iArr[i10] = i14;
        return i14 >> 30;
    }

    public static int[] o(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] k10 = n.k(length);
        int i9 = length - 1;
        int i10 = iArr[i9];
        int i11 = i10 | (i10 >>> 1);
        int i12 = i11 | (i11 >>> 2);
        int i13 = i12 | (i12 >>> 4);
        int i14 = i13 | (i13 >>> 8);
        int i15 = i14 | (i14 >>> 16);
        do {
            for (int i16 = 0; i16 != length; i16++) {
                k10[i16] = random.nextInt();
            }
            k10[i9] = k10[i9] & i15;
        } while (n.u(length, k10, iArr));
        return k10;
    }

    private static int p(int i9, int[] iArr, int[] iArr2) {
        int i10 = i9 - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i11 + (iArr[i12] - iArr2[i12]);
            iArr[i12] = 1073741823 & i13;
            i11 = i13 >> 30;
        }
        int i14 = i11 + (iArr[i10] - iArr2[i10]);
        iArr[i10] = i14;
        return i14 >> 30;
    }

    private static void q(int i9, int[] iArr, int[] iArr2, int[] iArr3, int i10, int[] iArr4) {
        int i11 = iArr3[0];
        int i12 = iArr3[1];
        int i13 = iArr3[2];
        int i14 = iArr3[3];
        long j10 = i11;
        long j11 = iArr[0];
        long j12 = i12;
        long j13 = iArr2[0];
        long j14 = (j10 * j11) + (j12 * j13);
        long j15 = i13;
        long j16 = i14;
        long j17 = (j11 * j15) + (j13 * j16);
        long j18 = (((int) j14) * i10) >> 2;
        long j19 = (((int) j17) * i10) >> 2;
        long j20 = (j14 + (iArr4[0] * j18)) >> 30;
        long j21 = (j17 + (iArr4[0] * j19)) >> 30;
        int i15 = 1;
        while (i15 < i9) {
            long j22 = j19;
            long j23 = iArr[i15];
            long j24 = j10 * j23;
            long j25 = j10;
            long j26 = iArr2[i15];
            long j27 = j20 + j24 + (j12 * j26) + (iArr4[i15] * j18);
            long j28 = j21 + (j23 * j15) + (j26 * j16) + (iArr4[i15] * j22);
            int i16 = i15 - 1;
            iArr[i16] = ((int) j27) & LockFreeTaskQueueCore.MAX_CAPACITY_MASK;
            j20 = j27 >> 30;
            iArr2[i16] = 1073741823 & ((int) j28);
            j21 = j28 >> 30;
            i15++;
            j19 = j22;
            j10 = j25;
        }
        int i17 = i9 - 1;
        iArr[i17] = (int) j20;
        iArr2[i17] = (int) j21;
    }

    private static void r(int i9, int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = iArr3[0];
        int i11 = iArr3[1];
        int i12 = iArr3[2];
        int i13 = iArr3[3];
        long j10 = i10;
        long j11 = iArr[0];
        long j12 = i11;
        long j13 = iArr2[0];
        long j14 = i12;
        long j15 = i13;
        long j16 = ((j10 * j11) + (j12 * j13)) >> 30;
        long j17 = ((j11 * j14) + (j13 * j15)) >> 30;
        int i14 = 1;
        while (i14 < i9) {
            int i15 = iArr[i14];
            int i16 = iArr2[i14];
            int i17 = i14;
            long j18 = i15;
            long j19 = j10 * j18;
            long j20 = j10;
            long j21 = i16;
            long j22 = j16 + j19 + (j12 * j21);
            long j23 = j17 + (j18 * j14) + (j21 * j15);
            int i18 = i17 - 1;
            iArr[i18] = ((int) j22) & LockFreeTaskQueueCore.MAX_CAPACITY_MASK;
            j16 = j22 >> 30;
            iArr2[i18] = 1073741823 & ((int) j23);
            j17 = j23 >> 30;
            i14 = i17 + 1;
            j10 = j20;
        }
        int i19 = i9 - 1;
        iArr[i19] = (int) j16;
        iArr2[i19] = (int) j17;
    }
}
