package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import kotlin.UByte;
/* loaded from: classes3.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final byte[] EMPTY = new byte[0];
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private final int[] buckets;
    private byte[] luminances;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.luminances = EMPTY;
        this.buckets = new int[32];
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (iArr[i12] > i9) {
                i9 = iArr[i12];
                i11 = i12;
            }
            if (iArr[i12] > i10) {
                i10 = iArr[i12];
            }
        }
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            int i16 = i15 - i11;
            int i17 = iArr[i15] * i16 * i16;
            if (i17 > i14) {
                i13 = i15;
                i14 = i17;
            }
        }
        if (i11 <= i13) {
            int i18 = i11;
            i11 = i13;
            i13 = i18;
        }
        if (i11 - i13 > length / 16) {
            int i19 = i11 - 1;
            int i20 = i19;
            int i21 = -1;
            while (i19 > i13) {
                int i22 = i19 - i13;
                int i23 = i22 * i22 * (i11 - i19) * (i10 - iArr[i19]);
                if (i23 > i21) {
                    i20 = i19;
                    i21 = i23;
                }
                i19--;
            }
            return i20 << 3;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void initArrays(int i9) {
        if (this.luminances.length < i9) {
            this.luminances = new byte[i9];
        }
        for (int i10 = 0; i10 < 32; i10++) {
            this.buckets[i10] = 0;
        }
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        for (int i9 = 1; i9 < 5; i9++) {
            byte[] row = luminanceSource.getRow((height * i9) / 5, this.luminances);
            int i10 = (width << 2) / 5;
            for (int i11 = width / 5; i11 < i10; i11++) {
                int i12 = (row[i11] & UByte.MAX_VALUE) >> 3;
                iArr[i12] = iArr[i12] + 1;
            }
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i13 = 0; i13 < height; i13++) {
            int i14 = i13 * width;
            for (int i15 = 0; i15 < width; i15++) {
                if ((matrix[i14 + i15] & UByte.MAX_VALUE) < estimateBlackPoint) {
                    bitMatrix.set(i15, i13);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i9, BitArray bitArray) throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray != null && bitArray.getSize() >= width) {
            bitArray.clear();
        } else {
            bitArray = new BitArray(width);
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i9, this.luminances);
        int[] iArr = this.buckets;
        for (int i10 = 0; i10 < width; i10++) {
            int i11 = (row[i10] & UByte.MAX_VALUE) >> 3;
            iArr[i11] = iArr[i11] + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        if (width < 3) {
            for (int i12 = 0; i12 < width; i12++) {
                if ((row[i12] & UByte.MAX_VALUE) < estimateBlackPoint) {
                    bitArray.set(i12);
                }
            }
        } else {
            int i13 = row[0] & UByte.MAX_VALUE;
            int i14 = 1;
            int i15 = i13;
            int i16 = row[1] & UByte.MAX_VALUE;
            while (i14 < width - 1) {
                int i17 = i14 + 1;
                int i18 = row[i17] & UByte.MAX_VALUE;
                if ((((i16 << 2) - i15) - i18) / 2 < estimateBlackPoint) {
                    bitArray.set(i14);
                }
                i15 = i16;
                i14 = i17;
                i16 = i18;
            }
        }
        return bitArray;
    }
}
