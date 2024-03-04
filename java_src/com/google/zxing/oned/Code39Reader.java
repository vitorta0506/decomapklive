package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.xmagic.BuildConfig;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3.dex */
public final class Code39Reader extends OneDReader {
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";
    static final int ASTERISK_ENCODING = 148;
    static final int[] CHARACTER_ENCODINGS = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, BuildConfig.VERSION_CODE, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 400, 208, 133, 388, 196, 168, 162, 138, 42};
    private final int[] counters;
    private final StringBuilder decodeRowResult;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;

    public Code39Reader() {
        this(false);
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i9;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i10 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt != '+' && charAt != '$' && charAt != '%' && charAt != '/') {
                sb2.append(charAt);
            } else {
                i10++;
                char charAt2 = charSequence.charAt(i10);
                if (charAt != '$') {
                    if (charAt != '%') {
                        if (charAt != '+') {
                            if (charAt == '/') {
                                if (charAt2 >= 'A' && charAt2 <= 'O') {
                                    i9 = charAt2 - ' ';
                                } else if (charAt2 != 'Z') {
                                    throw FormatException.getFormatInstance();
                                } else {
                                    c10 = ':';
                                    sb2.append(c10);
                                }
                            }
                            c10 = 0;
                            sb2.append(c10);
                        } else if (charAt2 < 'A' || charAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        } else {
                            i9 = charAt2 + ' ';
                        }
                    } else if (charAt2 >= 'A' && charAt2 <= 'E') {
                        i9 = charAt2 - '&';
                    } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                        i9 = charAt2 - 11;
                    } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                        i9 = charAt2 + 16;
                    } else if (charAt2 < 'P' || charAt2 > 'T') {
                        if (charAt2 != 'U') {
                            if (charAt2 == 'V') {
                                c10 = '@';
                            } else if (charAt2 == 'W') {
                                c10 = '`';
                            } else if (charAt2 != 'X' && charAt2 != 'Y' && charAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            } else {
                                c10 = 127;
                            }
                            sb2.append(c10);
                        }
                        c10 = 0;
                        sb2.append(c10);
                    } else {
                        i9 = charAt2 + '+';
                    }
                } else if (charAt2 < 'A' || charAt2 > 'Z') {
                    throw FormatException.getFormatInstance();
                } else {
                    i9 = charAt2 - '@';
                }
                c10 = (char) i9;
                sb2.append(c10);
            }
            i10++;
        }
        return sb2.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        int i9 = nextSet;
        boolean z10 = false;
        int i10 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) != z10) {
                iArr[i10] = iArr[i10] + 1;
            } else {
                if (i10 != length - 1) {
                    i10++;
                } else if (toNarrowWidePattern(iArr) == ASTERISK_ENCODING && bitArray.isRange(Math.max(0, i9 - ((nextSet - i9) / 2)), i9, false)) {
                    return new int[]{i9, nextSet};
                } else {
                    i9 += iArr[0] + iArr[1];
                    int i11 = i10 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i11);
                    iArr[i11] = 0;
                    iArr[i10] = 0;
                    i10--;
                }
                iArr[i10] = 1;
                z10 = !z10;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i9) throws NotFoundException {
        int i10 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i10 >= iArr.length) {
                if (i9 == ASTERISK_ENCODING) {
                    return '*';
                }
                throw NotFoundException.getNotFoundInstance();
            } else if (iArr[i10] == i9) {
                return ALPHABET_STRING.charAt(i10);
            } else {
                i10++;
            }
        }
    }

    private static int toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i9 = 0;
        while (true) {
            int i10 = Integer.MAX_VALUE;
            for (int i11 : iArr) {
                if (i11 < i10 && i11 > i9) {
                    i10 = i11;
                }
            }
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < length; i15++) {
                int i16 = iArr[i15];
                if (i16 > i10) {
                    i13 |= 1 << ((length - 1) - i15);
                    i12++;
                    i14 += i16;
                }
            }
            if (i12 == 3) {
                for (int i17 = 0; i17 < length && i12 > 0; i17++) {
                    int i18 = iArr[i17];
                    if (i18 > i10) {
                        i12--;
                        if ((i18 << 1) >= i14) {
                            return -1;
                        }
                    }
                }
                return i13;
            } else if (i12 <= 3) {
                return -1;
            } else {
                i9 = i10;
            }
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] findAsteriskPattern;
        String sb2;
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb3 = this.decodeRowResult;
        sb3.setLength(0);
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray, iArr)[1]);
        int size = bitArray.getSize();
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern >= 0) {
                char patternToChar = patternToChar(narrowWidePattern);
                sb3.append(patternToChar);
                int i10 = nextSet;
                for (int i11 : iArr) {
                    i10 += i11;
                }
                int nextSet2 = bitArray.getNextSet(i10);
                if (patternToChar == '*') {
                    sb3.setLength(sb3.length() - 1);
                    int i12 = 0;
                    for (int i13 : iArr) {
                        i12 += i13;
                    }
                    int i14 = (nextSet2 - nextSet) - i12;
                    if (nextSet2 != size && (i14 << 1) < i12) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    if (this.usingCheckDigit) {
                        int length = sb3.length() - 1;
                        int i15 = 0;
                        for (int i16 = 0; i16 < length; i16++) {
                            i15 += ALPHABET_STRING.indexOf(this.decodeRowResult.charAt(i16));
                        }
                        if (sb3.charAt(length) == ALPHABET_STRING.charAt(i15 % 43)) {
                            sb3.setLength(length);
                        } else {
                            throw ChecksumException.getChecksumInstance();
                        }
                    }
                    if (sb3.length() != 0) {
                        if (this.extendedMode) {
                            sb2 = decodeExtended(sb3);
                        } else {
                            sb2 = sb3.toString();
                        }
                        float f10 = i9;
                        return new Result(sb2, null, new ResultPoint[]{new ResultPoint((findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f, f10), new ResultPoint(nextSet + (i12 / 2.0f), f10)}, BarcodeFormat.CODE_39);
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                nextSet = nextSet2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    public Code39Reader(boolean z10) {
        this(z10, false);
    }

    public Code39Reader(boolean z10, boolean z11) {
        this.usingCheckDigit = z10;
        this.extendedMode = z11;
        this.decodeRowResult = new StringBuilder(20);
        this.counters = new int[9];
    }
}
