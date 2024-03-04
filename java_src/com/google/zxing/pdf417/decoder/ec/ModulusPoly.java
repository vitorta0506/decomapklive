package com.google.zxing.pdf417.decoder.ec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ModulusPoly {
    private final int[] coefficients;
    private final ModulusGF field;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = modulusGF;
            int length = iArr.length;
            if (length > 1 && iArr[0] == 0) {
                int i9 = 1;
                while (i9 < length && iArr[i9] == 0) {
                    i9++;
                }
                if (i9 == length) {
                    this.coefficients = new int[]{0};
                    return;
                }
                int[] iArr2 = new int[length - i9];
                this.coefficients = iArr2;
                System.arraycopy(iArr, i9, iArr2, 0, iArr2.length);
                return;
            }
            this.coefficients = iArr;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly add(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            if (isZero()) {
                return modulusPoly;
            }
            if (modulusPoly.isZero()) {
                return this;
            }
            int[] iArr = this.coefficients;
            int[] iArr2 = modulusPoly.coefficients;
            if (iArr.length <= iArr2.length) {
                iArr = iArr2;
                iArr2 = iArr;
            }
            int[] iArr3 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i9 = length; i9 < iArr.length; i9++) {
                iArr3[i9] = this.field.add(iArr2[i9 - length], iArr[i9]);
            }
            return new ModulusPoly(this.field, iArr3);
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int evaluateAt(int i9) {
        if (i9 == 0) {
            return getCoefficient(0);
        }
        if (i9 == 1) {
            int i10 = 0;
            for (int i11 : this.coefficients) {
                i10 = this.field.add(i10, i11);
            }
            return i10;
        }
        int[] iArr = this.coefficients;
        int i12 = iArr[0];
        int length = iArr.length;
        for (int i13 = 1; i13 < length; i13++) {
            ModulusGF modulusGF = this.field;
            i12 = modulusGF.add(modulusGF.multiply(i9, i12), this.coefficients[i13]);
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCoefficient(int i9) {
        int[] iArr = this.coefficients;
        return iArr[(iArr.length - 1) - i9];
    }

    int[] getCoefficients() {
        return this.coefficients;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDegree() {
        return this.coefficients.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isZero() {
        return this.coefficients[0] == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly multiply(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            if (!isZero() && !modulusPoly.isZero()) {
                int[] iArr = this.coefficients;
                int length = iArr.length;
                int[] iArr2 = modulusPoly.coefficients;
                int length2 = iArr2.length;
                int[] iArr3 = new int[(length + length2) - 1];
                for (int i9 = 0; i9 < length; i9++) {
                    int i10 = iArr[i9];
                    for (int i11 = 0; i11 < length2; i11++) {
                        int i12 = i9 + i11;
                        ModulusGF modulusGF = this.field;
                        iArr3[i12] = modulusGF.add(iArr3[i12], modulusGF.multiply(i10, iArr2[i11]));
                    }
                }
                return new ModulusPoly(this.field, iArr3);
            }
            return this.field.getZero();
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly multiplyByMonomial(int i9, int i10) {
        if (i9 >= 0) {
            if (i10 == 0) {
                return this.field.getZero();
            }
            int length = this.coefficients.length;
            int[] iArr = new int[i9 + length];
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11] = this.field.multiply(this.coefficients[i11], i10);
            }
            return new ModulusPoly(this.field, iArr);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly negative() {
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            iArr[i9] = this.field.subtract(0, this.coefficients[i9]);
        }
        return new ModulusPoly(this.field, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly subtract(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            return modulusPoly.isZero() ? this : add(modulusPoly.negative());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb2.append(" - ");
                    coefficient = -coefficient;
                } else if (sb2.length() > 0) {
                    sb2.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    sb2.append(coefficient);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb2.append('x');
                    } else {
                        sb2.append("x^");
                        sb2.append(degree);
                    }
                }
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModulusPoly multiply(int i9) {
        if (i9 == 0) {
            return this.field.getZero();
        }
        if (i9 == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = this.field.multiply(this.coefficients[i10], i9);
        }
        return new ModulusPoly(this.field, iArr);
    }
}
