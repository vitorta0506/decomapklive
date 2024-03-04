package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class OneDReader implements Reader {
    /* JADX WARN: Removed duplicated region for block: B:41:0x007d A[Catch: ReaderException -> 0x00c6, TryCatch #0 {ReaderException -> 0x00c6, blocks: (B:39:0x0077, B:41:0x007d, B:43:0x008e), top: B:62:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.zxing.Result doDecode(com.google.zxing.BinaryBitmap r22, java.util.Map<com.google.zxing.DecodeHintType, ?> r23) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.OneDReader.doDecode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static float patternMatchVariance(int[] iArr, int[] iArr2, float f10) {
        int length = iArr.length;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i9 += iArr[i11];
            i10 += iArr2[i11];
        }
        if (i9 < i10) {
            return Float.POSITIVE_INFINITY;
        }
        float f11 = i9;
        float f12 = f11 / i10;
        float f13 = f10 * f12;
        float f14 = 0.0f;
        for (int i12 = 0; i12 < length; i12++) {
            float f15 = iArr2[i12] * f12;
            float f16 = iArr[i12];
            float f17 = f16 > f15 ? f16 - f15 : f15 - f16;
            if (f17 > f13) {
                return Float.POSITIVE_INFINITY;
            }
            f14 += f17;
        }
        return f14 / f11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void recordPattern(BitArray bitArray, int i9, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i10 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i9 < size) {
            boolean z10 = !bitArray.get(i9);
            while (i9 < size) {
                if (bitArray.get(i9) == z10) {
                    i10++;
                    if (i10 == length) {
                        break;
                    }
                    iArr[i10] = 1;
                    z10 = !z10;
                } else {
                    iArr[i10] = iArr[i10] + 1;
                }
                i9++;
            }
            if (i10 != length) {
                if (i10 != length - 1 || i9 != size) {
                    throw NotFoundException.getNotFoundInstance();
                }
                return;
            }
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void recordPatternInReverse(BitArray bitArray, int i9, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean z10 = bitArray.get(i9);
        while (i9 > 0 && length >= 0) {
            i9--;
            if (bitArray.get(i9) != z10) {
                length--;
                z10 = !z10;
            }
        }
        if (length < 0) {
            recordPattern(bitArray, i9 + 1, iArr);
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    public abstract Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e10) {
            if ((map != null && map.containsKey(DecodeHintType.TRY_HARDER)) && binaryBitmap.isRotateSupported()) {
                BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
                Result doDecode = doDecode(rotateCounterClockwise, map);
                Map<ResultMetadataType, Object> resultMetadata = doDecode.getResultMetadata();
                int i9 = 270;
                if (resultMetadata != null) {
                    ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                    if (resultMetadata.containsKey(resultMetadataType)) {
                        i9 = (((Integer) resultMetadata.get(resultMetadataType)).intValue() + 270) % 360;
                    }
                }
                doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i9));
                ResultPoint[] resultPoints = doDecode.getResultPoints();
                if (resultPoints != null) {
                    int height = rotateCounterClockwise.getHeight();
                    for (int i10 = 0; i10 < resultPoints.length; i10++) {
                        resultPoints[i10] = new ResultPoint((height - resultPoints[i10].getY()) - 1.0f, resultPoints[i10].getX());
                    }
                }
                return doDecode;
            }
            throw e10;
        }
    }
}
