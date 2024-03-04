package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class OneDimensionalCodeWriter implements Writer {
    /* JADX INFO: Access modifiers changed from: protected */
    public static int appendPattern(boolean[] zArr, int i9, int[] iArr, boolean z10) {
        int i10 = 0;
        for (int i11 : iArr) {
            int i12 = 0;
            while (i12 < i11) {
                zArr[i9] = z10;
                i12++;
                i9++;
            }
            i10 += i11;
            z10 = !z10;
        }
        return i10;
    }

    private static BitMatrix renderResult(boolean[] zArr, int i9, int i10, int i11) {
        int length = zArr.length;
        int i12 = i11 + length;
        int max = Math.max(i9, i12);
        int max2 = Math.max(1, i10);
        int i13 = max / i12;
        int i14 = (max - (length * i13)) / 2;
        BitMatrix bitMatrix = new BitMatrix(max, max2);
        int i15 = 0;
        while (i15 < length) {
            if (zArr[i15]) {
                bitMatrix.setRegion(i14, 0, i13, max2);
            }
            i15++;
            i14 += i13;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10) throws WriterException {
        return encode(str, barcodeFormat, i9, i10, null);
    }

    public abstract boolean[] encode(String str);

    public int getDefaultMargin() {
        return 10;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i9 >= 0 && i10 >= 0) {
            int defaultMargin = getDefaultMargin();
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.MARGIN;
                if (map.containsKey(encodeHintType)) {
                    defaultMargin = Integer.parseInt(map.get(encodeHintType).toString());
                }
            }
            return renderResult(encode(str), i9, i10, defaultMargin);
        }
        throw new IllegalArgumentException("Negative size is not allowed. Input: " + i9 + 'x' + i10);
    }
}
