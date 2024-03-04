package com.google.zxing.maxicode.decoder;

import com.google.zxing.common.DecoderResult;
import java.text.DecimalFormat;
/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char ECI = 65530;
    private static final char FS = 28;
    private static final char GS = 29;
    private static final char LATCHA = 65527;
    private static final char LATCHB = 65528;
    private static final char LOCK = 65529;
    private static final char NS = 65531;
    private static final char PAD = 65532;
    private static final char RS = 30;
    private static final String[] SETS = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};
    private static final char SHIFTA = 65520;
    private static final char SHIFTB = 65521;
    private static final char SHIFTC = 65522;
    private static final char SHIFTD = 65523;
    private static final char SHIFTE = 65524;
    private static final char THREESHIFTA = 65526;
    private static final char TWOSHIFTA = 65525;

    private DecodedBitStreamParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DecoderResult decode(byte[] bArr, int i9) {
        String postCode3;
        StringBuilder sb2 = new StringBuilder(144);
        if (i9 == 2 || i9 == 3) {
            if (i9 == 2) {
                postCode3 = new DecimalFormat("0000000000".substring(0, getPostCode2Length(bArr))).format(getPostCode2(bArr));
            } else {
                postCode3 = getPostCode3(bArr);
            }
            DecimalFormat decimalFormat = new DecimalFormat("000");
            String format = decimalFormat.format(getCountry(bArr));
            String format2 = decimalFormat.format(getServiceClass(bArr));
            sb2.append(getMessage(bArr, 10, 84));
            if (sb2.toString().startsWith("[)>\u001e01\u001d")) {
                sb2.insert(9, postCode3 + GS + format + GS + format2 + GS);
            } else {
                sb2.insert(0, postCode3 + GS + format + GS + format2 + GS);
            }
        } else if (i9 == 4) {
            sb2.append(getMessage(bArr, 1, 93));
        } else if (i9 == 5) {
            sb2.append(getMessage(bArr, 1, 77));
        }
        return new DecoderResult(bArr, sb2.toString(), null, String.valueOf(i9));
    }

    private static int getBit(int i9, byte[] bArr) {
        int i10 = i9 - 1;
        return ((1 << (5 - (i10 % 6))) & bArr[i10 / 6]) == 0 ? 0 : 1;
    }

    private static int getCountry(byte[] bArr) {
        return getInt(bArr, new byte[]{53, 54, 43, 44, 45, 46, 47, 48, 37, 38});
    }

    private static int getInt(byte[] bArr, byte[] bArr2) {
        if (bArr2.length != 0) {
            int i9 = 0;
            for (int i10 = 0; i10 < bArr2.length; i10++) {
                i9 += getBit(bArr2[i10], bArr) << ((bArr2.length - i10) - 1);
            }
            return i9;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String getMessage(byte[] bArr, int i9, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        StringBuilder sb2 = new StringBuilder();
        int i15 = i9;
        int i16 = 0;
        int i17 = -1;
        int i18 = 0;
        while (i15 < i9 + i10) {
            char charAt = SETS[i16].charAt(bArr[i15]);
            switch (charAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i18 = i16;
                    i16 = charAt - SHIFTA;
                    i17 = 1;
                    break;
                case 65525:
                    i17 = 2;
                    i18 = i16;
                    i16 = 0;
                    break;
                case 65526:
                    i17 = 3;
                    i18 = i16;
                    i16 = 0;
                    break;
                case 65527:
                    i16 = 0;
                    i17 = -1;
                    break;
                case 65528:
                    i16 = 1;
                    i17 = -1;
                    break;
                case 65529:
                    i17 = -1;
                    break;
                case 65530:
                default:
                    sb2.append(charAt);
                    break;
                case 65531:
                    i15 = i15 + 1 + 1 + 1 + 1 + 1;
                    sb2.append(new DecimalFormat("000000000").format((bArr[i11] << 24) + (bArr[i12] << 18) + (bArr[i13] << 12) + (bArr[i14] << 6) + bArr[i15]));
                    break;
            }
            int i19 = i17 - 1;
            if (i17 == 0) {
                i16 = i18;
            }
            i15++;
            i17 = i19;
        }
        while (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) == 65532) {
            sb2.setLength(sb2.length() - 1);
        }
        return sb2.toString();
    }

    private static int getPostCode2(byte[] bArr) {
        return getInt(bArr, new byte[]{33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    private static int getPostCode2Length(byte[] bArr) {
        return getInt(bArr, new byte[]{39, 40, 41, 42, 31, 32});
    }

    private static String getPostCode3(byte[] bArr) {
        String[] strArr = SETS;
        return String.valueOf(new char[]{strArr[0].charAt(getInt(bArr, new byte[]{39, 40, 41, 42, 31, 32})), strArr[0].charAt(getInt(bArr, new byte[]{33, 34, 35, 36, 25, 26})), strArr[0].charAt(getInt(bArr, new byte[]{27, 28, 29, 30, 19, 20})), strArr[0].charAt(getInt(bArr, new byte[]{21, 22, 23, 24, 13, 14})), strArr[0].charAt(getInt(bArr, new byte[]{15, 16, 17, 18, 7, 8})), strArr[0].charAt(getInt(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }

    private static int getServiceClass(byte[] bArr) {
        return getInt(bArr, new byte[]{55, 56, 57, 58, 59, 60, 49, 50, 51, 52});
    }
}
