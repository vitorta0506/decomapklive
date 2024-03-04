package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.Dimensions;
import com.google.zxing.pdf417.encoder.PDF417;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes3.dex */
public final class PDF417Writer implements Writer {
    private static final int DEFAULT_ERROR_CORRECTION_LEVEL = 2;
    private static final int WHITE_SPACE = 30;

    private static BitMatrix bitMatrixFromBitArray(byte[][] bArr, int i9) {
        int i10 = i9 * 2;
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + i10, bArr.length + i10);
        bitMatrix.clear();
        int height = (bitMatrix.getHeight() - i9) - 1;
        int i11 = 0;
        while (i11 < bArr.length) {
            byte[] bArr2 = bArr[i11];
            for (int i12 = 0; i12 < bArr[0].length; i12++) {
                if (bArr2[i12] == 1) {
                    bitMatrix.set(i12 + i9, height);
                }
            }
            i11++;
            height--;
        }
        return bitMatrix;
    }

    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i9, int i10, int i11, int i12) throws WriterException {
        boolean z10;
        pdf417.generateBarcodeLogic(str, i9);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(1, 4);
        if ((i11 > i10) != (scaledMatrix[0].length < scaledMatrix.length)) {
            scaledMatrix = rotateArray(scaledMatrix);
            z10 = true;
        } else {
            z10 = false;
        }
        int length = i10 / scaledMatrix[0].length;
        int length2 = i11 / scaledMatrix.length;
        if (length >= length2) {
            length = length2;
        }
        if (length > 1) {
            byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(length, length << 2);
            if (z10) {
                scaledMatrix2 = rotateArray(scaledMatrix2);
            }
            return bitMatrixFromBitArray(scaledMatrix2, i12);
        }
        return bitMatrixFromBitArray(scaledMatrix, i12);
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(byte.class, bArr[0].length, bArr.length);
        for (int i9 = 0; i9 < bArr.length; i9++) {
            int length = (bArr.length - i9) - 1;
            for (int i10 = 0; i10 < bArr[0].length; i10++) {
                bArr2[i10][length] = bArr[i9][i10];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        int i11;
        int i12;
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            PDF417 pdf417 = new PDF417();
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
                if (map.containsKey(encodeHintType)) {
                    pdf417.setCompact(Boolean.valueOf(map.get(encodeHintType).toString()).booleanValue());
                }
                EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
                if (map.containsKey(encodeHintType2)) {
                    pdf417.setCompaction(Compaction.valueOf(map.get(encodeHintType2).toString()));
                }
                EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
                if (map.containsKey(encodeHintType3)) {
                    Dimensions dimensions = (Dimensions) map.get(encodeHintType3);
                    pdf417.setDimensions(dimensions.getMaxCols(), dimensions.getMinCols(), dimensions.getMaxRows(), dimensions.getMinRows());
                }
                EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
                int parseInt = map.containsKey(encodeHintType4) ? Integer.parseInt(map.get(encodeHintType4).toString()) : 30;
                EncodeHintType encodeHintType5 = EncodeHintType.ERROR_CORRECTION;
                int parseInt2 = map.containsKey(encodeHintType5) ? Integer.parseInt(map.get(encodeHintType5).toString()) : 2;
                EncodeHintType encodeHintType6 = EncodeHintType.CHARACTER_SET;
                if (map.containsKey(encodeHintType6)) {
                    pdf417.setEncoding(Charset.forName(map.get(encodeHintType6).toString()));
                }
                i12 = parseInt;
                i11 = parseInt2;
            } else {
                i11 = 2;
                i12 = 30;
            }
            return bitMatrixFromEncoder(pdf417, str, i11, i9, i10, i12);
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10) throws WriterException {
        return encode(str, barcodeFormat, i9, i10, null);
    }
}
