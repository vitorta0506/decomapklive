package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.aztec.encoder.AztecCode;
import com.google.zxing.aztec.encoder.Encoder;
import com.google.zxing.common.BitMatrix;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
/* loaded from: classes3.dex */
public final class AztecWriter implements Writer {
    private static BitMatrix renderResult(AztecCode aztecCode, int i9, int i10) {
        BitMatrix matrix = aztecCode.getMatrix();
        if (matrix != null) {
            int width = matrix.getWidth();
            int height = matrix.getHeight();
            int max = Math.max(i9, width);
            int max2 = Math.max(i10, height);
            int min = Math.min(max / width, max2 / height);
            int i11 = (max - (width * min)) / 2;
            int i12 = (max2 - (height * min)) / 2;
            BitMatrix bitMatrix = new BitMatrix(max, max2);
            int i13 = 0;
            while (i13 < height) {
                int i14 = i11;
                int i15 = 0;
                while (i15 < width) {
                    if (matrix.get(i15, i13)) {
                        bitMatrix.setRegion(i14, i12, min, min);
                    }
                    i15++;
                    i14 += min;
                }
                i13++;
                i12 += min;
            }
            return bitMatrix;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10) {
        return encode(str, barcodeFormat, i9, i10, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) {
        Charset charset;
        int i11;
        int i12;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType)) {
                charset2 = Charset.forName(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            int parseInt = map.containsKey(encodeHintType2) ? Integer.parseInt(map.get(encodeHintType2).toString()) : 33;
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                charset = charset2;
                i11 = parseInt;
                i12 = Integer.parseInt(map.get(encodeHintType3).toString());
                return encode(str, barcodeFormat, i9, i10, charset, i11, i12);
            }
            charset = charset2;
            i11 = parseInt;
        } else {
            charset = charset2;
            i11 = 33;
        }
        i12 = 0;
        return encode(str, barcodeFormat, i9, i10, charset, i11, i12);
    }

    private static BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Charset charset, int i11, int i12) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return renderResult(Encoder.encode(str.getBytes(charset), i11, i12), i9, i10);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(barcodeFormat)));
    }
}
