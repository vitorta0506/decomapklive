package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3.dex */
public final class CodaBarReader extends OneDReader {
    private static final float MAX_ACCEPTABLE = 2.0f;
    private static final int MIN_CHARACTER_LENGTH = 3;
    private static final float PADDING = 1.5f;
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCD";
    static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final char[] STARTEND_ENCODING = {'A', 'B', 'C', 'D'};
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private int[] counters = new int[80];
    private int counterLength = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean arrayContains(char[] cArr, char c10) {
        if (cArr != null) {
            for (char c11 : cArr) {
                if (c11 == c10) {
                    return true;
                }
            }
        }
        return false;
    }

    private void counterAppend(int i9) {
        int[] iArr = this.counters;
        int i10 = this.counterLength;
        iArr[i10] = i9;
        int i11 = i10 + 1;
        this.counterLength = i11;
        if (i11 >= iArr.length) {
            int[] iArr2 = new int[i11 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.counters = iArr2;
        }
    }

    private int findStartPattern() throws NotFoundException {
        for (int i9 = 1; i9 < this.counterLength; i9 += 2) {
            int narrowWidePattern = toNarrowWidePattern(i9);
            if (narrowWidePattern != -1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                int i10 = 0;
                for (int i11 = i9; i11 < i9 + 7; i11++) {
                    i10 += this.counters[i11];
                }
                if (i9 == 1 || this.counters[i9 - 1] >= i10 / 2) {
                    return i9;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void setCounters(BitArray bitArray) throws NotFoundException {
        int i9 = 0;
        this.counterLength = 0;
        int nextUnset = bitArray.getNextUnset(0);
        int size = bitArray.getSize();
        if (nextUnset < size) {
            boolean z10 = true;
            while (nextUnset < size) {
                if (bitArray.get(nextUnset) != z10) {
                    i9++;
                } else {
                    counterAppend(i9);
                    z10 = !z10;
                    i9 = 1;
                }
                nextUnset++;
            }
            counterAppend(i9);
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private int toNarrowWidePattern(int i9) {
        int i10 = i9 + 7;
        if (i10 >= this.counterLength) {
            return -1;
        }
        int[] iArr = this.counters;
        int i11 = Integer.MAX_VALUE;
        int i12 = 0;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        for (int i15 = i9; i15 < i10; i15 += 2) {
            int i16 = iArr[i15];
            if (i16 < i13) {
                i13 = i16;
            }
            if (i16 > i14) {
                i14 = i16;
            }
        }
        int i17 = (i13 + i14) / 2;
        int i18 = 0;
        for (int i19 = i9 + 1; i19 < i10; i19 += 2) {
            int i20 = iArr[i19];
            if (i20 < i11) {
                i11 = i20;
            }
            if (i20 > i18) {
                i18 = i20;
            }
        }
        int i21 = (i11 + i18) / 2;
        int i22 = 128;
        int i23 = 0;
        for (int i24 = 0; i24 < 7; i24++) {
            i22 >>= 1;
            if (iArr[i9 + i24] > ((i24 & 1) == 0 ? i17 : i21)) {
                i23 |= i22;
            }
        }
        while (true) {
            int[] iArr2 = CHARACTER_ENCODINGS;
            if (i12 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i12] == i23) {
                return i12;
            }
            i12++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ae, code lost:
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void validatePattern(int r15) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.CodaBarReader.validatePattern(int):void");
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        Arrays.fill(this.counters, 0);
        setCounters(bitArray);
        int findStartPattern = findStartPattern();
        this.decodeRowResult.setLength(0);
        int i10 = findStartPattern;
        do {
            int narrowWidePattern = toNarrowWidePattern(i10);
            if (narrowWidePattern != -1) {
                this.decodeRowResult.append((char) narrowWidePattern);
                i10 += 8;
                if (this.decodeRowResult.length() > 1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                    break;
                }
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        } while (i10 < this.counterLength);
        int i11 = i10 - 1;
        int i12 = this.counters[i11];
        int i13 = 0;
        for (int i14 = -8; i14 < -1; i14++) {
            i13 += this.counters[i10 + i14];
        }
        if (i10 < this.counterLength && i12 < i13 / 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        validatePattern(findStartPattern);
        for (int i15 = 0; i15 < this.decodeRowResult.length(); i15++) {
            StringBuilder sb2 = this.decodeRowResult;
            sb2.setCharAt(i15, ALPHABET[sb2.charAt(i15)]);
        }
        char charAt = this.decodeRowResult.charAt(0);
        char[] cArr = STARTEND_ENCODING;
        if (arrayContains(cArr, charAt)) {
            StringBuilder sb3 = this.decodeRowResult;
            if (arrayContains(cArr, sb3.charAt(sb3.length() - 1))) {
                if (this.decodeRowResult.length() > 3) {
                    if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
                        StringBuilder sb4 = this.decodeRowResult;
                        sb4.deleteCharAt(sb4.length() - 1);
                        this.decodeRowResult.deleteCharAt(0);
                    }
                    int i16 = 0;
                    for (int i17 = 0; i17 < findStartPattern; i17++) {
                        i16 += this.counters[i17];
                    }
                    float f10 = i16;
                    while (findStartPattern < i11) {
                        i16 += this.counters[findStartPattern];
                        findStartPattern++;
                    }
                    float f11 = i9;
                    return new Result(this.decodeRowResult.toString(), null, new ResultPoint[]{new ResultPoint(f10, f11), new ResultPoint(i16, f11)}, BarcodeFormat.CODABAR);
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
