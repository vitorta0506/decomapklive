package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public final class ReedSolomonEncoder {
    private final List<GenericGFPoly> cachedGenerators;
    private final GenericGF field;

    public ReedSolomonEncoder(GenericGF genericGF) {
        this.field = genericGF;
        ArrayList arrayList = new ArrayList();
        this.cachedGenerators = arrayList;
        arrayList.add(new GenericGFPoly(genericGF, new int[]{1}));
    }

    private GenericGFPoly buildGenerator(int i9) {
        if (i9 >= this.cachedGenerators.size()) {
            List<GenericGFPoly> list = this.cachedGenerators;
            GenericGFPoly genericGFPoly = list.get(list.size() - 1);
            for (int size = this.cachedGenerators.size(); size <= i9; size++) {
                GenericGF genericGF = this.field;
                genericGFPoly = genericGFPoly.multiply(new GenericGFPoly(genericGF, new int[]{1, genericGF.exp((size - 1) + genericGF.getGeneratorBase())}));
                this.cachedGenerators.add(genericGFPoly);
            }
        }
        return this.cachedGenerators.get(i9);
    }

    public void encode(int[] iArr, int i9) {
        if (i9 != 0) {
            int length = iArr.length - i9;
            if (length > 0) {
                GenericGFPoly buildGenerator = buildGenerator(i9);
                int[] iArr2 = new int[length];
                System.arraycopy(iArr, 0, iArr2, 0, length);
                int[] coefficients = new GenericGFPoly(this.field, iArr2).multiplyByMonomial(i9, 1).divide(buildGenerator)[1].getCoefficients();
                int length2 = i9 - coefficients.length;
                for (int i10 = 0; i10 < length2; i10++) {
                    iArr[length + i10] = 0;
                }
                System.arraycopy(coefficients, 0, iArr, length + length2, coefficients.length);
                return;
            }
            throw new IllegalArgumentException("No data bytes provided");
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
