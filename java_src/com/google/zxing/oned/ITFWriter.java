package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes3.dex */
public final class ITFWriter extends OneDimensionalCodeWriter {
    private static final int N = 1;
    private static final int W = 3;
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN = {3, 1, 1};
    private static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.ITF) {
            return super.encode(str, barcodeFormat, i9, i10, map);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length % 2 == 0) {
            if (length <= 80) {
                boolean[] zArr = new boolean[(length * 9) + 9];
                int appendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, START_PATTERN, true);
                for (int i9 = 0; i9 < length; i9 += 2) {
                    int digit = Character.digit(str.charAt(i9), 10);
                    int digit2 = Character.digit(str.charAt(i9 + 1), 10);
                    int[] iArr = new int[10];
                    for (int i10 = 0; i10 < 5; i10++) {
                        int i11 = i10 * 2;
                        int[][] iArr2 = PATTERNS;
                        iArr[i11] = iArr2[digit][i10];
                        iArr[i11 + 1] = iArr2[digit2][i10];
                    }
                    appendPattern += OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, iArr, true);
                }
                OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, END_PATTERN, true);
                return zArr;
            }
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        throw new IllegalArgumentException("The length of the input should be even");
    }
}
