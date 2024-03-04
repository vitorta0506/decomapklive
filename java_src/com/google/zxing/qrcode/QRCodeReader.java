package com.google.zxing.qrcode;

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
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class QRCodeReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit != null && bottomRightOnBit != null) {
            float moduleSize = moduleSize(topLeftOnBit, bitMatrix);
            int i9 = topLeftOnBit[1];
            int i10 = bottomRightOnBit[1];
            int i11 = topLeftOnBit[0];
            int i12 = bottomRightOnBit[0];
            if (i11 < i12 && i9 < i10) {
                int i13 = i10 - i9;
                if (i13 != i12 - i11 && (i12 = i11 + i13) >= bitMatrix.getWidth()) {
                    throw NotFoundException.getNotFoundInstance();
                }
                int round = Math.round(((i12 - i11) + 1) / moduleSize);
                int round2 = Math.round((i13 + 1) / moduleSize);
                if (round <= 0 || round2 <= 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (round2 == round) {
                    int i14 = (int) (moduleSize / 2.0f);
                    int i15 = i9 + i14;
                    int i16 = i11 + i14;
                    int i17 = (((int) ((round - 1) * moduleSize)) + i16) - i12;
                    if (i17 > 0) {
                        if (i17 > i14) {
                            throw NotFoundException.getNotFoundInstance();
                        }
                        i16 -= i17;
                    }
                    int i18 = (((int) ((round2 - 1) * moduleSize)) + i15) - i10;
                    if (i18 > 0) {
                        if (i18 > i14) {
                            throw NotFoundException.getNotFoundInstance();
                        }
                        i15 -= i18;
                    }
                    BitMatrix bitMatrix2 = new BitMatrix(round, round2);
                    for (int i19 = 0; i19 < round2; i19++) {
                        int i20 = ((int) (i19 * moduleSize)) + i15;
                        for (int i21 = 0; i21 < round; i21++) {
                            if (bitMatrix.get(((int) (i21 * moduleSize)) + i16, i20)) {
                                bitMatrix2.set(i21, i19);
                            }
                        }
                    }
                    return bitMatrix2;
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static float moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        int i9 = iArr[0];
        boolean z10 = true;
        int i10 = iArr[1];
        int i11 = 0;
        while (i9 < width && i10 < height) {
            if (z10 != bitMatrix.get(i9, i10)) {
                i11++;
                if (i11 == 5) {
                    break;
                }
                z10 = !z10;
            }
            i9++;
            i10++;
        }
        if (i9 != width && i10 != height) {
            return (i9 - iArr[0]) / 7.0f;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Decoder getDecoder() {
        return this.decoder;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public final Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResult;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            decoderResult = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            points = NO_POINTS;
        } else {
            DetectorResult detect = new Detector(binaryBitmap.getBlackMatrix()).detect(map);
            DecoderResult decode = this.decoder.decode(detect.getBits(), map);
            points = detect.getPoints();
            decoderResult = decode;
        }
        if (decoderResult.getOther() instanceof QRCodeDecoderMetaData) {
            ((QRCodeDecoderMetaData) decoderResult.getOther()).applyMirroredCorrection(points);
        }
        Result result = new Result(decoderResult.getText(), decoderResult.getRawBytes(), points, BarcodeFormat.QR_CODE);
        List<byte[]> byteSegments = decoderResult.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResult.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        if (decoderResult.hasStructuredAppend()) {
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decoderResult.getStructuredAppendSequenceNumber()));
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decoderResult.getStructuredAppendParity()));
        }
        return result;
    }
}
