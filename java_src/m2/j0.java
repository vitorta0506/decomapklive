package m2;
/* loaded from: classes.dex */
public final class j0 {
    public static int a(byte[] bArr, int i9, int i10) {
        while (i9 < i10 && bArr[i9] != 71) {
            i9++;
        }
        return i9;
    }

    public static boolean b(byte[] bArr, int i9, int i10, int i11) {
        int i12 = 0;
        for (int i13 = -4; i13 <= 4; i13++) {
            int i14 = (i13 * 188) + i11;
            if (i14 < i9 || i14 >= i10 || bArr[i14] != 71) {
                i12 = 0;
            } else {
                i12++;
                if (i12 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long c(com.google.android.exoplayer2.util.b0 b0Var, int i9, int i10) {
        b0Var.P(i9);
        if (b0Var.a() < 5) {
            return -9223372036854775807L;
        }
        int n9 = b0Var.n();
        if ((8388608 & n9) == 0 && ((2096896 & n9) >> 8) == i10) {
            if (((n9 & 32) != 0) && b0Var.D() >= 7 && b0Var.a() >= 7) {
                if ((b0Var.D() & 16) == 16) {
                    byte[] bArr = new byte[6];
                    b0Var.j(bArr, 0, 6);
                    return d(bArr);
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private static long d(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
