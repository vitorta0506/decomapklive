package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;
/* loaded from: classes3.dex */
public class DefaultPlacement {
    private final byte[] bits;
    private final CharSequence codewords;
    private final int numcols;
    private final int numrows;

    public DefaultPlacement(CharSequence charSequence, int i9, int i10) {
        this.codewords = charSequence;
        this.numcols = i9;
        this.numrows = i10;
        byte[] bArr = new byte[i9 * i10];
        this.bits = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    private void corner1(int i9) {
        module(this.numrows - 1, 0, i9, 1);
        module(this.numrows - 1, 1, i9, 2);
        module(this.numrows - 1, 2, i9, 3);
        module(0, this.numcols - 2, i9, 4);
        module(0, this.numcols - 1, i9, 5);
        module(1, this.numcols - 1, i9, 6);
        module(2, this.numcols - 1, i9, 7);
        module(3, this.numcols - 1, i9, 8);
    }

    private void corner2(int i9) {
        module(this.numrows - 3, 0, i9, 1);
        module(this.numrows - 2, 0, i9, 2);
        module(this.numrows - 1, 0, i9, 3);
        module(0, this.numcols - 4, i9, 4);
        module(0, this.numcols - 3, i9, 5);
        module(0, this.numcols - 2, i9, 6);
        module(0, this.numcols - 1, i9, 7);
        module(1, this.numcols - 1, i9, 8);
    }

    private void corner3(int i9) {
        module(this.numrows - 3, 0, i9, 1);
        module(this.numrows - 2, 0, i9, 2);
        module(this.numrows - 1, 0, i9, 3);
        module(0, this.numcols - 2, i9, 4);
        module(0, this.numcols - 1, i9, 5);
        module(1, this.numcols - 1, i9, 6);
        module(2, this.numcols - 1, i9, 7);
        module(3, this.numcols - 1, i9, 8);
    }

    private void corner4(int i9) {
        module(this.numrows - 1, 0, i9, 1);
        module(this.numrows - 1, this.numcols - 1, i9, 2);
        module(0, this.numcols - 3, i9, 3);
        module(0, this.numcols - 2, i9, 4);
        module(0, this.numcols - 1, i9, 5);
        module(1, this.numcols - 3, i9, 6);
        module(1, this.numcols - 2, i9, 7);
        module(1, this.numcols - 1, i9, 8);
    }

    private boolean hasBit(int i9, int i10) {
        return this.bits[(i10 * this.numcols) + i9] >= 0;
    }

    private void module(int i9, int i10, int i11, int i12) {
        if (i9 < 0) {
            int i13 = this.numrows;
            i9 += i13;
            i10 += 4 - ((i13 + 4) % 8);
        }
        if (i10 < 0) {
            int i14 = this.numcols;
            i10 += i14;
            i9 += 4 - ((i14 + 4) % 8);
        }
        setBit(i10, i9, (this.codewords.charAt(i11) & (1 << (8 - i12))) != 0);
    }

    private void setBit(int i9, int i10, boolean z10) {
        this.bits[(i10 * this.numcols) + i9] = z10 ? (byte) 1 : (byte) 0;
    }

    private void utah(int i9, int i10, int i11) {
        int i12 = i9 - 2;
        int i13 = i10 - 2;
        module(i12, i13, i11, 1);
        int i14 = i10 - 1;
        module(i12, i14, i11, 2);
        int i15 = i9 - 1;
        module(i15, i13, i11, 3);
        module(i15, i14, i11, 4);
        module(i15, i10, i11, 5);
        module(i9, i13, i11, 6);
        module(i9, i14, i11, 7);
        module(i9, i10, i11, 8);
    }

    public final boolean getBit(int i9, int i10) {
        return this.bits[(i10 * this.numcols) + i9] == 1;
    }

    final byte[] getBits() {
        return this.bits;
    }

    final int getNumcols() {
        return this.numcols;
    }

    final int getNumrows() {
        return this.numrows;
    }

    public final void place() {
        int i9;
        int i10;
        int i11 = 0;
        int i12 = 0;
        int i13 = 4;
        while (true) {
            if (i13 == this.numrows && i11 == 0) {
                corner1(i12);
                i12++;
            }
            if (i13 == this.numrows - 2 && i11 == 0 && this.numcols % 4 != 0) {
                corner2(i12);
                i12++;
            }
            if (i13 == this.numrows - 2 && i11 == 0 && this.numcols % 8 == 4) {
                corner3(i12);
                i12++;
            }
            if (i13 == this.numrows + 4 && i11 == 2 && this.numcols % 8 == 0) {
                corner4(i12);
                i12++;
            }
            do {
                if (i13 < this.numrows && i11 >= 0 && !hasBit(i11, i13)) {
                    utah(i13, i11, i12);
                    i12++;
                }
                i13 -= 2;
                i11 += 2;
                if (i13 < 0) {
                    break;
                }
            } while (i11 < this.numcols);
            int i14 = i13 + 1;
            int i15 = i11 + 3;
            do {
                if (i14 >= 0 && i15 < this.numcols && !hasBit(i15, i14)) {
                    utah(i14, i15, i12);
                    i12++;
                }
                i14 += 2;
                i15 -= 2;
                i9 = this.numrows;
                if (i14 >= i9) {
                    break;
                }
            } while (i15 >= 0);
            i13 = i14 + 3;
            i11 = i15 + 1;
            if (i13 >= i9 && i11 >= (i10 = this.numcols)) {
                break;
            }
        }
        if (hasBit(i10 - 1, i9 - 1)) {
            return;
        }
        setBit(this.numcols - 1, this.numrows - 1, true);
        setBit(this.numcols - 2, this.numrows - 2, true);
    }
}
