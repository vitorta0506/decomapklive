package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class UPCEANReader extends OneDReader {
    static final int[][] L_AND_G_PATTERNS;
    static final int[][] L_PATTERNS;
    private static final float MAX_AVG_VARIANCE = 0.48f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7f;
    static final int[] START_END_PATTERN = {1, 1, 1};
    static final int[] MIDDLE_PATTERN = {1, 1, 1, 1, 1};
    static final int[] END_PATTERN = {1, 1, 1, 1, 1, 1};
    private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
    private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();
    private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        L_PATTERNS = iArr;
        int[][] iArr2 = new int[20];
        L_AND_G_PATTERNS = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i9 = 10; i9 < 20; i9++) {
            int[] iArr3 = L_PATTERNS[i9 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i10 = 0; i10 < iArr3.length; i10++) {
                iArr4[i10] = iArr3[(iArr3.length - i10) - 1];
            }
            L_AND_G_PATTERNS[i9] = iArr4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean checkStandardUPCEANChecksum(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i9 = length - 1;
        return getStandardUPCEANChecksum(charSequence.subSequence(0, i9)) == Character.digit(charSequence.charAt(i9), 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeDigit(BitArray bitArray, int[] iArr, int i9, int[][] iArr2) throws NotFoundException {
        OneDReader.recordPattern(bitArray, i9, iArr);
        int length = iArr2.length;
        float f10 = MAX_AVG_VARIANCE;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            float patternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i11], MAX_INDIVIDUAL_VARIANCE);
            if (patternMatchVariance < f10) {
                i10 = i11;
                f10 = patternMatchVariance;
            }
        }
        if (i10 >= 0) {
            return i10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] findGuardPattern(BitArray bitArray, int i9, boolean z10, int[] iArr) throws NotFoundException {
        return findGuardPattern(bitArray, i9, z10, iArr, new int[iArr.length]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] findStartGuardPattern(BitArray bitArray) throws NotFoundException {
        int[] iArr = new int[START_END_PATTERN.length];
        int[] iArr2 = null;
        boolean z10 = false;
        int i9 = 0;
        while (!z10) {
            int[] iArr3 = START_END_PATTERN;
            Arrays.fill(iArr, 0, iArr3.length, 0);
            iArr2 = findGuardPattern(bitArray, i9, false, iArr3, iArr);
            int i10 = iArr2[0];
            int i11 = iArr2[1];
            int i12 = i10 - (i11 - i10);
            if (i12 >= 0) {
                z10 = bitArray.isRange(i12, i10, false);
            }
            i9 = i11;
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getStandardUPCEANChecksum(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        int i9 = 0;
        for (int i10 = length - 1; i10 >= 0; i10 -= 2) {
            int charAt = charSequence.charAt(i10) - '0';
            if (charAt < 0 || charAt > 9) {
                throw FormatException.getFormatInstance();
            }
            i9 += charAt;
        }
        int i11 = i9 * 3;
        for (int i12 = length - 2; i12 >= 0; i12 -= 2) {
            int charAt2 = charSequence.charAt(i12) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw FormatException.getFormatInstance();
            }
            i11 += charAt2;
        }
        return (1000 - i11) % 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean checkChecksum(String str) throws FormatException {
        return checkStandardUPCEANChecksum(str);
    }

    int[] decodeEnd(BitArray bitArray, int i9) throws NotFoundException {
        return findGuardPattern(bitArray, i9, false, START_END_PATTERN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb2) throws NotFoundException;

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i9, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return decodeRow(i9, bitArray, findStartGuardPattern(bitArray), map);
    }

    abstract BarcodeFormat getBarcodeFormat();

    private static int[] findGuardPattern(BitArray bitArray, int i9, boolean z10, int[] iArr, int[] iArr2) throws NotFoundException {
        int size = bitArray.getSize();
        int nextUnset = z10 ? bitArray.getNextUnset(i9) : bitArray.getNextSet(i9);
        int length = iArr.length;
        boolean z11 = z10;
        int i10 = 0;
        int i11 = nextUnset;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) != z11) {
                iArr2[i10] = iArr2[i10] + 1;
            } else {
                if (i10 != length - 1) {
                    i10++;
                } else if (OneDReader.patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                    return new int[]{i11, nextUnset};
                } else {
                    i11 += iArr2[0] + iArr2[1];
                    int i12 = i10 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i12);
                    iArr2[i12] = 0;
                    iArr2[i10] = 0;
                    i10--;
                }
                iArr2[i10] = 1;
                z11 = !z11;
            }
            nextUnset++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public Result decodeRow(int i9, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int i10;
        String lookupCountryIdentifier;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        boolean z10 = true;
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i9));
        }
        StringBuilder sb2 = this.decodeRowStringBuffer;
        sb2.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb2);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint(decodeMiddle, i9));
        }
        int[] decodeEnd = decodeEnd(bitArray, decodeMiddle);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((decodeEnd[0] + decodeEnd[1]) / 2.0f, i9));
        }
        int i11 = decodeEnd[1];
        int i12 = (i11 - decodeEnd[0]) + i11;
        if (i12 < bitArray.getSize() && bitArray.isRange(i11, i12, false)) {
            String sb3 = sb2.toString();
            if (sb3.length() >= 8) {
                if (checkChecksum(sb3)) {
                    BarcodeFormat barcodeFormat = getBarcodeFormat();
                    float f10 = i9;
                    Result result = new Result(sb3, null, new ResultPoint[]{new ResultPoint((iArr[1] + iArr[0]) / 2.0f, f10), new ResultPoint((decodeEnd[1] + decodeEnd[0]) / 2.0f, f10)}, barcodeFormat);
                    try {
                        Result decodeRow = this.extensionReader.decodeRow(i9, bitArray, decodeEnd[1]);
                        result.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, decodeRow.getText());
                        result.putAllMetadata(decodeRow.getResultMetadata());
                        result.addResultPoints(decodeRow.getResultPoints());
                        i10 = decodeRow.getText().length();
                    } catch (ReaderException unused) {
                        i10 = 0;
                    }
                    int[] iArr2 = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_EAN_EXTENSIONS) : null;
                    if (iArr2 != null) {
                        int length = iArr2.length;
                        int i13 = 0;
                        while (true) {
                            if (i13 >= length) {
                                z10 = false;
                                break;
                            } else if (i10 == iArr2[i13]) {
                                break;
                            } else {
                                i13++;
                            }
                        }
                        if (!z10) {
                            throw NotFoundException.getNotFoundInstance();
                        }
                    }
                    if ((barcodeFormat == BarcodeFormat.EAN_13 || barcodeFormat == BarcodeFormat.UPC_A) && (lookupCountryIdentifier = this.eanManSupport.lookupCountryIdentifier(sb3)) != null) {
                        result.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, lookupCountryIdentifier);
                    }
                    return result;
                }
                throw ChecksumException.getChecksumInstance();
            }
            throw FormatException.getFormatInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
