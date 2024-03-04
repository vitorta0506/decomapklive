package com.google.zxing.datamatrix;

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
import com.google.zxing.common.DetectorResult;
import com.google.zxing.datamatrix.decoder.Decoder;
import com.google.zxing.datamatrix.detector.Detector;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DataMatrixReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit != null && bottomRightOnBit != null) {
            int moduleSize = moduleSize(topLeftOnBit, bitMatrix);
            int i9 = topLeftOnBit[1];
            int i10 = bottomRightOnBit[1];
            int i11 = topLeftOnBit[0];
            int i12 = ((bottomRightOnBit[0] - i11) + 1) / moduleSize;
            int i13 = ((i10 - i9) + 1) / moduleSize;
            if (i12 > 0 && i13 > 0) {
                int i14 = moduleSize / 2;
                int i15 = i9 + i14;
                int i16 = i11 + i14;
                BitMatrix bitMatrix2 = new BitMatrix(i12, i13);
                for (int i17 = 0; i17 < i13; i17++) {
                    int i18 = (i17 * moduleSize) + i15;
                    for (int i19 = 0; i19 < i12; i19++) {
                        if (bitMatrix.get((i19 * moduleSize) + i16, i18)) {
                            bitMatrix2.set(i19, i17);
                        }
                    }
                }
                return bitMatrix2;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int width = bitMatrix.getWidth();
        int i9 = iArr[0];
        int i10 = iArr[1];
        while (i9 < width && bitMatrix.get(i9, i10)) {
            i9++;
        }
        if (i9 != width) {
            int i11 = i9 - iArr[0];
            if (i11 != 0) {
                return i11;
            }
            throw NotFoundException.getNotFoundInstance();
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
        ResultPoint[] points;
        DecoderResult decoderResult;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            decoderResult = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()));
            points = NO_POINTS;
        } else {
            DetectorResult detect = new Detector(binaryBitmap.getBlackMatrix()).detect();
            DecoderResult decode = this.decoder.decode(detect.getBits());
            points = detect.getPoints();
            decoderResult = decode;
        }
        Result result = new Result(decoderResult.getText(), decoderResult.getRawBytes(), points, BarcodeFormat.DATA_MATRIX);
        List<byte[]> byteSegments = decoderResult.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResult.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        return result;
    }
}
