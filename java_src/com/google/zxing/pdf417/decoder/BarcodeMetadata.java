package com.google.zxing.pdf417.decoder;
/* loaded from: classes3.dex */
final class BarcodeMetadata {
    private final int columnCount;
    private final int errorCorrectionLevel;
    private final int rowCount;
    private final int rowCountLowerPart;
    private final int rowCountUpperPart;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeMetadata(int i9, int i10, int i11, int i12) {
        this.columnCount = i9;
        this.errorCorrectionLevel = i12;
        this.rowCountUpperPart = i10;
        this.rowCountLowerPart = i11;
        this.rowCount = i10 + i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getColumnCount() {
        return this.columnCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowCount() {
        return this.rowCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowCountLowerPart() {
        return this.rowCountLowerPart;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowCountUpperPart() {
        return this.rowCountUpperPart;
    }
}
