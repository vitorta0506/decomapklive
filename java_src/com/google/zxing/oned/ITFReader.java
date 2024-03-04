package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;
/* loaded from: classes3.dex */
public final class ITFReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.38f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.5f;
    private static final int N = 1;
    private static final int W = 3;

    /* renamed from: w  reason: collision with root package name */
    private static final int f15843w = 2;
    private int narrowLineWidth = -1;
    private static final int[] DEFAULT_ALLOWED_LENGTHS = {6, 8, 10, 12, 14};
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[][] END_PATTERN_REVERSED = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};
    private static final int[][] PATTERNS = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    private static int decodeDigit(int[] iArr) throws NotFoundException {
        int length = PATTERNS.length;
        float f10 = 0.38f;
        int i9 = -1;
        for (int i10 = 0; i10 < length; i10++) {
            float patternMatchVariance = OneDReader.patternMatchVariance(iArr, PATTERNS[i10], 0.5f);
            if (patternMatchVariance < f10) {
                i9 = i10;
                f10 = patternMatchVariance;
            } else if (patternMatchVariance == f10) {
                i9 = -1;
            }
        }
        if (i9 >= 0) {
            return i9 % 10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private int[] decodeEnd(BitArray bitArray) throws NotFoundException {
        int i9;
        int[] findGuardPattern;
        bitArray.reverse();
        try {
            try {
                findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), END_PATTERN_REVERSED[0]);
            } catch (NotFoundException unused) {
                findGuardPattern = findGuardPattern(bitArray, i9, END_PATTERN_REVERSED[1]);
            }
            validateQuietZone(bitArray, findGuardPattern[0]);
            int i10 = findGuardPattern[0];
            findGuardPattern[0] = bitArray.getSize() - findGuardPattern[1];
            findGuardPattern[1] = bitArray.getSize() - i10;
            return findGuardPattern;
        } finally {
            bitArray.reverse();
        }
    }

    private static void decodeMiddle(BitArray bitArray, int i9, int i10, StringBuilder sb2) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i9 < i10) {
            OneDReader.recordPattern(bitArray, i9, iArr);
            for (int i11 = 0; i11 < 5; i11++) {
                int i12 = i11 * 2;
                iArr2[i11] = iArr[i12];
                iArr3[i11] = iArr[i12 + 1];
            }
            sb2.append((char) (decodeDigit(iArr2) + 48));
            sb2.append((char) (decodeDigit(iArr3) + 48));
            for (int i13 = 0; i13 < 10; i13++) {
                i9 += iArr[i13];
            }
        }
    }

    private int[] decodeStart(BitArray bitArray) throws NotFoundException {
        int[] findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), START_PATTERN);
        this.narrowLineWidth = (findGuardPattern[1] - findGuardPattern[0]) / 4;
        validateQuietZone(bitArray, findGuardPattern[0]);
        return findGuardPattern;
    }

    private static int[] findGuardPattern(BitArray bitArray, int i9, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i10 = i9;
        boolean z10 = false;
        int i11 = 0;
        while (i9 < size) {
            if (bitArray.get(i9) != z10) {
                iArr2[i11] = iArr2[i11] + 1;
            } else {
                if (i11 != length - 1) {
                    i11++;
                } else if (OneDReader.patternMatchVariance(iArr2, iArr, 0.5f) < 0.38f) {
                    return new int[]{i10, i9};
                } else {
                    i10 += iArr2[0] + iArr2[1];
                    int i12 = i11 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i12);
                    iArr2[i12] = 0;
                    iArr2[i11] = 0;
                    i11--;
                }
                iArr2[i11] = 1;
                z10 = !z10;
            }
            i9++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int skipWhiteSpace(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void validateQuietZone(com.google.zxing.common.BitArray r3, int r4) throws com.google.zxing.NotFoundException {
        /*
            r2 = this;
            int r0 = r2.narrowLineWidth
            int r0 = r0 * 10
            if (r0 >= r4) goto L7
            goto L8
        L7:
            r0 = r4
        L8:
            int r4 = r4 + (-1)
        La:
            if (r0 <= 0) goto L19
            if (r4 < 0) goto L19
            boolean r1 = r3.get(r4)
            if (r1 != 0) goto L19
            int r0 = r0 + (-1)
            int r4 = r4 + (-1)
            goto La
        L19:
            if (r0 != 0) goto L1c
            return
        L1c:
            com.google.zxing.NotFoundException r3 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.ITFReader.validateQuietZone(com.google.zxing.common.BitArray, int):void");
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws FormatException, NotFoundException {
        boolean z10;
        int[] decodeStart = decodeStart(bitArray);
        int[] decodeEnd = decodeEnd(bitArray);
        StringBuilder sb2 = new StringBuilder(20);
        decodeMiddle(bitArray, decodeStart[1], decodeEnd[0], sb2);
        String sb3 = sb2.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = DEFAULT_ALLOWED_LENGTHS;
        }
        int length = sb3.length();
        int length2 = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= length2) {
                z10 = false;
                break;
            }
            int i12 = iArr[i10];
            if (length == i12) {
                z10 = true;
                break;
            }
            if (i12 > i11) {
                i11 = i12;
            }
            i10++;
        }
        if (!z10 && length > i11) {
            z10 = true;
        }
        if (z10) {
            float f10 = i9;
            return new Result(sb3, null, new ResultPoint[]{new ResultPoint(decodeStart[1], f10), new ResultPoint(decodeEnd[0], f10)}, BarcodeFormat.ITF);
        }
        throw FormatException.getFormatInstance();
    }
}
