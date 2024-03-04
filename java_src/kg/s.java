package kg;

import kotlin.UByte;
/* loaded from: classes5.dex */
final class s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte a(byte[] bArr, int i9) {
        return bArr[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i9) {
        return (bArr[i9 + 3] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i9) {
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long d(byte[] bArr, int i9) {
        return (bArr[i9 + 7] & 255) | ((bArr[i9] & 255) << 56) | ((bArr[i9 + 1] & 255) << 48) | ((bArr[i9 + 2] & 255) << 40) | ((bArr[i9 + 3] & 255) << 32) | ((bArr[i9 + 4] & 255) << 24) | ((bArr[i9 + 5] & 255) << 16) | ((bArr[i9 + 6] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long e(byte[] bArr, int i9) {
        return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short f(byte[] bArr, int i9) {
        return (short) ((bArr[i9 + 1] & UByte.MAX_VALUE) | (bArr[i9] << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short g(byte[] bArr, int i9) {
        return (short) ((bArr[i9 + 1] << 8) | (bArr[i9] & UByte.MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i9) {
        return (bArr[i9 + 2] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(byte[] bArr, int i9, int i10) {
        bArr[i9] = (byte) i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(byte[] bArr, int i9, int i10) {
        bArr[i9] = (byte) (i10 >>> 24);
        bArr[i9 + 1] = (byte) (i10 >>> 16);
        bArr[i9 + 2] = (byte) (i10 >>> 8);
        bArr[i9 + 3] = (byte) i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(byte[] bArr, int i9, int i10) {
        bArr[i9] = (byte) i10;
        bArr[i9 + 1] = (byte) (i10 >>> 8);
        bArr[i9 + 2] = (byte) (i10 >>> 16);
        bArr[i9 + 3] = (byte) (i10 >>> 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(byte[] bArr, int i9, long j10) {
        bArr[i9] = (byte) (j10 >>> 56);
        bArr[i9 + 1] = (byte) (j10 >>> 48);
        bArr[i9 + 2] = (byte) (j10 >>> 40);
        bArr[i9 + 3] = (byte) (j10 >>> 32);
        bArr[i9 + 4] = (byte) (j10 >>> 24);
        bArr[i9 + 5] = (byte) (j10 >>> 16);
        bArr[i9 + 6] = (byte) (j10 >>> 8);
        bArr[i9 + 7] = (byte) j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(byte[] bArr, int i9, int i10) {
        bArr[i9] = (byte) (i10 >>> 16);
        bArr[i9 + 1] = (byte) (i10 >>> 8);
        bArr[i9 + 2] = (byte) i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void n(byte[] bArr, int i9, int i10) {
        bArr[i9] = (byte) (i10 >>> 8);
        bArr[i9 + 1] = (byte) i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o(byte[] bArr, int i9, int i10) {
        bArr[i9] = (byte) i10;
        bArr[i9 + 1] = (byte) (i10 >>> 8);
    }
}
