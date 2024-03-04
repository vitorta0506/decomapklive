package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.nio.charset.Charset;
import java.util.Map;
import kotlin.UByte;
/* loaded from: classes3.dex */
public final class StringUtils {
    private static final boolean ASSUME_SHIFT_JIS;
    private static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING;
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF8";

    static {
        String name = Charset.defaultCharset().name();
        PLATFORM_DEFAULT_ENCODING = name;
        ASSUME_SHIFT_JIS = SHIFT_JIS.equalsIgnoreCase(name) || EUC_JP.equalsIgnoreCase(name);
    }

    private StringUtils() {
    }

    public static String guessEncoding(byte[] bArr, Map<DecodeHintType, ?> map) {
        byte[] bArr2 = bArr;
        if (map != null) {
            DecodeHintType decodeHintType = DecodeHintType.CHARACTER_SET;
            if (map.containsKey(decodeHintType)) {
                return map.get(decodeHintType).toString();
            }
        }
        int length = bArr2.length;
        boolean z10 = true;
        int i9 = 0;
        boolean z11 = bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65;
        int i10 = 0;
        boolean z12 = true;
        boolean z13 = true;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i11 < length && (z10 || z12 || z13)) {
            int i21 = bArr2[i11] & UByte.MAX_VALUE;
            if (z13) {
                if (i12 > 0) {
                    if ((i21 & 128) != 0) {
                        i12--;
                    }
                    z13 = false;
                } else if ((i21 & 128) != 0) {
                    if ((i21 & 64) != 0) {
                        i12++;
                        if ((i21 & 32) == 0) {
                            i14++;
                        } else {
                            i12++;
                            if ((i21 & 16) == 0) {
                                i15++;
                            } else {
                                i12++;
                                if ((i21 & 8) == 0) {
                                    i16++;
                                }
                            }
                        }
                    }
                    z13 = false;
                }
            }
            if (z10) {
                if (i21 > 127 && i21 < 160) {
                    z10 = false;
                } else if (i21 > 159 && (i21 < 192 || i21 == 215 || i21 == 247)) {
                    i18++;
                }
            }
            if (z12) {
                if (i13 > 0) {
                    if (i21 >= 64 && i21 != 127 && i21 <= 252) {
                        i13--;
                    }
                    z12 = false;
                } else {
                    if (i21 != 128 && i21 != 160 && i21 <= 239) {
                        if (i21 <= 160 || i21 >= 224) {
                            if (i21 > 127) {
                                i13++;
                                int i22 = i19 + 1;
                                if (i22 > i9) {
                                    i9 = i22;
                                    i19 = i9;
                                } else {
                                    i19 = i22;
                                }
                            } else {
                                i19 = 0;
                            }
                            i20 = 0;
                        } else {
                            i10++;
                            int i23 = i20 + 1;
                            if (i23 > i17) {
                                i17 = i23;
                                i20 = i17;
                            } else {
                                i20 = i23;
                            }
                            i19 = 0;
                        }
                    }
                    z12 = false;
                }
            }
            i11++;
            bArr2 = bArr;
        }
        if (z13 && i12 > 0) {
            z13 = false;
        }
        if (z12 && i13 > 0) {
            z12 = false;
        }
        return (!z13 || (!z11 && (i14 + i15) + i16 <= 0)) ? (!z12 || (!ASSUME_SHIFT_JIS && i17 < 3 && i9 < 3)) ? (z10 && z12) ? (!(i17 == 2 && i10 == 2) && i18 * 10 < length) ? ISO88591 : SHIFT_JIS : z10 ? ISO88591 : z12 ? SHIFT_JIS : z13 ? UTF8 : PLATFORM_DEFAULT_ENCODING : SHIFT_JIS : UTF8;
    }
}
