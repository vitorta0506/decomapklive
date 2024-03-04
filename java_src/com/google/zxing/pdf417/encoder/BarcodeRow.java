package com.google.zxing.pdf417.encoder;
/* loaded from: classes3.dex */
final class BarcodeRow {
    private int currentLocation = 0;
    private final byte[] row;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeRow(int i9) {
        this.row = new byte[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addBar(boolean z10, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = this.currentLocation;
            this.currentLocation = i11 + 1;
            set(i11, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getScaledRow(int i9) {
        int length = this.row.length * i9;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = this.row[i10 / i9];
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void set(int i9, byte b10) {
        this.row[i9] = b10;
    }

    private void set(int i9, boolean z10) {
        this.row[i9] = z10 ? (byte) 1 : (byte) 0;
    }
}
