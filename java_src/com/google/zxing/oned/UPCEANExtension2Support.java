package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.EnumMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class UPCEANExtension2Support {
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();

    private int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i9 = iArr[1];
        int i10 = 0;
        for (int i11 = 0; i11 < 2 && i9 < size; i11++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i9, UPCEANReader.L_AND_G_PATTERNS);
            sb2.append((char) ((decodeDigit % 10) + 48));
            for (int i12 : iArr2) {
                i9 += i12;
            }
            if (decodeDigit >= 10) {
                i10 |= 1 << (1 - i11);
            }
            if (i11 != 1) {
                i9 = bitArray.getNextUnset(bitArray.getNextSet(i9));
            }
        }
        if (sb2.length() == 2) {
            if (Integer.parseInt(sb2.toString()) % 4 == i10) {
                return i9;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put((EnumMap) ResultMetadataType.ISSUE_NUMBER, (ResultMetadataType) Integer.valueOf(str));
        return enumMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Result decodeRow(int i9, BitArray bitArray, int[] iArr) throws NotFoundException {
        StringBuilder sb2 = this.decodeRowStringBuffer;
        sb2.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb2);
        String sb3 = sb2.toString();
        Map<ResultMetadataType, Object> parseExtensionString = parseExtensionString(sb3);
        float f10 = i9;
        Result result = new Result(sb3, null, new ResultPoint[]{new ResultPoint((iArr[0] + iArr[1]) / 2.0f, f10), new ResultPoint(decodeMiddle, f10)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (parseExtensionString != null) {
            result.putAllMetadata(parseExtensionString);
        }
        return result;
    }
}
