package nk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class k {
    public static void a(long[] jArr, int i9, long[] jArr2, int i10) {
        jArr2[i10 + 0] = jArr[i9 + 0];
        jArr2[i10 + 1] = jArr[i9 + 1];
        jArr2[i10 + 2] = jArr[i9 + 2];
        jArr2[i10 + 3] = jArr[i9 + 3];
        jArr2[i10 + 4] = jArr[i9 + 4];
        jArr2[i10 + 5] = jArr[i9 + 5];
        jArr2[i10 + 6] = jArr[i9 + 6];
    }

    public static void b(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    public static long[] c() {
        return new long[7];
    }

    public static long[] d() {
        return new long[14];
    }

    public static boolean e(long[] jArr, long[] jArr2) {
        for (int i9 = 6; i9 >= 0; i9--) {
            if (jArr[i9] != jArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i9 = 1; i9 < 7; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean g(long[] jArr) {
        for (int i9 = 0; i9 < 7; i9++) {
            if (jArr[i9] != 0) {
                return false;
            }
        }
        return true;
    }

    public static BigInteger h(long[] jArr) {
        byte[] bArr = new byte[56];
        for (int i9 = 0; i9 < 7; i9++) {
            long j10 = jArr[i9];
            if (j10 != 0) {
                org.bouncycastle.util.g.i(j10, bArr, (6 - i9) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}