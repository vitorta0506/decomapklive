package com.guochao.faceshow.aaspring.utils;

import kotlin.UByte;
import okio.Utf8;
/* loaded from: classes3.dex */
public abstract class Base64 {
    private static char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
    private static byte[] codes = new byte[256];

    static {
        for (int i9 = 0; i9 < 256; i9++) {
            codes[i9] = -1;
        }
        for (int i10 = 65; i10 <= 90; i10++) {
            codes[i10] = (byte) (i10 - 65);
        }
        for (int i11 = 97; i11 <= 122; i11++) {
            codes[i11] = (byte) ((i11 + 26) - 97);
        }
        for (int i12 = 48; i12 <= 57; i12++) {
            codes[i12] = (byte) ((i12 + 52) - 48);
        }
        byte[] bArr = codes;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    public static byte[] decode(String str) {
        char[] charArray = str.toCharArray();
        int length = ((charArray.length + 3) / 4) * 3;
        if (charArray.length > 0 && charArray[charArray.length - 1] == '=') {
            length--;
        }
        if (charArray.length > 1 && charArray[charArray.length - 2] == '=') {
            length--;
        }
        byte[] bArr = new byte[length];
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        for (char c10 : charArray) {
            byte b10 = codes[c10 & 255];
            if (b10 >= 0) {
                i11 += 6;
                i10 = (i10 << 6) | b10;
                if (i11 >= 8) {
                    i11 -= 8;
                    bArr[i9] = (byte) ((i10 >> i11) & 255);
                    i9++;
                }
            }
        }
        if (i9 == length) {
            return bArr;
        }
        throw new RuntimeException("miscalculated data length!");
    }

    public static String encode(byte[] bArr) {
        boolean z10;
        char[] cArr = new char[((bArr.length + 2) / 3) * 4];
        int i9 = 0;
        int i10 = 0;
        while (i9 < bArr.length) {
            int i11 = (bArr[i9] & UByte.MAX_VALUE) << 8;
            int i12 = i9 + 1;
            boolean z11 = true;
            if (i12 < bArr.length) {
                i11 |= bArr[i12] & UByte.MAX_VALUE;
                z10 = true;
            } else {
                z10 = false;
            }
            int i13 = i11 << 8;
            int i14 = i9 + 2;
            if (i14 < bArr.length) {
                i13 |= bArr[i14] & UByte.MAX_VALUE;
            } else {
                z11 = false;
            }
            int i15 = i10 + 3;
            char[] cArr2 = alphabet;
            int i16 = 64;
            cArr[i15] = cArr2[z11 ? i13 & 63 : 64];
            int i17 = i13 >> 6;
            int i18 = i10 + 2;
            if (z10) {
                i16 = i17 & 63;
            }
            cArr[i18] = cArr2[i16];
            int i19 = i17 >> 6;
            cArr[i10 + 1] = cArr2[i19 & 63];
            cArr[i10 + 0] = cArr2[(i19 >> 6) & 63];
            i9 += 3;
            i10 += 4;
        }
        return new String(cArr);
    }
}
