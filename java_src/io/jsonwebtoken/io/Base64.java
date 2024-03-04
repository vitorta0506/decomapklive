package io.jsonwebtoken.io;

import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes6.dex */
final class Base64 {
    private static final char[] BASE64URL_ALPHABET;
    private static final int[] BASE64URL_IALPHABET;
    private static final char[] BASE64_ALPHABET;
    private static final int[] BASE64_IALPHABET;
    static final Base64 DEFAULT;
    private static final int IALPHABET_MAX_INDEX;
    static final Base64 URL_SAFE;
    private final char[] ALPHABET;
    private final int[] IALPHABET;
    private final boolean urlsafe;

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        BASE64_ALPHABET = charArray;
        BASE64URL_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();
        int[] iArr = new int[256];
        BASE64_IALPHABET = iArr;
        int[] iArr2 = new int[256];
        BASE64URL_IALPHABET = iArr2;
        IALPHABET_MAX_INDEX = iArr.length - 1;
        Arrays.fill(iArr, -1);
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        int length = charArray.length;
        for (int i9 = 0; i9 < length; i9++) {
            BASE64_IALPHABET[BASE64_ALPHABET[i9]] = i9;
            BASE64URL_IALPHABET[BASE64URL_ALPHABET[i9]] = i9;
        }
        BASE64_IALPHABET[61] = 0;
        BASE64URL_IALPHABET[61] = 0;
        DEFAULT = new Base64(false);
        URL_SAFE = new Base64(true);
    }

    private Base64(boolean z10) {
        this.urlsafe = z10;
        this.ALPHABET = z10 ? BASE64URL_ALPHABET : BASE64_ALPHABET;
        this.IALPHABET = z10 ? BASE64URL_IALPHABET : BASE64_IALPHABET;
    }

    private int ctoi(char c10) {
        int i9 = c10 > IALPHABET_MAX_INDEX ? -1 : this.IALPHABET[c10];
        if (i9 >= 0) {
            return i9;
        }
        throw new DecodingException("Illegal " + getName() + " character: '" + c10 + "'");
    }

    private char[] encodeToChar(byte[] bArr, boolean z10) {
        int length = bArr != null ? bArr.length : 0;
        if (length == 0) {
            return new char[0];
        }
        int i9 = (length / 3) * 3;
        int i10 = length - i9;
        int i11 = length - 1;
        int i12 = ((i11 / 3) + 1) << 2;
        int i13 = i12 + (z10 ? ((i12 - 1) / 76) << 1 : 0);
        char[] cArr = new char[this.urlsafe ? i13 - (i10 == 2 ? 1 : i10 == 1 ? 2 : 0) : i13];
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < i9) {
            int i17 = i14 + 1;
            int i18 = i17 + 1;
            int i19 = ((bArr[i14] & UByte.MAX_VALUE) << 16) | ((bArr[i17] & UByte.MAX_VALUE) << 8);
            int i20 = i18 + 1;
            int i21 = i19 | (bArr[i18] & UByte.MAX_VALUE);
            int i22 = i15 + 1;
            char[] cArr2 = this.ALPHABET;
            cArr[i15] = cArr2[(i21 >>> 18) & 63];
            int i23 = i22 + 1;
            cArr[i22] = cArr2[(i21 >>> 12) & 63];
            int i24 = i23 + 1;
            cArr[i23] = cArr2[(i21 >>> 6) & 63];
            i15 = i24 + 1;
            cArr[i24] = cArr2[i21 & 63];
            if (z10 && (i16 = i16 + 1) == 19 && i15 < i13 - 2) {
                int i25 = i15 + 1;
                cArr[i15] = '\r';
                cArr[i25] = '\n';
                i15 = i25 + 1;
                i16 = 0;
            }
            i14 = i20;
        }
        if (i10 > 0) {
            int i26 = ((bArr[i9] & UByte.MAX_VALUE) << 10) | (i10 == 2 ? (bArr[i11] & UByte.MAX_VALUE) << 2 : 0);
            char[] cArr3 = this.ALPHABET;
            cArr[i13 - 4] = cArr3[i26 >> 12];
            cArr[i13 - 3] = cArr3[(i26 >>> 6) & 63];
            if (i10 == 2) {
                cArr[i13 - 2] = cArr3[i26 & 63];
            } else if (!this.urlsafe) {
                cArr[i13 - 2] = '=';
            }
            if (!this.urlsafe) {
                cArr[i13 - 1] = '=';
            }
        }
        return cArr;
    }

    private String getName() {
        return this.urlsafe ? "base64url" : "base64";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] decodeFast(char[] cArr) throws DecodingException {
        int i9;
        int i10 = 0;
        int length = cArr != null ? cArr.length : 0;
        if (length == 0) {
            return new byte[0];
        }
        int i11 = length - 1;
        int i12 = 0;
        while (i12 < i11 && this.IALPHABET[cArr[i12]] < 0) {
            i12++;
        }
        while (i11 > 0 && this.IALPHABET[cArr[i11]] < 0) {
            i11--;
        }
        int i13 = cArr[i11] == '=' ? cArr[i11 + (-1)] == '=' ? 2 : 1 : 0;
        int i14 = (i11 - i12) + 1;
        if (length > 76) {
            i9 = (cArr[76] == '\r' ? i14 / 78 : 0) << 1;
        } else {
            i9 = 0;
        }
        int i15 = (((i14 - i9) * 6) >> 3) - i13;
        byte[] bArr = new byte[i15];
        int i16 = (i15 / 3) * 3;
        int i17 = 0;
        int i18 = 0;
        while (i17 < i16) {
            int i19 = i12 + 1;
            int i20 = i19 + 1;
            int ctoi = (ctoi(cArr[i12]) << 18) | (ctoi(cArr[i19]) << 12);
            int i21 = i20 + 1;
            int ctoi2 = ctoi | (ctoi(cArr[i20]) << 6);
            int i22 = i21 + 1;
            int ctoi3 = ctoi2 | ctoi(cArr[i21]);
            int i23 = i17 + 1;
            bArr[i17] = (byte) (ctoi3 >> 16);
            int i24 = i23 + 1;
            bArr[i23] = (byte) (ctoi3 >> 8);
            int i25 = i24 + 1;
            bArr[i24] = (byte) ctoi3;
            if (i9 <= 0 || (i18 = i18 + 1) != 19) {
                i12 = i22;
            } else {
                i12 = i22 + 2;
                i18 = 0;
            }
            i17 = i25;
        }
        if (i17 < i15) {
            int i26 = 0;
            while (i12 <= i11 - i13) {
                i10 |= ctoi(cArr[i12]) << (18 - (i26 * 6));
                i26++;
                i12++;
            }
            int i27 = 16;
            while (i17 < i15) {
                bArr[i17] = (byte) (i10 >> i27);
                i27 -= 8;
                i17++;
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String encodeToString(byte[] bArr, boolean z10) {
        return new String(encodeToChar(bArr, z10));
    }
}
