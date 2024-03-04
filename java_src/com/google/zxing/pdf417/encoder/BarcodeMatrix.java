package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;
/* loaded from: classes3.dex */
public final class BarcodeMatrix {
    private int currentRow;
    private final int height;
    private final BarcodeRow[] matrix;
    private final int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeMatrix(int i9, int i10) {
        BarcodeRow[] barcodeRowArr = new BarcodeRow[i9];
        this.matrix = barcodeRowArr;
        int length = barcodeRowArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.matrix[i11] = new BarcodeRow(((i10 + 4) * 17) + 1);
        }
        this.width = i10 * 17;
        this.height = i9;
        this.currentRow = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeRow getCurrentRow() {
        return this.matrix[this.currentRow];
    }

    public byte[][] getMatrix() {
        return getScaledMatrix(1, 1);
    }

    public byte[][] getScaledMatrix(int i9, int i10) {
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, this.height * i10, this.width * i9);
        int i11 = this.height * i10;
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[(i11 - i12) - 1] = this.matrix[i12 / i10].getScaledRow(i9);
        }
        return bArr;
    }

    void set(int i9, int i10, byte b10) {
        this.matrix[i10].set(i9, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startRow() {
        this.currentRow++;
    }
}
