package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;
/* loaded from: classes3.dex */
public final class PDF417ScanningDecoder {
    private static final int CODEWORD_SKEW_SIZE = 2;
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;
    private static final ErrorCorrection errorCorrection = new ErrorCorrection();

    private PDF417ScanningDecoder() {
    }

    private static BoundingBox adjustBoundingBox(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn) throws NotFoundException {
        int[] rowHeights;
        if (detectionResultRowIndicatorColumn == null || (rowHeights = detectionResultRowIndicatorColumn.getRowHeights()) == null) {
            return null;
        }
        int max = getMax(rowHeights);
        int i9 = 0;
        int i10 = 0;
        for (int i11 : rowHeights) {
            i10 += max - i11;
            if (i11 > 0) {
                break;
            }
        }
        Codeword[] codewords = detectionResultRowIndicatorColumn.getCodewords();
        for (int i12 = 0; i10 > 0 && codewords[i12] == null; i12++) {
            i10--;
        }
        for (int length = rowHeights.length - 1; length >= 0; length--) {
            i9 += max - rowHeights[length];
            if (rowHeights[length] > 0) {
                break;
            }
        }
        for (int length2 = codewords.length - 1; i9 > 0 && codewords[length2] == null; length2--) {
            i9--;
        }
        return detectionResultRowIndicatorColumn.getBoundingBox().addMissingRows(i10, i9, detectionResultRowIndicatorColumn.isLeft());
    }

    private static void adjustCodewordCount(DetectionResult detectionResult, BarcodeValue[][] barcodeValueArr) throws NotFoundException {
        BarcodeValue barcodeValue = barcodeValueArr[0][1];
        int[] value = barcodeValue.getValue();
        int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * detectionResult.getBarcodeRowCount()) - getNumberOfECCodeWords(detectionResult.getBarcodeECLevel());
        if (value.length != 0) {
            if (value[0] != barcodeColumnCount) {
                barcodeValue.setValue(barcodeColumnCount);
            }
        } else if (barcodeColumnCount > 0 && barcodeColumnCount <= 928) {
            barcodeValue.setValue(barcodeColumnCount);
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0022, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int adjustCodewordStartColumn(com.google.zxing.common.BitMatrix r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            if (r8 == 0) goto L4
            r0 = -1
            goto L5
        L4:
            r0 = 1
        L5:
            r1 = 0
            r2 = r9
        L7:
            r3 = 2
            if (r1 >= r3) goto L28
        La:
            if (r8 == 0) goto Lf
            if (r2 < r6) goto L22
            goto L11
        Lf:
            if (r2 >= r7) goto L22
        L11:
            boolean r4 = r5.get(r2, r10)
            if (r8 != r4) goto L22
            int r4 = r9 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r4 <= r3) goto L20
            return r9
        L20:
            int r2 = r2 + r0
            goto La
        L22:
            int r0 = -r0
            r8 = r8 ^ 1
            int r1 = r1 + 1
            goto L7
        L28:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.adjustCodewordStartColumn(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int");
    }

    private static boolean checkCodewordSkew(int i9, int i10, int i11) {
        return i10 + (-2) <= i9 && i9 <= i11 + 2;
    }

    private static int correctErrors(int[] iArr, int[] iArr2, int i9) throws ChecksumException {
        if ((iArr2 == null || iArr2.length <= (i9 / 2) + 3) && i9 >= 0 && i9 <= 512) {
            return errorCorrection.decode(iArr, i9, iArr2);
        }
        throw ChecksumException.getChecksumInstance();
    }

    private static BarcodeValue[][] createBarcodeMatrix(DetectionResult detectionResult) {
        DetectionResultColumn[] detectionResultColumns;
        Codeword[] codewords;
        int rowNumber;
        BarcodeValue[][] barcodeValueArr = (BarcodeValue[][]) Array.newInstance(BarcodeValue.class, detectionResult.getBarcodeRowCount(), detectionResult.getBarcodeColumnCount() + 2);
        for (int i9 = 0; i9 < barcodeValueArr.length; i9++) {
            for (int i10 = 0; i10 < barcodeValueArr[i9].length; i10++) {
                barcodeValueArr[i9][i10] = new BarcodeValue();
            }
        }
        int i11 = 0;
        for (DetectionResultColumn detectionResultColumn : detectionResult.getDetectionResultColumns()) {
            if (detectionResultColumn != null) {
                for (Codeword codeword : detectionResultColumn.getCodewords()) {
                    if (codeword != null && (rowNumber = codeword.getRowNumber()) >= 0 && rowNumber < barcodeValueArr.length) {
                        barcodeValueArr[rowNumber][i11].setValue(codeword.getValue());
                    }
                }
            }
            i11++;
        }
        return barcodeValueArr;
    }

    private static DecoderResult createDecoderResult(DetectionResult detectionResult) throws FormatException, ChecksumException, NotFoundException {
        BarcodeValue[][] createBarcodeMatrix = createBarcodeMatrix(detectionResult);
        adjustCodewordCount(detectionResult, createBarcodeMatrix);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[detectionResult.getBarcodeRowCount() * detectionResult.getBarcodeColumnCount()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i9 = 0; i9 < detectionResult.getBarcodeRowCount(); i9++) {
            int i10 = 0;
            while (i10 < detectionResult.getBarcodeColumnCount()) {
                int i11 = i10 + 1;
                int[] value = createBarcodeMatrix[i9][i11].getValue();
                int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * i9) + i10;
                if (value.length == 0) {
                    arrayList.add(Integer.valueOf(barcodeColumnCount));
                } else if (value.length == 1) {
                    iArr[barcodeColumnCount] = value[0];
                } else {
                    arrayList3.add(Integer.valueOf(barcodeColumnCount));
                    arrayList2.add(value);
                }
                i10 = i11;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size];
        for (int i12 = 0; i12 < size; i12++) {
            iArr2[i12] = (int[]) arrayList2.get(i12);
        }
        return createDecoderResultFromAmbiguousValues(detectionResult.getBarcodeECLevel(), iArr, PDF417Common.toIntArray(arrayList), PDF417Common.toIntArray(arrayList3), iArr2);
    }

    private static DecoderResult createDecoderResultFromAmbiguousValues(int i9, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws FormatException, ChecksumException {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i10 = 100;
        while (true) {
            int i11 = i10 - 1;
            if (i10 > 0) {
                for (int i12 = 0; i12 < length; i12++) {
                    iArr[iArr3[i12]] = iArr4[i12][iArr5[i12]];
                }
                try {
                    return decodeCodewords(iArr, i9, iArr2);
                } catch (ChecksumException unused) {
                    if (length == 0) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length) {
                            break;
                        } else if (iArr5[i13] < iArr4[i13].length - 1) {
                            iArr5[i13] = iArr5[i13] + 1;
                            break;
                        } else {
                            iArr5[i13] = 0;
                            if (i13 == length - 1) {
                                throw ChecksumException.getChecksumInstance();
                            }
                            i13++;
                        }
                    }
                    i10 = i11;
                }
            } else {
                throw ChecksumException.getChecksumInstance();
            }
        }
    }

    public static DecoderResult decode(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i9, int i10) throws NotFoundException, FormatException, ChecksumException {
        DetectionResultColumn detectionResultRowIndicatorColumn;
        int i11;
        int i12;
        int i13;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2 = null;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn3 = null;
        DetectionResult detectionResult = null;
        BoundingBox boundingBox = new BoundingBox(bitMatrix, resultPoint, resultPoint2, resultPoint3, resultPoint4);
        for (int i14 = 0; i14 < 2; i14++) {
            if (resultPoint != null) {
                detectionResultRowIndicatorColumn2 = getRowIndicatorColumn(bitMatrix, boundingBox, resultPoint, true, i9, i10);
            }
            if (resultPoint3 != null) {
                detectionResultRowIndicatorColumn3 = getRowIndicatorColumn(bitMatrix, boundingBox, resultPoint3, false, i9, i10);
            }
            detectionResult = merge(detectionResultRowIndicatorColumn2, detectionResultRowIndicatorColumn3);
            if (detectionResult != null) {
                if (i14 == 0 && detectionResult.getBoundingBox() != null && (detectionResult.getBoundingBox().getMinY() < boundingBox.getMinY() || detectionResult.getBoundingBox().getMaxY() > boundingBox.getMaxY())) {
                    boundingBox = detectionResult.getBoundingBox();
                } else {
                    detectionResult.setBoundingBox(boundingBox);
                    break;
                }
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        int barcodeColumnCount = detectionResult.getBarcodeColumnCount() + 1;
        detectionResult.setDetectionResultColumn(0, detectionResultRowIndicatorColumn2);
        detectionResult.setDetectionResultColumn(barcodeColumnCount, detectionResultRowIndicatorColumn3);
        boolean z10 = detectionResultRowIndicatorColumn2 != null;
        int i15 = i9;
        int i16 = i10;
        for (int i17 = 1; i17 <= barcodeColumnCount; i17++) {
            int i18 = z10 ? i17 : barcodeColumnCount - i17;
            if (detectionResult.getDetectionResultColumn(i18) == null) {
                if (i18 != 0 && i18 != barcodeColumnCount) {
                    detectionResultRowIndicatorColumn = new DetectionResultColumn(boundingBox);
                } else {
                    detectionResultRowIndicatorColumn = new DetectionResultRowIndicatorColumn(boundingBox, i18 == 0);
                }
                detectionResult.setDetectionResultColumn(i18, detectionResultRowIndicatorColumn);
                int i19 = -1;
                int minY = boundingBox.getMinY();
                int i20 = -1;
                while (minY <= boundingBox.getMaxY()) {
                    int startColumn = getStartColumn(detectionResult, i18, minY, z10);
                    if (startColumn >= 0 && startColumn <= boundingBox.getMaxX()) {
                        i13 = startColumn;
                    } else if (i20 != i19) {
                        i13 = i20;
                    } else {
                        i11 = i20;
                        i12 = minY;
                        i20 = i11;
                        minY = i12 + 1;
                        i19 = -1;
                    }
                    i11 = i20;
                    int i21 = minY;
                    Codeword detectCodeword = detectCodeword(bitMatrix, boundingBox.getMinX(), boundingBox.getMaxX(), z10, i13, i21, i15, i16);
                    i12 = i21;
                    if (detectCodeword != null) {
                        detectionResultRowIndicatorColumn.setCodeword(i12, detectCodeword);
                        i15 = Math.min(i15, detectCodeword.getWidth());
                        i16 = Math.max(i16, detectCodeword.getWidth());
                        i20 = i13;
                        minY = i12 + 1;
                        i19 = -1;
                    }
                    i20 = i11;
                    minY = i12 + 1;
                    i19 = -1;
                }
            }
        }
        return createDecoderResult(detectionResult);
    }

    private static DecoderResult decodeCodewords(int[] iArr, int i9, int[] iArr2) throws FormatException, ChecksumException {
        if (iArr.length != 0) {
            int i10 = 1 << (i9 + 1);
            int correctErrors = correctErrors(iArr, iArr2, i10);
            verifyCodewordCount(iArr, i10);
            DecoderResult decode = DecodedBitStreamParser.decode(iArr, String.valueOf(i9));
            decode.setErrorsCorrected(Integer.valueOf(correctErrors));
            decode.setErasures(Integer.valueOf(iArr2.length));
            return decode;
        }
        throw FormatException.getFormatInstance();
    }

    private static Codeword detectCodeword(BitMatrix bitMatrix, int i9, int i10, boolean z10, int i11, int i12, int i13, int i14) {
        int i15;
        int decodedValue;
        int codeword;
        int adjustCodewordStartColumn = adjustCodewordStartColumn(bitMatrix, i9, i10, z10, i11, i12);
        int[] moduleBitCount = getModuleBitCount(bitMatrix, i9, i10, z10, adjustCodewordStartColumn, i12);
        if (moduleBitCount == null) {
            return null;
        }
        int sum = MathUtils.sum(moduleBitCount);
        if (z10) {
            i15 = adjustCodewordStartColumn + sum;
        } else {
            for (int i16 = 0; i16 < moduleBitCount.length / 2; i16++) {
                int i17 = moduleBitCount[i16];
                moduleBitCount[i16] = moduleBitCount[(moduleBitCount.length - 1) - i16];
                moduleBitCount[(moduleBitCount.length - 1) - i16] = i17;
            }
            adjustCodewordStartColumn -= sum;
            i15 = adjustCodewordStartColumn;
        }
        if (checkCodewordSkew(sum, i13, i14) && (codeword = PDF417Common.getCodeword((decodedValue = PDF417CodewordDecoder.getDecodedValue(moduleBitCount)))) != -1) {
            return new Codeword(adjustCodewordStartColumn, i15, getCodewordBucketNumber(decodedValue), codeword);
        }
        return null;
    }

    private static BarcodeMetadata getBarcodeMetadata(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) {
        BarcodeMetadata barcodeMetadata;
        BarcodeMetadata barcodeMetadata2;
        if (detectionResultRowIndicatorColumn == null || (barcodeMetadata = detectionResultRowIndicatorColumn.getBarcodeMetadata()) == null) {
            if (detectionResultRowIndicatorColumn2 == null) {
                return null;
            }
            return detectionResultRowIndicatorColumn2.getBarcodeMetadata();
        } else if (detectionResultRowIndicatorColumn2 == null || (barcodeMetadata2 = detectionResultRowIndicatorColumn2.getBarcodeMetadata()) == null || barcodeMetadata.getColumnCount() == barcodeMetadata2.getColumnCount() || barcodeMetadata.getErrorCorrectionLevel() == barcodeMetadata2.getErrorCorrectionLevel() || barcodeMetadata.getRowCount() == barcodeMetadata2.getRowCount()) {
            return barcodeMetadata;
        } else {
            return null;
        }
    }

    private static int[] getBitCountForCodeword(int i9) {
        int[] iArr = new int[8];
        int i10 = 0;
        int i11 = 7;
        while (true) {
            int i12 = i9 & 1;
            if (i12 != i10) {
                i11--;
                if (i11 < 0) {
                    return iArr;
                }
                i10 = i12;
            }
            iArr[i11] = iArr[i11] + 1;
            i9 >>= 1;
        }
    }

    private static int getCodewordBucketNumber(int i9) {
        return getCodewordBucketNumber(getBitCountForCodeword(i9));
    }

    private static int getMax(int[] iArr) {
        int i9 = -1;
        for (int i10 : iArr) {
            i9 = Math.max(i9, i10);
        }
        return i9;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0027 A[EDGE_INSN: B:27:0x0027->B:16:0x0027 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] getModuleBitCount(com.google.zxing.common.BitMatrix r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r10 == 0) goto L9
            r3 = 1
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r5 = r10
        Lc:
            if (r10 == 0) goto L11
            if (r11 >= r9) goto L27
            goto L13
        L11:
            if (r11 < r8) goto L27
        L13:
            if (r4 >= r0) goto L27
            boolean r6 = r7.get(r11, r12)
            if (r6 != r5) goto L22
            r6 = r1[r4]
            int r6 = r6 + r2
            r1[r4] = r6
            int r11 = r11 + r3
            goto Lc
        L22:
            int r4 = r4 + 1
            r5 = r5 ^ 1
            goto Lc
        L27:
            if (r4 == r0) goto L34
            if (r10 == 0) goto L2c
            r8 = r9
        L2c:
            if (r11 != r8) goto L32
            r7 = 7
            if (r4 != r7) goto L32
            goto L34
        L32:
            r7 = 0
            return r7
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.getModuleBitCount(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int[]");
    }

    private static int getNumberOfECCodeWords(int i9) {
        return 2 << i9;
    }

    private static DetectionResultRowIndicatorColumn getRowIndicatorColumn(BitMatrix bitMatrix, BoundingBox boundingBox, ResultPoint resultPoint, boolean z10, int i9, int i10) {
        int endX;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn = new DetectionResultRowIndicatorColumn(boundingBox, z10);
        int i11 = 0;
        while (i11 < 2) {
            int i12 = i11 == 0 ? 1 : -1;
            int x10 = (int) resultPoint.getX();
            for (int y10 = (int) resultPoint.getY(); y10 <= boundingBox.getMaxY() && y10 >= boundingBox.getMinY(); y10 += i12) {
                Codeword detectCodeword = detectCodeword(bitMatrix, 0, bitMatrix.getWidth(), z10, x10, y10, i9, i10);
                if (detectCodeword != null) {
                    detectionResultRowIndicatorColumn.setCodeword(y10, detectCodeword);
                    if (z10) {
                        endX = detectCodeword.getStartX();
                    } else {
                        endX = detectCodeword.getEndX();
                    }
                    x10 = endX;
                }
            }
            i11++;
        }
        return detectionResultRowIndicatorColumn;
    }

    private static int getStartColumn(DetectionResult detectionResult, int i9, int i10, boolean z10) {
        Codeword[] codewords;
        int i11 = z10 ? 1 : -1;
        int i12 = i9 - i11;
        Codeword codeword = isValidBarcodeColumn(detectionResult, i12) ? detectionResult.getDetectionResultColumn(i12).getCodeword(i10) : null;
        if (codeword != null) {
            return z10 ? codeword.getEndX() : codeword.getStartX();
        }
        Codeword codewordNearby = detectionResult.getDetectionResultColumn(i9).getCodewordNearby(i10);
        if (codewordNearby != null) {
            return z10 ? codewordNearby.getStartX() : codewordNearby.getEndX();
        }
        if (isValidBarcodeColumn(detectionResult, i12)) {
            codewordNearby = detectionResult.getDetectionResultColumn(i12).getCodewordNearby(i10);
        }
        if (codewordNearby != null) {
            return z10 ? codewordNearby.getEndX() : codewordNearby.getStartX();
        }
        int i13 = 0;
        while (true) {
            i9 -= i11;
            if (isValidBarcodeColumn(detectionResult, i9)) {
                for (Codeword codeword2 : detectionResult.getDetectionResultColumn(i9).getCodewords()) {
                    if (codeword2 != null) {
                        return (z10 ? codeword2.getEndX() : codeword2.getStartX()) + (i11 * i13 * (codeword2.getEndX() - codeword2.getStartX()));
                    }
                }
                i13++;
            } else {
                BoundingBox boundingBox = detectionResult.getBoundingBox();
                return z10 ? boundingBox.getMinX() : boundingBox.getMaxX();
            }
        }
    }

    private static boolean isValidBarcodeColumn(DetectionResult detectionResult, int i9) {
        return i9 >= 0 && i9 <= detectionResult.getBarcodeColumnCount() + 1;
    }

    private static DetectionResult merge(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) throws NotFoundException {
        BarcodeMetadata barcodeMetadata;
        if ((detectionResultRowIndicatorColumn == null && detectionResultRowIndicatorColumn2 == null) || (barcodeMetadata = getBarcodeMetadata(detectionResultRowIndicatorColumn, detectionResultRowIndicatorColumn2)) == null) {
            return null;
        }
        return new DetectionResult(barcodeMetadata, BoundingBox.merge(adjustBoundingBox(detectionResultRowIndicatorColumn), adjustBoundingBox(detectionResultRowIndicatorColumn2)));
    }

    public static String toString(BarcodeValue[][] barcodeValueArr) {
        Formatter formatter = new Formatter();
        for (int i9 = 0; i9 < barcodeValueArr.length; i9++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(i9));
                for (int i10 = 0; i10 < barcodeValueArr[i9].length; i10++) {
                    BarcodeValue barcodeValue = barcodeValueArr[i9][i10];
                    if (barcodeValue.getValue().length == 0) {
                        formatter.format("        ", null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(barcodeValue.getValue()[0]), barcodeValue.getConfidence(barcodeValue.getValue()[0]));
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        formatter.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }

    private static void verifyCodewordCount(int[] iArr, int i9) throws FormatException {
        if (iArr.length >= 4) {
            int i10 = iArr[0];
            if (i10 > iArr.length) {
                throw FormatException.getFormatInstance();
            }
            if (i10 == 0) {
                if (i9 < iArr.length) {
                    iArr[0] = iArr.length - i9;
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            return;
        }
        throw FormatException.getFormatInstance();
    }

    private static int getCodewordBucketNumber(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }
}
