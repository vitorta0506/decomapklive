package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private Detector() {
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i9 = 0; i9 < iArr.length; i9++) {
            resultPointArr[iArr[i9]] = resultPointArr2[i9];
        }
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z10) throws NotFoundException {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        List<ResultPoint[]> detect = detect(z10, blackMatrix);
        if (detect.isEmpty()) {
            blackMatrix = blackMatrix.m227clone();
            blackMatrix.rotate180();
            detect = detect(z10, blackMatrix);
        }
        return new PDF417DetectorResult(blackMatrix, detect);
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i9, int i10, int i11, boolean z10, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i12 = 0;
        while (bitMatrix.get(i9, i10) && i9 > 0) {
            int i13 = i12 + 1;
            if (i12 >= 3) {
                break;
            }
            i9--;
            i12 = i13;
        }
        int length = iArr.length;
        boolean z11 = z10;
        int i14 = 0;
        int i15 = i9;
        while (i9 < i11) {
            if (bitMatrix.get(i9, i10) != z11) {
                iArr2[i14] = iArr2[i14] + 1;
            } else {
                if (i14 != length - 1) {
                    i14++;
                } else if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                    return new int[]{i15, i9};
                } else {
                    i15 += iArr2[0] + iArr2[1];
                    int i16 = i14 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i16);
                    iArr2[i16] = 0;
                    iArr2[i14] = 0;
                    i14--;
                }
                iArr2[i14] = 1;
                z11 = !z11;
            }
            i9++;
        }
        if (i14 != length - 1 || patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) >= MAX_AVG_VARIANCE) {
            return null;
        }
        return new int[]{i15, i9 - 1};
    }

    private static ResultPoint[] findRowsWithPattern(BitMatrix bitMatrix, int i9, int i10, int i11, int i12, int[] iArr) {
        boolean z10;
        int i13;
        int i14;
        int i15;
        ResultPoint[] resultPointArr = new ResultPoint[4];
        int[] iArr2 = new int[iArr.length];
        int i16 = i11;
        while (true) {
            if (i16 >= i9) {
                z10 = false;
                break;
            }
            int[] findGuardPattern = findGuardPattern(bitMatrix, i12, i16, i10, false, iArr, iArr2);
            if (findGuardPattern != null) {
                int i17 = i16;
                int[] iArr3 = findGuardPattern;
                int i18 = i17;
                while (true) {
                    if (i18 <= 0) {
                        i15 = i18;
                        break;
                    }
                    int i19 = i18 - 1;
                    int[] findGuardPattern2 = findGuardPattern(bitMatrix, i12, i19, i10, false, iArr, iArr2);
                    if (findGuardPattern2 == null) {
                        i15 = i19 + 1;
                        break;
                    }
                    iArr3 = findGuardPattern2;
                    i18 = i19;
                }
                float f10 = i15;
                resultPointArr[0] = new ResultPoint(iArr3[0], f10);
                resultPointArr[1] = new ResultPoint(iArr3[1], f10);
                i16 = i15;
                z10 = true;
            } else {
                i16 += 5;
            }
        }
        int i20 = i16 + 1;
        if (z10) {
            int[] iArr4 = {(int) resultPointArr[0].getX(), (int) resultPointArr[1].getX()};
            int i21 = i20;
            int i22 = 0;
            while (true) {
                if (i21 >= i9) {
                    i13 = i22;
                    i14 = i21;
                    break;
                }
                i13 = i22;
                i14 = i21;
                int[] findGuardPattern3 = findGuardPattern(bitMatrix, iArr4[0], i21, i10, false, iArr, iArr2);
                if (findGuardPattern3 != null && Math.abs(iArr4[0] - findGuardPattern3[0]) < 5 && Math.abs(iArr4[1] - findGuardPattern3[1]) < 5) {
                    iArr4 = findGuardPattern3;
                    i22 = 0;
                } else if (i13 > 25) {
                    break;
                } else {
                    i22 = i13 + 1;
                }
                i21 = i14 + 1;
            }
            i20 = i14 - (i13 + 1);
            float f11 = i20;
            resultPointArr[2] = new ResultPoint(iArr4[0], f11);
            resultPointArr[3] = new ResultPoint(iArr4[1], f11);
        }
        if (i20 - i16 < 10) {
            Arrays.fill(resultPointArr, (Object) null);
        }
        return resultPointArr;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i9, int i10) {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i9, i10, START_PATTERN), INDEXES_START_PATTERN);
        if (resultPointArr[4] != null) {
            i10 = (int) resultPointArr[4].getX();
            i9 = (int) resultPointArr[4].getY();
        }
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i9, i10, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2, float f10) {
        int length = iArr.length;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i9 += iArr[i11];
            i10 += iArr2[i11];
        }
        if (i9 < i10) {
            return Float.POSITIVE_INFINITY;
        }
        float f11 = i9;
        float f12 = f11 / i10;
        float f13 = f10 * f12;
        float f14 = 0.0f;
        for (int i12 = 0; i12 < length; i12++) {
            float f15 = iArr2[i12] * f12;
            float f16 = iArr[i12];
            float f17 = f16 > f15 ? f16 - f15 : f15 - f16;
            if (f17 > f13) {
                return Float.POSITIVE_INFINITY;
            }
            f14 += f17;
        }
        return f14 / f11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r5 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        r4 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
        if (r4.hasNext() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
        r5 = (com.google.zxing.ResultPoint[]) r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r5[1] == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        r3 = (int) java.lang.Math.max(r3, r5[1].getY());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        if (r5[3] == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
        r3 = java.lang.Math.max(r3, (int) r5[3].getY());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.zxing.ResultPoint[]> detect(boolean r8, com.google.zxing.common.BitMatrix r9) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 1
            r2 = 0
            r3 = 0
        L8:
            r4 = 0
            r5 = 0
        La:
            int r6 = r9.getHeight()
            if (r3 >= r6) goto L7c
            com.google.zxing.ResultPoint[] r4 = findVertices(r9, r3, r4)
            r6 = r4[r2]
            if (r6 != 0) goto L52
            r6 = 3
            r7 = r4[r6]
            if (r7 != 0) goto L52
            if (r5 == 0) goto L7c
            java.util.Iterator r4 = r0.iterator()
        L23:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L4f
            java.lang.Object r5 = r4.next()
            com.google.zxing.ResultPoint[] r5 = (com.google.zxing.ResultPoint[]) r5
            r7 = r5[r1]
            if (r7 == 0) goto L3f
            float r3 = (float) r3
            r7 = r5[r1]
            float r7 = r7.getY()
            float r3 = java.lang.Math.max(r3, r7)
            int r3 = (int) r3
        L3f:
            r7 = r5[r6]
            if (r7 == 0) goto L23
            r5 = r5[r6]
            float r5 = r5.getY()
            int r5 = (int) r5
            int r3 = java.lang.Math.max(r3, r5)
            goto L23
        L4f:
            int r3 = r3 + 5
            goto L8
        L52:
            r0.add(r4)
            if (r8 == 0) goto L7c
            r3 = 2
            r5 = r4[r3]
            if (r5 == 0) goto L6a
            r5 = r4[r3]
            float r5 = r5.getX()
            int r5 = (int) r5
            r3 = r4[r3]
            float r3 = r3.getY()
            goto L78
        L6a:
            r3 = 4
            r5 = r4[r3]
            float r5 = r5.getX()
            int r5 = (int) r5
            r3 = r4[r3]
            float r3 = r3.getY()
        L78:
            int r3 = (int) r3
            r4 = r5
            r5 = 1
            goto La
        L7c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.detector.Detector.detect(boolean, com.google.zxing.common.BitMatrix):java.util.List");
    }
}
