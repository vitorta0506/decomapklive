package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes3.dex */
public class Code93Writer extends OneDimensionalCodeWriter {
    @Deprecated
    protected static int appendPattern(boolean[] zArr, int i9, int[] iArr, boolean z10) {
        return appendPattern(zArr, i9, iArr);
    }

    private static int computeChecksumIndex(String str, int i9) {
        int i10 = 0;
        int i11 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i10 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i11;
            i11++;
            if (i11 > i9) {
                i11 = 1;
            }
        }
        return i10 % 47;
    }

    private static void toIntArray(int i9, int[] iArr) {
        for (int i10 = 0; i10 < 9; i10++) {
            int i11 = 1;
            if (((1 << (8 - i10)) & i9) == 0) {
                i11 = 0;
            }
            iArr[i10] = i11;
        }
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_93) {
            return super.encode(str, barcodeFormat, i9, i10, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(barcodeFormat)));
    }

    private static int appendPattern(boolean[] zArr, int i9, int[] iArr) {
        int length = iArr.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i9 + 1;
            zArr[i9] = iArr[i10] != 0;
            i10++;
            i9 = i11;
        }
        return 9;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            toIntArray(Code93Reader.CHARACTER_ENCODINGS[47], iArr);
            boolean[] zArr = new boolean[((str.length() + 2 + 2) * 9) + 1];
            int appendPattern = appendPattern(zArr, 0, iArr);
            for (int i9 = 0; i9 < length; i9++) {
                toIntArray(Code93Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i9))], iArr);
                appendPattern += appendPattern(zArr, appendPattern, iArr);
            }
            int computeChecksumIndex = computeChecksumIndex(str, 20);
            int[] iArr2 = Code93Reader.CHARACTER_ENCODINGS;
            toIntArray(iArr2[computeChecksumIndex], iArr);
            int appendPattern2 = appendPattern + appendPattern(zArr, appendPattern, iArr);
            toIntArray(iArr2[computeChecksumIndex(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(computeChecksumIndex), 15)], iArr);
            int appendPattern3 = appendPattern2 + appendPattern(zArr, appendPattern2, iArr);
            toIntArray(iArr2[47], iArr);
            zArr[appendPattern3 + appendPattern(zArr, appendPattern3, iArr)] = true;
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
