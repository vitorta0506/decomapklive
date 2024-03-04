package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes3.dex */
public final class BinaryBitmap {
    private final Binarizer binarizer;
    private BitMatrix matrix;

    public BinaryBitmap(Binarizer binarizer) {
        if (binarizer != null) {
            this.binarizer = binarizer;
            return;
        }
        throw new IllegalArgumentException("Binarizer must be non-null.");
    }

    public BinaryBitmap crop(int i9, int i10, int i11, int i12) {
        return new BinaryBitmap(this.binarizer.createBinarizer(this.binarizer.getLuminanceSource().crop(i9, i10, i11, i12)));
    }

    public BitMatrix getBlackMatrix() throws NotFoundException {
        if (this.matrix == null) {
            this.matrix = this.binarizer.getBlackMatrix();
        }
        return this.matrix;
    }

    public BitArray getBlackRow(int i9, BitArray bitArray) throws NotFoundException {
        return this.binarizer.getBlackRow(i9, bitArray);
    }

    public int getHeight() {
        return this.binarizer.getHeight();
    }

    public int getWidth() {
        return this.binarizer.getWidth();
    }

    public boolean isCropSupported() {
        return this.binarizer.getLuminanceSource().isCropSupported();
    }

    public boolean isRotateSupported() {
        return this.binarizer.getLuminanceSource().isRotateSupported();
    }

    public BinaryBitmap rotateCounterClockwise() {
        return new BinaryBitmap(this.binarizer.createBinarizer(this.binarizer.getLuminanceSource().rotateCounterClockwise()));
    }

    public BinaryBitmap rotateCounterClockwise45() {
        return new BinaryBitmap(this.binarizer.createBinarizer(this.binarizer.getLuminanceSource().rotateCounterClockwise45()));
    }

    public String toString() {
        try {
            return getBlackMatrix().toString();
        } catch (NotFoundException unused) {
            return "";
        }
    }
}
