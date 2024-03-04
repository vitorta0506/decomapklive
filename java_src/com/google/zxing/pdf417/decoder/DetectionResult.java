package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.util.Formatter;
/* loaded from: classes3.dex */
final class DetectionResult {
    private static final int ADJUST_ROW_NUMBER_SKIP = 2;
    private final int barcodeColumnCount;
    private final BarcodeMetadata barcodeMetadata;
    private BoundingBox boundingBox;
    private final DetectionResultColumn[] detectionResultColumns;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DetectionResult(BarcodeMetadata barcodeMetadata, BoundingBox boundingBox) {
        this.barcodeMetadata = barcodeMetadata;
        int columnCount = barcodeMetadata.getColumnCount();
        this.barcodeColumnCount = columnCount;
        this.boundingBox = boundingBox;
        this.detectionResultColumns = new DetectionResultColumn[columnCount + 2];
    }

    private void adjustIndicatorColumnRowNumbers(DetectionResultColumn detectionResultColumn) {
        if (detectionResultColumn != null) {
            ((DetectionResultRowIndicatorColumn) detectionResultColumn).adjustCompleteIndicatorColumnRowNumbers(this.barcodeMetadata);
        }
    }

    private static boolean adjustRowNumber(Codeword codeword, Codeword codeword2) {
        if (codeword2 != null && codeword2.hasValidRowNumber() && codeword2.getBucket() == codeword.getBucket()) {
            codeword.setRowNumber(codeword2.getRowNumber());
            return true;
        }
        return false;
    }

    private static int adjustRowNumberIfValid(int i9, int i10, Codeword codeword) {
        if (codeword == null || codeword.hasValidRowNumber()) {
            return i10;
        }
        if (codeword.isValidRowNumber(i9)) {
            codeword.setRowNumber(i9);
            return 0;
        }
        return i10 + 1;
    }

    private int adjustRowNumbers() {
        int adjustRowNumbersByRow = adjustRowNumbersByRow();
        if (adjustRowNumbersByRow == 0) {
            return 0;
        }
        for (int i9 = 1; i9 < this.barcodeColumnCount + 1; i9++) {
            Codeword[] codewords = this.detectionResultColumns[i9].getCodewords();
            for (int i10 = 0; i10 < codewords.length; i10++) {
                if (codewords[i10] != null && !codewords[i10].hasValidRowNumber()) {
                    adjustRowNumbers(i9, i10, codewords);
                }
            }
        }
        return adjustRowNumbersByRow;
    }

    private int adjustRowNumbersByRow() {
        adjustRowNumbersFromBothRI();
        return adjustRowNumbersFromLRI() + adjustRowNumbersFromRRI();
    }

    private void adjustRowNumbersFromBothRI() {
        DetectionResultColumn[] detectionResultColumnArr = this.detectionResultColumns;
        if (detectionResultColumnArr[0] == null || detectionResultColumnArr[this.barcodeColumnCount + 1] == null) {
            return;
        }
        Codeword[] codewords = detectionResultColumnArr[0].getCodewords();
        Codeword[] codewords2 = this.detectionResultColumns[this.barcodeColumnCount + 1].getCodewords();
        for (int i9 = 0; i9 < codewords.length; i9++) {
            if (codewords[i9] != null && codewords2[i9] != null && codewords[i9].getRowNumber() == codewords2[i9].getRowNumber()) {
                for (int i10 = 1; i10 <= this.barcodeColumnCount; i10++) {
                    Codeword codeword = this.detectionResultColumns[i10].getCodewords()[i9];
                    if (codeword != null) {
                        codeword.setRowNumber(codewords[i9].getRowNumber());
                        if (!codeword.hasValidRowNumber()) {
                            this.detectionResultColumns[i10].getCodewords()[i9] = null;
                        }
                    }
                }
            }
        }
    }

    private int adjustRowNumbersFromLRI() {
        DetectionResultColumn[] detectionResultColumnArr = this.detectionResultColumns;
        if (detectionResultColumnArr[0] == null) {
            return 0;
        }
        Codeword[] codewords = detectionResultColumnArr[0].getCodewords();
        int i9 = 0;
        for (int i10 = 0; i10 < codewords.length; i10++) {
            if (codewords[i10] != null) {
                int rowNumber = codewords[i10].getRowNumber();
                int i11 = 0;
                for (int i12 = 1; i12 < this.barcodeColumnCount + 1 && i11 < 2; i12++) {
                    Codeword codeword = this.detectionResultColumns[i12].getCodewords()[i10];
                    if (codeword != null) {
                        i11 = adjustRowNumberIfValid(rowNumber, i11, codeword);
                        if (!codeword.hasValidRowNumber()) {
                            i9++;
                        }
                    }
                }
            }
        }
        return i9;
    }

    private int adjustRowNumbersFromRRI() {
        DetectionResultColumn[] detectionResultColumnArr = this.detectionResultColumns;
        int i9 = this.barcodeColumnCount;
        if (detectionResultColumnArr[i9 + 1] == null) {
            return 0;
        }
        Codeword[] codewords = detectionResultColumnArr[i9 + 1].getCodewords();
        int i10 = 0;
        for (int i11 = 0; i11 < codewords.length; i11++) {
            if (codewords[i11] != null) {
                int rowNumber = codewords[i11].getRowNumber();
                int i12 = 0;
                for (int i13 = this.barcodeColumnCount + 1; i13 > 0 && i12 < 2; i13--) {
                    Codeword codeword = this.detectionResultColumns[i13].getCodewords()[i11];
                    if (codeword != null) {
                        i12 = adjustRowNumberIfValid(rowNumber, i12, codeword);
                        if (!codeword.hasValidRowNumber()) {
                            i10++;
                        }
                    }
                }
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBarcodeColumnCount() {
        return this.barcodeColumnCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBarcodeECLevel() {
        return this.barcodeMetadata.getErrorCorrectionLevel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBarcodeRowCount() {
        return this.barcodeMetadata.getRowCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DetectionResultColumn getDetectionResultColumn(int i9) {
        return this.detectionResultColumns[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DetectionResultColumn[] getDetectionResultColumns() {
        adjustIndicatorColumnRowNumbers(this.detectionResultColumns[0]);
        adjustIndicatorColumnRowNumbers(this.detectionResultColumns[this.barcodeColumnCount + 1]);
        int i9 = PDF417Common.MAX_CODEWORDS_IN_BARCODE;
        while (true) {
            int adjustRowNumbers = adjustRowNumbers();
            if (adjustRowNumbers <= 0 || adjustRowNumbers >= i9) {
                break;
            }
            i9 = adjustRowNumbers;
        }
        return this.detectionResultColumns;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBoundingBox(BoundingBox boundingBox) {
        this.boundingBox = boundingBox;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDetectionResultColumn(int i9, DetectionResultColumn detectionResultColumn) {
        this.detectionResultColumns[i9] = detectionResultColumn;
    }

    public String toString() {
        DetectionResultColumn[] detectionResultColumnArr = this.detectionResultColumns;
        DetectionResultColumn detectionResultColumn = detectionResultColumnArr[0];
        if (detectionResultColumn == null) {
            detectionResultColumn = detectionResultColumnArr[this.barcodeColumnCount + 1];
        }
        Formatter formatter = new Formatter();
        for (int i9 = 0; i9 < detectionResultColumn.getCodewords().length; i9++) {
            try {
                formatter.format("CW %3d:", Integer.valueOf(i9));
                for (int i10 = 0; i10 < this.barcodeColumnCount + 2; i10++) {
                    DetectionResultColumn[] detectionResultColumnArr2 = this.detectionResultColumns;
                    if (detectionResultColumnArr2[i10] == null) {
                        formatter.format("    |   ", new Object[0]);
                    } else {
                        Codeword codeword = detectionResultColumnArr2[i10].getCodewords()[i9];
                        if (codeword == null) {
                            formatter.format("    |   ", new Object[0]);
                        } else {
                            formatter.format(" %3d|%3d", Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue()));
                        }
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

    private void adjustRowNumbers(int i9, int i10, Codeword[] codewordArr) {
        Codeword codeword = codewordArr[i10];
        Codeword[] codewords = this.detectionResultColumns[i9 - 1].getCodewords();
        DetectionResultColumn[] detectionResultColumnArr = this.detectionResultColumns;
        int i11 = i9 + 1;
        Codeword[] codewords2 = detectionResultColumnArr[i11] != null ? detectionResultColumnArr[i11].getCodewords() : codewords;
        Codeword[] codewordArr2 = new Codeword[14];
        codewordArr2[2] = codewords[i10];
        codewordArr2[3] = codewords2[i10];
        if (i10 > 0) {
            int i12 = i10 - 1;
            codewordArr2[0] = codewordArr[i12];
            codewordArr2[4] = codewords[i12];
            codewordArr2[5] = codewords2[i12];
        }
        if (i10 > 1) {
            int i13 = i10 - 2;
            codewordArr2[8] = codewordArr[i13];
            codewordArr2[10] = codewords[i13];
            codewordArr2[11] = codewords2[i13];
        }
        if (i10 < codewordArr.length - 1) {
            int i14 = i10 + 1;
            codewordArr2[1] = codewordArr[i14];
            codewordArr2[6] = codewords[i14];
            codewordArr2[7] = codewords2[i14];
        }
        if (i10 < codewordArr.length - 2) {
            int i15 = i10 + 2;
            codewordArr2[9] = codewordArr[i15];
            codewordArr2[12] = codewords[i15];
            codewordArr2[13] = codewords2[i15];
        }
        for (int i16 = 0; i16 < 14 && !adjustRowNumber(codeword, codewordArr2[i16]); i16++) {
        }
    }
}
