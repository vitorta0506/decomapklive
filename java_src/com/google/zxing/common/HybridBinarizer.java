package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;
import kotlin.UByte;
/* loaded from: classes3.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    private static int[][] calculateBlackPoints(byte[] bArr, int i9, int i10, int i11, int i12) {
        int i13 = 8;
        int i14 = i12 - 8;
        int i15 = i11 - 8;
        int[][] iArr = (int[][]) Array.newInstance(int.class, i10, i9);
        int i16 = 0;
        while (i16 < i10) {
            int i17 = i16 << 3;
            if (i17 > i14) {
                i17 = i14;
            }
            int i18 = 0;
            while (i18 < i9) {
                int i19 = i18 << 3;
                if (i19 > i15) {
                    i19 = i15;
                }
                int i20 = (i17 * i11) + i19;
                int i21 = 255;
                int i22 = 0;
                int i23 = 0;
                int i24 = 0;
                while (i22 < i13) {
                    int i25 = i24;
                    int i26 = 0;
                    while (i26 < i13) {
                        int i27 = bArr[i20 + i26] & UByte.MAX_VALUE;
                        i23 += i27;
                        if (i27 < i21) {
                            i21 = i27;
                        }
                        if (i27 > i25) {
                            i25 = i27;
                        }
                        i26++;
                        i13 = 8;
                    }
                    if (i25 - i21 <= 24) {
                        i22++;
                        i20 += i11;
                        i24 = i25;
                        i13 = 8;
                    }
                    while (true) {
                        i22++;
                        i20 += i11;
                        if (i22 < 8) {
                            int i28 = 0;
                            for (int i29 = 8; i28 < i29; i29 = 8) {
                                i23 += bArr[i20 + i28] & UByte.MAX_VALUE;
                                i28++;
                            }
                        }
                    }
                    i22++;
                    i20 += i11;
                    i24 = i25;
                    i13 = 8;
                }
                int i30 = i23 >> 6;
                if (i24 - i21 <= 24) {
                    i30 = i21 / 2;
                    if (i16 > 0 && i18 > 0) {
                        int i31 = i16 - 1;
                        int i32 = i18 - 1;
                        int i33 = ((iArr[i31][i18] + (iArr[i16][i32] * 2)) + iArr[i31][i32]) / 4;
                        if (i21 < i33) {
                            i30 = i33;
                        }
                        iArr[i16][i18] = i30;
                        i18++;
                        i13 = 8;
                    }
                }
                iArr[i16][i18] = i30;
                i18++;
                i13 = 8;
            }
            i16++;
            i13 = 8;
        }
        return iArr;
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i9, int i10, int i11, int i12, int[][] iArr, BitMatrix bitMatrix) {
        int i13 = i12 - 8;
        int i14 = i11 - 8;
        for (int i15 = 0; i15 < i10; i15++) {
            int i16 = i15 << 3;
            int i17 = i16 > i13 ? i13 : i16;
            int cap = cap(i15, 2, i10 - 3);
            for (int i18 = 0; i18 < i9; i18++) {
                int i19 = i18 << 3;
                int i20 = i19 > i14 ? i14 : i19;
                int cap2 = cap(i18, 2, i9 - 3);
                int i21 = 0;
                for (int i22 = -2; i22 <= 2; i22++) {
                    int[] iArr2 = iArr[cap + i22];
                    i21 += iArr2[cap2 - 2] + iArr2[cap2 - 1] + iArr2[cap2] + iArr2[cap2 + 1] + iArr2[cap2 + 2];
                }
                thresholdBlock(bArr, i20, i17, i21 / 25, i11, bitMatrix);
            }
        }
    }

    private static int cap(int i9, int i10, int i11) {
        return i9 < i10 ? i10 : i9 > i11 ? i11 : i9;
    }

    private static void thresholdBlock(byte[] bArr, int i9, int i10, int i11, int i12, BitMatrix bitMatrix) {
        int i13 = (i10 * i12) + i9;
        int i14 = 0;
        while (i14 < 8) {
            for (int i15 = 0; i15 < 8; i15++) {
                if ((bArr[i13 + i15] & 255) <= i11) {
                    bitMatrix.set(i9 + i15, i10 + i14);
                }
            }
            i14++;
            i13 += i12;
        }
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width >= 40 && height >= 40) {
            byte[] matrix = luminanceSource.getMatrix();
            int i9 = width >> 3;
            if ((width & 7) != 0) {
                i9++;
            }
            int i10 = i9;
            int i11 = height >> 3;
            if ((height & 7) != 0) {
                i11++;
            }
            int i12 = i11;
            int[][] calculateBlackPoints = calculateBlackPoints(matrix, i10, i12, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i10, i12, width, height, calculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        } else {
            this.matrix = super.getBlackMatrix();
        }
        return this.matrix;
    }
}
