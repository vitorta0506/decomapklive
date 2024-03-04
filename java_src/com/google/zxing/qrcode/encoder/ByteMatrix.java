package com.google.zxing.qrcode.encoder;

import java.lang.reflect.Array;
import java.util.Arrays;
/* loaded from: classes3.dex */
public final class ByteMatrix {
    private final byte[][] bytes;
    private final int height;
    private final int width;

    public ByteMatrix(int i9, int i10) {
        this.bytes = (byte[][]) Array.newInstance(byte.class, i10, i9);
        this.width = i9;
        this.height = i10;
    }

    public void clear(byte b10) {
        for (byte[] bArr : this.bytes) {
            Arrays.fill(bArr, b10);
        }
    }

    public byte get(int i9, int i10) {
        return this.bytes[i10][i9];
    }

    public byte[][] getArray() {
        return this.bytes;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void set(int i9, int i10, byte b10) {
        this.bytes[i10][i9] = b10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder((this.width * 2 * this.height) + 2);
        for (int i9 = 0; i9 < this.height; i9++) {
            byte[] bArr = this.bytes[i9];
            for (int i10 = 0; i10 < this.width; i10++) {
                byte b10 = bArr[i10];
                if (b10 == 0) {
                    sb2.append(" 0");
                } else if (b10 != 1) {
                    sb2.append("  ");
                } else {
                    sb2.append(" 1");
                }
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }

    public void set(int i9, int i10, int i11) {
        this.bytes[i10][i9] = (byte) i11;
    }

    public void set(int i9, int i10, boolean z10) {
        this.bytes[i10][i9] = z10 ? (byte) 1 : (byte) 0;
    }
}
