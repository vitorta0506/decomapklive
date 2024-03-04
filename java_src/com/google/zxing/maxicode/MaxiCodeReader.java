package com.google.zxing.maxicode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.maxicode.decoder.Decoder;
import java.util.Map;
/* loaded from: classes3.dex */
public final class MaxiCodeReader implements Reader {
    private static final int MATRIX_HEIGHT = 33;
    private static final int MATRIX_WIDTH = 30;
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] enclosingRectangle = bitMatrix.getEnclosingRectangle();
        if (enclosingRectangle != null) {
            int i9 = enclosingRectangle[0];
            int i10 = enclosingRectangle[1];
            int i11 = enclosingRectangle[2];
            int i12 = enclosingRectangle[3];
            BitMatrix bitMatrix2 = new BitMatrix(30, 33);
            for (int i13 = 0; i13 < 33; i13++) {
                int i14 = (((i13 * i12) + (i12 / 2)) / 33) + i10;
                for (int i15 = 0; i15 < 30; i15++) {
                    if (bitMatrix.get(((((i15 * i11) + (i11 / 2)) + (((i13 & 1) * i11) / 2)) / 30) + i9, i14)) {
                        bitMatrix2.set(i15, i13);
                    }
                }
            }
            return bitMatrix2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            DecoderResult decode = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            Result result = new Result(decode.getText(), decode.getRawBytes(), NO_POINTS, BarcodeFormat.MAXICODE);
            String eCLevel = decode.getECLevel();
            if (eCLevel != null) {
                result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
            }
            return result;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
