package com.google.zxing.pdf417.decoder;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
/* loaded from: classes3.dex */
final class Codeword {
    private static final int BARCODE_ROW_UNKNOWN = -1;
    private final int bucket;
    private final int endX;
    private int rowNumber = -1;
    private final int startX;
    private final int value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Codeword(int i9, int i10, int i11, int i12) {
        this.startX = i9;
        this.endX = i10;
        this.bucket = i11;
        this.value = i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBucket() {
        return this.bucket;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEndX() {
        return this.endX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowNumber() {
        return this.rowNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStartX() {
        return this.startX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getValue() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidth() {
        return this.endX - this.startX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasValidRowNumber() {
        return isValidRowNumber(this.rowNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isValidRowNumber(int i9) {
        return i9 != -1 && this.bucket == (i9 % 3) * 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRowNumber(int i9) {
        this.rowNumber = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRowNumberAsRowIndicatorColumn() {
        this.rowNumber = ((this.value / 30) * 3) + (this.bucket / 3);
    }

    public String toString() {
        return this.rowNumber + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + this.value;
    }
}
