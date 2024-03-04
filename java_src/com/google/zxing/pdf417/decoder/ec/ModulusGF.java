package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.pdf417.PDF417Common;
/* loaded from: classes3.dex */
public final class ModulusGF {
    public static final ModulusGF PDF417_GF = new ModulusGF(PDF417Common.NUMBER_OF_CODEWORDS, 3);
    private final int[] expTable;
    private final int[] logTable;
    private final int modulus;
    private final ModulusPoly one;
    private final ModulusPoly zero;

    private ModulusGF(int i9, int i10) {
        this.modulus = i9;
        this.expTable = new int[i9];
        this.logTable = new int[i9];
        int i11 = 1;
        for (int i12 = 0; i12 < i9; i12++) {
            this.expTable[i12] = i11;
            i11 = (i11 * i10) % i9;
        }
        for (int i13 = 0; i13 < i9 - 1; i13++) {
            this.logTable[this.expTable[i13]] = i13;
        }
        this.zero = new ModulusPoly(this, new int[]{0});
        this.one = new ModulusPoly(this, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int add(int i9, int i10) {
        return (i9 + i10) % this.modulus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly buildMonomial(int i9, int i10) {
        if (i9 >= 0) {
            if (i10 == 0) {
                return this.zero;
            }
            int[] iArr = new int[i9 + 1];
            iArr[0] = i10;
            return new ModulusPoly(this, iArr);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int exp(int i9) {
        return this.expTable[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly getOne() {
        return this.one;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSize() {
        return this.modulus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly getZero() {
        return this.zero;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int inverse(int i9) {
        if (i9 != 0) {
            return this.expTable[(this.modulus - this.logTable[i9]) - 1];
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int log(int i9) {
        if (i9 != 0) {
            return this.logTable[i9];
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int multiply(int i9, int i10) {
        if (i9 == 0 || i10 == 0) {
            return 0;
        }
        int[] iArr = this.expTable;
        int[] iArr2 = this.logTable;
        return iArr[(iArr2[i9] + iArr2[i10]) % (this.modulus - 1)];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int subtract(int i9, int i10) {
        int i11 = this.modulus;
        return ((i9 + i11) - i10) % i11;
    }
}
