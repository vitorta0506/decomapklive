package com.xiaomi.push;

import kotlin.UByte;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f36371a = System.getProperty("line.separator");

    /* renamed from: b  reason: collision with root package name */
    private static char[] f36372b = new char[64];

    /* renamed from: c  reason: collision with root package name */
    private static byte[] f36373c;

    static {
        char c10 = 'A';
        int i9 = 0;
        while (c10 <= 'Z') {
            f36372b[i9] = c10;
            c10 = (char) (c10 + 1);
            i9++;
        }
        char c11 = 'a';
        while (c11 <= 'z') {
            f36372b[i9] = c11;
            c11 = (char) (c11 + 1);
            i9++;
        }
        char c12 = '0';
        while (c12 <= '9') {
            f36372b[i9] = c12;
            c12 = (char) (c12 + 1);
            i9++;
        }
        char[] cArr = f36372b;
        cArr[i9] = '+';
        cArr[i9 + 1] = IOUtils.DIR_SEPARATOR_UNIX;
        f36373c = new byte[128];
        int i10 = 0;
        while (true) {
            byte[] bArr = f36373c;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = -1;
            i10++;
        }
        for (int i11 = 0; i11 < 64; i11++) {
            f36373c[f36372b[i11]] = (byte) i11;
        }
    }

    public static String a(String str) {
        return new String(b(str));
    }

    public static byte[] b(String str) {
        return c(str.toCharArray());
    }

    public static byte[] c(char[] cArr) {
        return d(cArr, 0, cArr.length);
    }

    public static byte[] d(char[] cArr, int i9, int i10) {
        int i11;
        char c10;
        int i12;
        char c11;
        if (i10 % 4 == 0) {
            while (i10 > 0 && cArr[(i9 + i10) - 1] == '=') {
                i10--;
            }
            int i13 = (i10 * 3) / 4;
            byte[] bArr = new byte[i13];
            int i14 = i10 + i9;
            int i15 = 0;
            while (i9 < i14) {
                int i16 = i9 + 1;
                char c12 = cArr[i9];
                int i17 = i16 + 1;
                char c13 = cArr[i16];
                if (i17 < i14) {
                    i11 = i17 + 1;
                    c10 = cArr[i17];
                } else {
                    i11 = i17;
                    c10 = 'A';
                }
                if (i11 < i14) {
                    i12 = i11 + 1;
                    c11 = cArr[i11];
                } else {
                    i12 = i11;
                    c11 = 'A';
                }
                if (c12 > 127 || c13 > 127 || c10 > 127 || c11 > 127) {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
                byte[] bArr2 = f36373c;
                byte b10 = bArr2[c12];
                byte b11 = bArr2[c13];
                byte b12 = bArr2[c10];
                byte b13 = bArr2[c11];
                if (b10 < 0 || b11 < 0 || b12 < 0 || b13 < 0) {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
                int i18 = (b10 << 2) | (b11 >>> 4);
                int i19 = ((b11 & 15) << 4) | (b12 >>> 2);
                int i20 = ((b12 & 3) << 6) | b13;
                int i21 = i15 + 1;
                bArr[i15] = (byte) i18;
                if (i21 < i13) {
                    bArr[i21] = (byte) i19;
                    i21++;
                }
                if (i21 < i13) {
                    bArr[i21] = (byte) i20;
                    i15 = i21 + 1;
                } else {
                    i15 = i21;
                }
                i9 = i12;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }

    public static char[] e(byte[] bArr) {
        return f(bArr, 0, bArr.length);
    }

    public static char[] f(byte[] bArr, int i9, int i10) {
        int i11;
        int i12;
        int i13;
        int i14 = ((i10 * 4) + 2) / 3;
        char[] cArr = new char[((i10 + 2) / 3) * 4];
        int i15 = i10 + i9;
        int i16 = 0;
        while (i9 < i15) {
            int i17 = i9 + 1;
            int i18 = bArr[i9] & UByte.MAX_VALUE;
            if (i17 < i15) {
                i11 = i17 + 1;
                i12 = bArr[i17] & UByte.MAX_VALUE;
            } else {
                i11 = i17;
                i12 = 0;
            }
            if (i11 < i15) {
                i13 = bArr[i11] & UByte.MAX_VALUE;
                i11++;
            } else {
                i13 = 0;
            }
            int i19 = i18 >>> 2;
            int i20 = ((i18 & 3) << 4) | (i12 >>> 4);
            int i21 = ((i12 & 15) << 2) | (i13 >>> 6);
            int i22 = i13 & 63;
            int i23 = i16 + 1;
            char[] cArr2 = f36372b;
            cArr[i16] = cArr2[i19];
            int i24 = i23 + 1;
            cArr[i23] = cArr2[i20];
            char c10 = '=';
            cArr[i24] = i24 < i14 ? cArr2[i21] : '=';
            int i25 = i24 + 1;
            if (i25 < i14) {
                c10 = cArr2[i22];
            }
            cArr[i25] = c10;
            i16 = i25 + 1;
            i9 = i11;
        }
        return cArr;
    }
}
