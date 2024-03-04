package cl;

import kotlin.UByte;
/* loaded from: classes7.dex */
public final class f {
    public static void a(int i9, byte[] bArr, int i10) {
        int i11 = i10 + 1;
        bArr[i10] = (byte) i9;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i9 >>> 8);
        bArr[i12] = (byte) (i9 >>> 16);
        bArr[i12 + 1] = (byte) (i9 >>> 24);
    }

    public static void b(int i9, byte[] bArr, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            bArr[i10 + i12] = (byte) (i9 >>> (i12 * 8));
        }
    }

    public static byte[] c(int i9) {
        return new byte[]{(byte) i9, (byte) (i9 >>> 8), (byte) (i9 >>> 16), (byte) (i9 >>> 24)};
    }

    public static int d(byte[] bArr) {
        return ((bArr[3] & UByte.MAX_VALUE) << 24) | (bArr[0] & UByte.MAX_VALUE) | ((bArr[1] & UByte.MAX_VALUE) << 8) | ((bArr[2] & UByte.MAX_VALUE) << 16);
    }

    public static int e(byte[] bArr, int i9) {
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i10] & UByte.MAX_VALUE) << 8);
        return ((bArr[i11 + 1] & UByte.MAX_VALUE) << 24) | i12 | ((bArr[i11] & UByte.MAX_VALUE) << 16);
    }

    public static int f(byte[] bArr, int i9, int i10) {
        int i11 = 0;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 |= (bArr[i9 + i12] & 255) << (i12 * 8);
        }
        return i11;
    }
}
