package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
/* loaded from: classes3.dex */
public final class EAN13Reader extends UPCEANReader {
    static final int[] FIRST_DIGIT_ENCODINGS = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};
    private final int[] decodeMiddleCounters = new int[4];

    private static void determineFirstDigit(StringBuilder sb2, int i9) throws NotFoundException {
        for (int i10 = 0; i10 < 10; i10++) {
            if (i9 == FIRST_DIGIT_ENCODINGS[i10]) {
                sb2.insert(0, (char) (i10 + 48));
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.UPCEANReader
    protected int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i9 = iArr[1];
        int i10 = 0;
        for (int i11 = 0; i11 < 6 && i9 < size; i11++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i9, UPCEANReader.L_AND_G_PATTERNS);
            sb2.append((char) ((decodeDigit % 10) + 48));
            for (int i12 : iArr2) {
                i9 += i12;
            }
            if (decodeDigit >= 10) {
                i10 |= 1 << (5 - i11);
            }
        }
        determineFirstDigit(sb2, i10);
        int i13 = UPCEANReader.findGuardPattern(bitArray, i9, true, UPCEANReader.MIDDLE_PATTERN)[1];
        for (int i14 = 0; i14 < 6 && i13 < size; i14++) {
            sb2.append((char) (UPCEANReader.decodeDigit(bitArray, iArr2, i13, UPCEANReader.L_PATTERNS) + 48));
            for (int i15 : iArr2) {
                i13 += i15;
            }
        }
        return i13;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.EAN_13;
    }
}
