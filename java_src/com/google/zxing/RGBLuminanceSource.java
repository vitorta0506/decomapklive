package com.google.zxing;

import androidx.constraintlayout.core.motion.utils.TypedValues;
/* loaded from: classes3.dex */
public final class RGBLuminanceSource extends LuminanceSource {
    private final int dataHeight;
    private final int dataWidth;
    private final int left;
    private final byte[] luminances;
    private final int top;

    public RGBLuminanceSource(int i9, int i10, int[] iArr) {
        super(i9, i10);
        this.dataWidth = i9;
        this.dataHeight = i10;
        this.left = 0;
        this.top = 0;
        int i11 = i9 * i10;
        this.luminances = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = iArr[i12];
            this.luminances[i12] = (byte) (((((i13 >> 16) & 255) + ((i13 >> 7) & TypedValues.PositionType.TYPE_POSITION_TYPE)) + (i13 & 255)) / 4);
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i9, int i10, int i11, int i12) {
        return new RGBLuminanceSource(this.luminances, this.dataWidth, this.dataHeight, this.left + i9, this.top + i10, i11, i12);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i9 = this.dataWidth;
        if (width == i9 && height == this.dataHeight) {
            return this.luminances;
        }
        int i10 = width * height;
        byte[] bArr = new byte[i10];
        int i11 = (this.top * i9) + this.left;
        if (width == i9) {
            System.arraycopy(this.luminances, i11, bArr, 0, i10);
            return bArr;
        }
        for (int i12 = 0; i12 < height; i12++) {
            System.arraycopy(this.luminances, i11, bArr, i12 * width, width);
            i11 += this.dataWidth;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i9, byte[] bArr) {
        if (i9 >= 0 && i9 < getHeight()) {
            int width = getWidth();
            if (bArr == null || bArr.length < width) {
                bArr = new byte[width];
            }
            System.arraycopy(this.luminances, ((i9 + this.top) * this.dataWidth) + this.left, bArr, 0, width);
            return bArr;
        }
        throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i9)));
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    private RGBLuminanceSource(byte[] bArr, int i9, int i10, int i11, int i12, int i13, int i14) {
        super(i13, i14);
        if (i13 + i11 <= i9 && i14 + i12 <= i10) {
            this.luminances = bArr;
            this.dataWidth = i9;
            this.dataHeight = i10;
            this.left = i11;
            this.top = i12;
            return;
        }
        throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }
}
