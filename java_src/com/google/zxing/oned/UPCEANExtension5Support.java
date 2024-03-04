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
public final class UPCEANExtension5Support {
    private static final int[] CHECK_DIGIT_ENCODINGS = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};
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
        for (int i11 = 0; i11 < 5 && i9 < size; i11++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i9, UPCEANReader.L_AND_G_PATTERNS);
            sb2.append((char) ((decodeDigit % 10) + 48));
            for (int i12 : iArr2) {
                i9 += i12;
            }
            if (decodeDigit >= 10) {
                i10 |= 1 << (4 - i11);
            }
            if (i11 != 4) {
                i9 = bitArray.getNextUnset(bitArray.getNextSet(i9));
            }
        }
        if (sb2.length() == 5) {
            if (extensionChecksum(sb2.toString()) == determineCheckDigit(i10)) {
                return i9;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int determineCheckDigit(int i9) throws NotFoundException {
        for (int i10 = 0; i10 < 10; i10++) {
            if (i9 == CHECK_DIGIT_ENCODINGS[i10]) {
                return i10;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int extensionChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        int i9 = 0;
        for (int i10 = length - 2; i10 >= 0; i10 -= 2) {
            i9 += charSequence.charAt(i10) - '0';
        }
        int i11 = i9 * 3;
        for (int i12 = length - 1; i12 >= 0; i12 -= 2) {
            i11 += charSequence.charAt(i12) - '0';
        }
        return (i11 * 3) % 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
        if (r5.equals("90000") == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String parseExtension5String(java.lang.String r5) {
        /*
            r0 = 0
            char r1 = r5.charAt(r0)
            r2 = 48
            java.lang.String r3 = ""
            r4 = 1
            if (r1 == r2) goto L4d
            r2 = 53
            if (r1 == r2) goto L4a
            r2 = 57
            if (r1 == r2) goto L15
            goto L4f
        L15:
            r1 = -1
            int r2 = r5.hashCode()
            switch(r2) {
                case 54118329: goto L35;
                case 54395376: goto L2a;
                case 54395377: goto L1f;
                default: goto L1d;
            }
        L1d:
            r0 = -1
            goto L3e
        L1f:
            java.lang.String r0 = "99991"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L28
            goto L1d
        L28:
            r0 = 2
            goto L3e
        L2a:
            java.lang.String r0 = "99990"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L33
            goto L1d
        L33:
            r0 = 1
            goto L3e
        L35:
            java.lang.String r2 = "90000"
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L3e
            goto L1d
        L3e:
            switch(r0) {
                case 0: goto L48;
                case 1: goto L45;
                case 2: goto L42;
                default: goto L41;
            }
        L41:
            goto L4f
        L42:
            java.lang.String r5 = "0.00"
            return r5
        L45:
            java.lang.String r5 = "Used"
            return r5
        L48:
            r5 = 0
            return r5
        L4a:
            java.lang.String r3 = "$"
            goto L4f
        L4d:
            java.lang.String r3 = "£"
        L4f:
            java.lang.String r5 = r5.substring(r4)
            int r5 = java.lang.Integer.parseInt(r5)
            int r0 = r5 / 100
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r5 = r5 % 100
            r1 = 10
            if (r5 >= r1) goto L6e
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r1 = "0"
            java.lang.String r5 = r1.concat(r5)
            goto L72
        L6e:
            java.lang.String r5 = java.lang.String.valueOf(r5)
        L72:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r3)
            r1.append(r0)
            r0 = 46
            r1.append(r0)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.UPCEANExtension5Support.parseExtension5String(java.lang.String):java.lang.String");
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        String parseExtension5String;
        if (str.length() == 5 && (parseExtension5String = parseExtension5String(str)) != null) {
            EnumMap enumMap = new EnumMap(ResultMetadataType.class);
            enumMap.put((EnumMap) ResultMetadataType.SUGGESTED_PRICE, (ResultMetadataType) parseExtension5String);
            return enumMap;
        }
        return null;
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
