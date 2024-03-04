package com.google.zxing;

import io.jsonwebtoken.JwtParser;
import kotlin.UByte;
/* loaded from: classes3.dex */
public abstract class LuminanceSource {
    private final int height;
    private final int width;

    /* JADX INFO: Access modifiers changed from: protected */
    public LuminanceSource(int i9, int i10) {
        this.width = i9;
        this.height = i10;
    }

    public LuminanceSource crop(int i9, int i10, int i11, int i12) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public final int getHeight() {
        return this.height;
    }

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i9, byte[] bArr);

    public final int getWidth() {
        return this.width;
    }

    public LuminanceSource invert() {
        return new InvertedLuminanceSource(this);
    }

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public LuminanceSource rotateCounterClockwise45() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        int i9 = this.width;
        byte[] bArr = new byte[i9];
        StringBuilder sb2 = new StringBuilder(this.height * (i9 + 1));
        for (int i10 = 0; i10 < this.height; i10++) {
            bArr = getRow(i10, bArr);
            for (int i11 = 0; i11 < this.width; i11++) {
                int i12 = bArr[i11] & UByte.MAX_VALUE;
                sb2.append(i12 < 64 ? '#' : i12 < 128 ? '+' : i12 < 192 ? JwtParser.SEPARATOR_CHAR : ' ');
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
