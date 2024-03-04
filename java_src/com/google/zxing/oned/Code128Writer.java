package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes3.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    private static int chooseCode(CharSequence charSequence, int i9, int i10) {
        CType findCType;
        CType findCType2;
        char charAt;
        CType findCType3 = findCType(charSequence, i9);
        CType cType = CType.ONE_DIGIT;
        if (findCType3 == cType) {
            return 100;
        }
        CType cType2 = CType.UNCODABLE;
        if (findCType3 == cType2) {
            return (i9 >= charSequence.length() || ((charAt = charSequence.charAt(i9)) >= ' ' && (i10 != 101 || charAt >= '`'))) ? 100 : 101;
        } else if (i10 == 99) {
            return 99;
        } else {
            if (i10 == 100) {
                CType cType3 = CType.FNC_1;
                if (findCType3 == cType3 || (findCType = findCType(charSequence, i9 + 2)) == cType2 || findCType == cType) {
                    return 100;
                }
                if (findCType == cType3) {
                    return findCType(charSequence, i9 + 3) == CType.TWO_DIGITS ? 99 : 100;
                }
                int i11 = i9 + 4;
                while (true) {
                    findCType2 = findCType(charSequence, i11);
                    if (findCType2 != CType.TWO_DIGITS) {
                        break;
                    }
                    i11 += 2;
                }
                return findCType2 == CType.ONE_DIGIT ? 100 : 99;
            }
            if (findCType3 == CType.FNC_1) {
                findCType3 = findCType(charSequence, i9 + 1);
            }
            return findCType3 == CType.TWO_DIGITS ? 99 : 100;
        }
    }

    private static CType findCType(CharSequence charSequence, int i9) {
        int length = charSequence.length();
        if (i9 >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i9);
        if (charAt == 241) {
            return CType.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return CType.UNCODABLE;
        }
        int i10 = i9 + 1;
        if (i10 >= length) {
            return CType.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i10);
        if (charAt2 >= '0' && charAt2 <= '9') {
            return CType.TWO_DIGITS;
        }
        return CType.ONE_DIGIT;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.encode(str, barcodeFormat, i9, i10, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length > 0 && length <= 80) {
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                switch (charAt) {
                    case 241:
                    case 242:
                    case 243:
                    case TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                        break;
                    default:
                        if (charAt <= 127) {
                            break;
                        } else {
                            throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(charAt)));
                        }
                }
            }
            ArrayList<int[]> arrayList = new ArrayList();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 1;
            while (true) {
                int i15 = 103;
                if (i11 < length) {
                    int chooseCode = chooseCode(str, i11, i13);
                    int i16 = 100;
                    if (chooseCode == i13) {
                        switch (str.charAt(i11)) {
                            case 241:
                                i16 = 102;
                                break;
                            case 242:
                                i16 = 97;
                                break;
                            case 243:
                                i16 = 96;
                                break;
                            case TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                                if (i13 == 101) {
                                    i16 = 101;
                                    break;
                                }
                                break;
                            default:
                                if (i13 != 100) {
                                    if (i13 == 101) {
                                        i16 = str.charAt(i11) - ' ';
                                        if (i16 < 0) {
                                            i16 += 96;
                                            break;
                                        }
                                    } else {
                                        i16 = Integer.parseInt(str.substring(i11, i11 + 2));
                                        i11++;
                                        break;
                                    }
                                } else {
                                    i16 = str.charAt(i11) - ' ';
                                    break;
                                }
                                break;
                        }
                        i11++;
                    } else {
                        if (i13 != 0) {
                            i15 = chooseCode;
                        } else if (chooseCode == 100) {
                            i15 = 104;
                        } else if (chooseCode != 101) {
                            i15 = 105;
                        }
                        i16 = i15;
                        i13 = chooseCode;
                    }
                    arrayList.add(Code128Reader.CODE_PATTERNS[i16]);
                    i12 += i16 * i14;
                    if (i11 != 0) {
                        i14++;
                    }
                } else {
                    int[][] iArr = Code128Reader.CODE_PATTERNS;
                    arrayList.add(iArr[i12 % 103]);
                    arrayList.add(iArr[106]);
                    int i17 = 0;
                    for (int[] iArr2 : arrayList) {
                        for (int i18 : iArr2) {
                            i17 += i18;
                        }
                    }
                    boolean[] zArr = new boolean[i17];
                    for (int[] iArr3 : arrayList) {
                        i9 += OneDimensionalCodeWriter.appendPattern(zArr, i9, iArr3, true);
                    }
                    return zArr;
                }
            }
        } else {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
    }
}
