package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.ChecksumException;
/* loaded from: classes3.dex */
public final class ErrorCorrection {
    private final ModulusGF field = ModulusGF.PDF417_GF;

    private int[] findErrorLocations(ModulusPoly modulusPoly) throws ChecksumException {
        int degree = modulusPoly.getDegree();
        int[] iArr = new int[degree];
        int i9 = 0;
        for (int i10 = 1; i10 < this.field.getSize() && i9 < degree; i10++) {
            if (modulusPoly.evaluateAt(i10) == 0) {
                iArr[i9] = this.field.inverse(i10);
                i9++;
            }
        }
        if (i9 == degree) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] findErrorMagnitudes(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int[] iArr) {
        int degree = modulusPoly2.getDegree();
        int[] iArr2 = new int[degree];
        for (int i9 = 1; i9 <= degree; i9++) {
            iArr2[degree - i9] = this.field.multiply(i9, modulusPoly2.getCoefficient(i9));
        }
        ModulusPoly modulusPoly3 = new ModulusPoly(this.field, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            int inverse = this.field.inverse(iArr[i10]);
            iArr3[i10] = this.field.multiply(this.field.subtract(0, modulusPoly.evaluateAt(inverse)), this.field.inverse(modulusPoly3.evaluateAt(inverse)));
        }
        return iArr3;
    }

    private ModulusPoly[] runEuclideanAlgorithm(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int i9) throws ChecksumException {
        if (modulusPoly.getDegree() < modulusPoly2.getDegree()) {
            modulusPoly2 = modulusPoly;
            modulusPoly = modulusPoly2;
        }
        ModulusPoly zero = this.field.getZero();
        ModulusPoly one = this.field.getOne();
        while (true) {
            ModulusPoly modulusPoly3 = modulusPoly2;
            modulusPoly2 = modulusPoly;
            modulusPoly = modulusPoly3;
            ModulusPoly modulusPoly4 = one;
            ModulusPoly modulusPoly5 = zero;
            zero = modulusPoly4;
            if (modulusPoly.getDegree() >= i9 / 2) {
                if (!modulusPoly.isZero()) {
                    ModulusPoly zero2 = this.field.getZero();
                    int inverse = this.field.inverse(modulusPoly.getCoefficient(modulusPoly.getDegree()));
                    while (modulusPoly2.getDegree() >= modulusPoly.getDegree() && !modulusPoly2.isZero()) {
                        int degree = modulusPoly2.getDegree() - modulusPoly.getDegree();
                        int multiply = this.field.multiply(modulusPoly2.getCoefficient(modulusPoly2.getDegree()), inverse);
                        zero2 = zero2.add(this.field.buildMonomial(degree, multiply));
                        modulusPoly2 = modulusPoly2.subtract(modulusPoly.multiplyByMonomial(degree, multiply));
                    }
                    one = zero2.multiply(zero).subtract(modulusPoly5).negative();
                } else {
                    throw ChecksumException.getChecksumInstance();
                }
            } else {
                int coefficient = zero.getCoefficient(0);
                if (coefficient != 0) {
                    int inverse2 = this.field.inverse(coefficient);
                    return new ModulusPoly[]{zero.multiply(inverse2), modulusPoly.multiply(inverse2)};
                }
                throw ChecksumException.getChecksumInstance();
            }
        }
    }

    public int decode(int[] iArr, int i9, int[] iArr2) throws ChecksumException {
        ModulusPoly modulusPoly = new ModulusPoly(this.field, iArr);
        int[] iArr3 = new int[i9];
        boolean z10 = false;
        for (int i10 = i9; i10 > 0; i10--) {
            int evaluateAt = modulusPoly.evaluateAt(this.field.exp(i10));
            iArr3[i9 - i10] = evaluateAt;
            if (evaluateAt != 0) {
                z10 = true;
            }
        }
        if (z10) {
            ModulusPoly one = this.field.getOne();
            if (iArr2 != null) {
                for (int i11 : iArr2) {
                    int exp = this.field.exp((iArr.length - 1) - i11);
                    ModulusGF modulusGF = this.field;
                    one = one.multiply(new ModulusPoly(modulusGF, new int[]{modulusGF.subtract(0, exp), 1}));
                }
            }
            ModulusPoly[] runEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i9, 1), new ModulusPoly(this.field, iArr3), i9);
            ModulusPoly modulusPoly2 = runEuclideanAlgorithm[0];
            ModulusPoly modulusPoly3 = runEuclideanAlgorithm[1];
            int[] findErrorLocations = findErrorLocations(modulusPoly2);
            int[] findErrorMagnitudes = findErrorMagnitudes(modulusPoly3, modulusPoly2, findErrorLocations);
            for (int i12 = 0; i12 < findErrorLocations.length; i12++) {
                int length = (iArr.length - 1) - this.field.log(findErrorLocations[i12]);
                if (length >= 0) {
                    iArr[length] = this.field.subtract(iArr[length], findErrorMagnitudes[i12]);
                } else {
                    throw ChecksumException.getChecksumInstance();
                }
            }
            return findErrorLocations.length;
        }
        return 0;
    }
}
