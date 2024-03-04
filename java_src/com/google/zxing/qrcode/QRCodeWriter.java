package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Map;
/* loaded from: classes3.dex */
public final class QRCodeWriter implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;

    private static BitMatrix renderResult(QRCode qRCode, int i9, int i10, int i11) {
        ByteMatrix matrix = qRCode.getMatrix();
        if (matrix != null) {
            int width = matrix.getWidth();
            int height = matrix.getHeight();
            int i12 = i11 << 1;
            int i13 = width + i12;
            int i14 = i12 + height;
            int max = Math.max(i9, i13);
            int max2 = Math.max(i10, i14);
            int min = Math.min(max / i13, max2 / i14);
            int i15 = (max - (width * min)) / 2;
            int i16 = (max2 - (height * min)) / 2;
            BitMatrix bitMatrix = new BitMatrix(max, max2);
            int i17 = 0;
            while (i17 < height) {
                int i18 = i15;
                int i19 = 0;
                while (i19 < width) {
                    if (matrix.get(i19, i17) == 1) {
                        bitMatrix.setRegion(i18, i16, min, min);
                    }
                    i19++;
                    i18 += min;
                }
                i17++;
                i16 += min;
            }
            return bitMatrix;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10) throws WriterException {
        return encode(str, barcodeFormat, i9, i10, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i9, int i10, Map<EncodeHintType, ?> map) throws WriterException {
        if (!str.isEmpty()) {
            if (barcodeFormat == BarcodeFormat.QR_CODE) {
                if (i9 >= 0 && i10 >= 0) {
                    ErrorCorrectionLevel errorCorrectionLevel = ErrorCorrectionLevel.L;
                    int i11 = 4;
                    if (map != null) {
                        EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
                        if (map.containsKey(encodeHintType)) {
                            errorCorrectionLevel = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
                        }
                        EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
                        if (map.containsKey(encodeHintType2)) {
                            i11 = Integer.parseInt(map.get(encodeHintType2).toString());
                        }
                    }
                    return renderResult(Encoder.encode(str, errorCorrectionLevel, map), i9, i10, i11);
                }
                throw new IllegalArgumentException("Requested dimensions are too small: " + i9 + 'x' + i10);
            }
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(barcodeFormat)));
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
