package com.huawei.hms.support.log.common;

import kotlin.UByte;
import okio.Utf8;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class Base64 {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f27827a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', IOUtils.DIR_SEPARATOR_UNIX, '='};

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f27828b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    public static int a(String str) {
        int length = str.length();
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt > 255 || f27828b[charAt] < 0) {
                length--;
            }
        }
        return length;
    }

    public static byte[] decode(String str) {
        int a10 = a(str);
        int i9 = (a10 / 4) * 3;
        int i10 = a10 % 4;
        if (i10 == 3) {
            i9 += 2;
        }
        if (i10 == 2) {
            i9++;
        }
        byte[] bArr = new byte[i9];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < str.length(); i14++) {
            char charAt = str.charAt(i14);
            byte b10 = charAt > 255 ? (byte) -1 : f27828b[charAt];
            if (b10 >= 0) {
                i13 += 6;
                i12 = (i12 << 6) | b10;
                if (i13 >= 8) {
                    i13 -= 8;
                    bArr[i11] = (byte) (255 & (i12 >> i13));
                    i11++;
                }
            }
        }
        return i11 != i9 ? new byte[0] : bArr;
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, bArr.length);
    }

    public static String encode(byte[] bArr, int i9) {
        boolean z10;
        char[] cArr = new char[((i9 + 2) / 3) * 4];
        int i10 = 0;
        int i11 = 0;
        while (i10 < i9) {
            int i12 = (bArr[i10] & UByte.MAX_VALUE) << 8;
            int i13 = i10 + 1;
            boolean z11 = true;
            if (i13 < i9) {
                i12 |= bArr[i13] & UByte.MAX_VALUE;
                z10 = true;
            } else {
                z10 = false;
            }
            int i14 = i12 << 8;
            int i15 = i10 + 2;
            if (i15 < i9) {
                i14 |= bArr[i15] & UByte.MAX_VALUE;
            } else {
                z11 = false;
            }
            int i16 = i11 + 3;
            char[] cArr2 = f27827a;
            int i17 = 64;
            cArr[i16] = cArr2[z11 ? i14 & 63 : 64];
            int i18 = i14 >> 6;
            int i19 = i11 + 2;
            if (z10) {
                i17 = i18 & 63;
            }
            cArr[i19] = cArr2[i17];
            int i20 = i18 >> 6;
            cArr[i11 + 1] = cArr2[i20 & 63];
            cArr[i11 + 0] = cArr2[(i20 >> 6) & 63];
            i10 += 3;
            i11 += 4;
        }
        return new String(cArr);
    }
}
