package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Dimension;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.DefaultPlacement;
import com.google.zxing.datamatrix.encoder.ErrorCorrection;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DataMatrixWriter implements Writer {
    private static BitMatrix convertByteMatrixToBitMatrix(ByteMatrix byteMatrix, int i9, int i10) {
        BitMatrix bitMatrix;
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int max = Math.max(i9, width);
        int max2 = Math.max(i10, height);
        int min = Math.min(max / width, max2 / height);
        int i11 = (max - (width * min)) / 2;
        int i12 = (max2 - (height * min)) / 2;
        if (i10 >= height && i9 >= width) {
            bitMatrix = new BitMatrix(i9, i10);
        } else {
            bitMatrix = new BitMatrix(width, height);
            i11 = 0;
            i12 = 0;
        }
        bitMatrix.clear();
        int i13 = 0;
        while (i13 < height) {
            int i14 = i11;
            int i15 = 0;
            while (i15 < width) {
                if (byteMatrix.get(i15, i13) == 1) {
                    bitMatrix.setRegion(i14, i12, min, min);
                }
                i15++;
                i14 += min;
            }
            i13++;
            i12 += min;
        }
        return bitMatrix;
    }

    private static BitMatrix encodeLowLevel(DefaultPlacement defaultPlacement, SymbolInfo symbolInfo, int i9, int i10) {
        int symbolDataWidth = symbolInfo.getSymbolDataWidth();
        int symbolDataHeight = symbolInfo.getSymbolDataHeight();
        ByteMatrix byteMatrix = new ByteMatrix(symbolInfo.getSymbolWidth(), symbolInfo.getSymbolHeight());
        int i11 = 0;
        for (int i12 = 0; i12 < symbolDataHeight; i12++) {
            if (i12 % symbolInfo.matrixHeight == 0) {
                int i13 = 0;
                for (int i14 = 0; i14 < symbolInfo.getSymbolWidth(); i14++) {
                    byteMatrix.set(i13, i11, i14 % 2 == 0);
                    i13++;
                }
                i11++;
            }
            int i15 = 0;
            for (int i16 = 0; i16 < symbolDataWidth; i16++) {
                if (i16 % symbolInfo.matrixWidth == 0) {
                    byteMatrix.set(i15, i11, true);
                    i15++;
                }
                byteMatrix.set(i15, i11, defaultPlacement.getBit(i16, i12));
                i15++;
                int i17 = symbolInfo.matrixWidth;
                if (i16 % i17 == i17 - 1) {
                    byteMatrix.set(i15, i11, i12 % 2 == 0);
                    i15++;
                }
            }
            i11++;
            int i18 = symbolInfo.matrixHeight;
            if (i12 % i18 == i18 - 1) {
                int i19 = 0;
                for (int i20 = 0; i20 < symbolInfo.getSymbolWidth(); i20++) {
                    byteMatrix.set(i19, i11, true);
                    i19++;
                }
                i11++;
            }
        }
        return convertByteMatrixToBitMatrix(byteMatrix, i9, i10);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10) {
        return encode(str, barcodeFormat, i9, i10, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) {
        Dimension dimension;
        if (!str.isEmpty()) {
            if (barcodeFormat == BarcodeFormat.DATA_MATRIX) {
                if (i9 >= 0 && i10 >= 0) {
                    SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
                    Dimension dimension2 = null;
                    if (map != null) {
                        SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
                        if (symbolShapeHint2 != null) {
                            symbolShapeHint = symbolShapeHint2;
                        }
                        Dimension dimension3 = (Dimension) map.get(EncodeHintType.MIN_SIZE);
                        if (dimension3 == null) {
                            dimension3 = null;
                        }
                        dimension = (Dimension) map.get(EncodeHintType.MAX_SIZE);
                        if (dimension == null) {
                            dimension = null;
                        }
                        dimension2 = dimension3;
                    } else {
                        dimension = null;
                    }
                    String encodeHighLevel = HighLevelEncoder.encodeHighLevel(str, symbolShapeHint, dimension2, dimension);
                    SymbolInfo lookup = SymbolInfo.lookup(encodeHighLevel.length(), symbolShapeHint, dimension2, dimension, true);
                    DefaultPlacement defaultPlacement = new DefaultPlacement(ErrorCorrection.encodeECC200(encodeHighLevel, lookup), lookup.getSymbolDataWidth(), lookup.getSymbolDataHeight());
                    defaultPlacement.place();
                    return encodeLowLevel(defaultPlacement, lookup, i9, i10);
                }
                throw new IllegalArgumentException("Requested dimensions can't be negative: " + i9 + 'x' + i10);
            }
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(barcodeFormat)));
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
