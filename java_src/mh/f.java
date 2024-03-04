package mh;

import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes7.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f55114a = b();

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f55115b = a();

    private static byte[] a() {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i9 = 0; i9 < 16; i9++) {
            bArr["0123456789abcdef".charAt(i9)] = (byte) i9;
        }
        return bArr;
    }

    private static char[] b() {
        char[] cArr = new char[512];
        for (int i9 = 0; i9 < 256; i9++) {
            cArr[i9] = "0123456789abcdef".charAt(i9 >>> 4);
            cArr[i9 | 256] = "0123456789abcdef".charAt(i9 & 15);
        }
        return cArr;
    }

    private static void c(byte b10, char[] cArr, int i9) {
        int i10 = b10 & UByte.MAX_VALUE;
        char[] cArr2 = f55114a;
        cArr[i9] = cArr2[i10];
        cArr[i9 + 1] = cArr2[i10 | 256];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(long j10, char[] cArr, int i9) {
        c((byte) ((j10 >> 56) & 255), cArr, i9);
        c((byte) ((j10 >> 48) & 255), cArr, i9 + 2);
        c((byte) ((j10 >> 40) & 255), cArr, i9 + 4);
        c((byte) ((j10 >> 32) & 255), cArr, i9 + 6);
        c((byte) ((j10 >> 24) & 255), cArr, i9 + 8);
        c((byte) ((j10 >> 16) & 255), cArr, i9 + 10);
        c((byte) ((j10 >> 8) & 255), cArr, i9 + 12);
        c((byte) (j10 & 255), cArr, i9 + 14);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(long j10, byte[] bArr, int i9) {
        lh.b.a(bArr.length >= i9 + 8, "array too small");
        bArr[i9 + 7] = (byte) (j10 & 255);
        bArr[i9 + 6] = (byte) ((j10 >> 8) & 255);
        bArr[i9 + 5] = (byte) ((j10 >> 16) & 255);
        bArr[i9 + 4] = (byte) ((j10 >> 24) & 255);
        bArr[i9 + 3] = (byte) ((j10 >> 32) & 255);
        bArr[i9 + 2] = (byte) ((j10 >> 40) & 255);
        bArr[i9 + 1] = (byte) ((j10 >> 48) & 255);
        bArr[i9] = (byte) ((j10 >> 56) & 255);
    }
}
