package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kotlin.UByte;
import okio.Utf8;
/* loaded from: classes3.dex */
final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED;
    private static final int NUMERIC_COMPACTION = 2;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};
    private static final byte[] PUNCTUATION = new byte[128];
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;

    /* renamed from: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$encoder$Compaction;

        static {
            int[] iArr = new int[Compaction.values().length];
            $SwitchMap$com$google$zxing$pdf417$encoder$Compaction = iArr;
            try {
                iArr[Compaction.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$encoder$Compaction[Compaction.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$encoder$Compaction[Compaction.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        MIXED = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i9 = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr2 = TEXT_MIXED_RAW;
            if (i10 >= bArr2.length) {
                break;
            }
            byte b10 = bArr2[i10];
            if (b10 > 0) {
                MIXED[b10] = (byte) i10;
            }
            i10++;
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        while (true) {
            byte[] bArr3 = TEXT_PUNCTUATION_RAW;
            if (i9 >= bArr3.length) {
                return;
            }
            byte b11 = bArr3[i9];
            if (b11 > 0) {
                PUNCTUATION[b11] = (byte) i9;
            }
            i9++;
        }
    }

    private PDF417HighLevelEncoder() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
        return r1 - r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int determineConsecutiveBinaryCount(java.lang.String r5, int r6, java.nio.charset.Charset r7) throws com.google.zxing.WriterException {
        /*
            java.nio.charset.CharsetEncoder r7 = r7.newEncoder()
            int r0 = r5.length()
            r1 = r6
        L9:
            if (r1 >= r0) goto L57
            char r2 = r5.charAt(r1)
            r3 = 0
        L10:
            r4 = 13
            if (r3 >= r4) goto L25
            boolean r2 = isDigit(r2)
            if (r2 == 0) goto L25
            int r3 = r3 + 1
            int r2 = r1 + r3
            if (r2 >= r0) goto L25
            char r2 = r5.charAt(r2)
            goto L10
        L25:
            if (r3 < r4) goto L29
            int r1 = r1 - r6
            return r1
        L29:
            char r2 = r5.charAt(r1)
            boolean r3 = r7.canEncode(r2)
            if (r3 == 0) goto L36
            int r1 = r1 + 1
            goto L9
        L36:
            com.google.zxing.WriterException r5 = new com.google.zxing.WriterException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Non-encodable character detected: "
            r6.<init>(r7)
            r6.append(r2)
            java.lang.String r7 = " (Unicode: "
            r6.append(r7)
            r6.append(r2)
            r7 = 41
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L57:
            int r1 = r1 - r6
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.determineConsecutiveBinaryCount(java.lang.String, int, java.nio.charset.Charset):int");
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i9) {
        int length = charSequence.length();
        int i10 = 0;
        if (i9 < length) {
            char charAt = charSequence.charAt(i9);
            while (isDigit(charAt) && i9 < length) {
                i10++;
                i9++;
                if (i9 < length) {
                    charAt = charSequence.charAt(i9);
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        return (r1 - r7) - r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int determineConsecutiveTextCount(java.lang.CharSequence r6, int r7) {
        /*
            int r0 = r6.length()
            r1 = r7
        L5:
            if (r1 >= r0) goto L37
            char r2 = r6.charAt(r1)
            r3 = 0
        Lc:
            r4 = 13
            if (r3 >= r4) goto L23
            boolean r5 = isDigit(r2)
            if (r5 == 0) goto L23
            if (r1 >= r0) goto L23
            int r3 = r3 + 1
            int r1 = r1 + 1
            if (r1 >= r0) goto Lc
            char r2 = r6.charAt(r1)
            goto Lc
        L23:
            if (r3 < r4) goto L28
            int r1 = r1 - r7
            int r1 = r1 - r3
            return r1
        L28:
            if (r3 > 0) goto L5
            char r2 = r6.charAt(r1)
            boolean r2 = isText(r2)
            if (r2 == 0) goto L37
            int r1 = r1 + 1
            goto L5
        L37:
            int r1 = r1 - r7
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.determineConsecutiveTextCount(java.lang.CharSequence, int):int");
    }

    private static void encodeBinary(byte[] bArr, int i9, int i10, int i11, StringBuilder sb2) {
        int i12;
        if (i10 == 1 && i11 == 0) {
            sb2.append((char) 913);
        } else if (i10 % 6 == 0) {
            sb2.append((char) 924);
        } else {
            sb2.append((char) 901);
        }
        if (i10 >= 6) {
            char[] cArr = new char[5];
            i12 = i9;
            while ((i9 + i10) - i12 >= 6) {
                long j10 = 0;
                for (int i13 = 0; i13 < 6; i13++) {
                    j10 = (j10 << 8) + (bArr[i12 + i13] & UByte.MAX_VALUE);
                }
                for (int i14 = 0; i14 < 5; i14++) {
                    cArr[i14] = (char) (j10 % 900);
                    j10 /= 900;
                }
                for (int i15 = 4; i15 >= 0; i15--) {
                    sb2.append(cArr[i15]);
                }
                i12 += 6;
            }
        } else {
            i12 = i9;
        }
        while (i12 < i9 + i10) {
            sb2.append((char) (bArr[i12] & UByte.MAX_VALUE));
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encodeHighLevel(String str, Compaction compaction, Charset charset) throws WriterException {
        CharacterSetECI characterSetECIByName;
        StringBuilder sb2 = new StringBuilder(str.length());
        if (charset == null) {
            charset = DEFAULT_ENCODING;
        } else if (!DEFAULT_ENCODING.equals(charset) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(charset.name())) != null) {
            encodingECI(characterSetECIByName.getValue(), sb2);
        }
        int length = str.length();
        int i9 = AnonymousClass1.$SwitchMap$com$google$zxing$pdf417$encoder$Compaction[compaction.ordinal()];
        if (i9 == 1) {
            encodeText(str, 0, length, sb2, 0);
        } else if (i9 == 2) {
            byte[] bytes = str.getBytes(charset);
            encodeBinary(bytes, 0, bytes.length, 1, sb2);
        } else if (i9 != 3) {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (i10 < length) {
                int determineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i10);
                if (determineConsecutiveDigitCount >= 13) {
                    sb2.append((char) 902);
                    encodeNumeric(str, i10, determineConsecutiveDigitCount, sb2);
                    i10 += determineConsecutiveDigitCount;
                    i11 = 0;
                    i12 = 2;
                } else {
                    int determineConsecutiveTextCount = determineConsecutiveTextCount(str, i10);
                    if (determineConsecutiveTextCount < 5 && determineConsecutiveDigitCount != length) {
                        int determineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, i10, charset);
                        if (determineConsecutiveBinaryCount == 0) {
                            determineConsecutiveBinaryCount = 1;
                        }
                        int i13 = determineConsecutiveBinaryCount + i10;
                        byte[] bytes2 = str.substring(i10, i13).getBytes(charset);
                        if (bytes2.length == 1 && i12 == 0) {
                            encodeBinary(bytes2, 0, 1, 0, sb2);
                        } else {
                            encodeBinary(bytes2, 0, bytes2.length, i12, sb2);
                            i11 = 0;
                            i12 = 1;
                        }
                        i10 = i13;
                    } else {
                        if (i12 != 0) {
                            sb2.append((char) 900);
                            i11 = 0;
                            i12 = 0;
                        }
                        i11 = encodeText(str, i10, determineConsecutiveTextCount, sb2, i11);
                        i10 += determineConsecutiveTextCount;
                    }
                }
            }
        } else {
            sb2.append((char) 902);
            encodeNumeric(str, 0, length, sb2);
        }
        return sb2.toString();
    }

    private static void encodeNumeric(String str, int i9, int i10, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder((i10 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900L);
        BigInteger valueOf2 = BigInteger.valueOf(0L);
        int i11 = 0;
        while (i11 < i10) {
            sb3.setLength(0);
            int min = Math.min(44, i10 - i11);
            StringBuilder sb4 = new StringBuilder("1");
            int i12 = i9 + i11;
            sb4.append(str.substring(i12, i12 + min));
            BigInteger bigInteger = new BigInteger(sb4.toString());
            do {
                sb3.append((char) bigInteger.mod(valueOf).intValue());
                bigInteger = bigInteger.divide(valueOf);
            } while (!bigInteger.equals(valueOf2));
            for (int length = sb3.length() - 1; length >= 0; length--) {
                sb2.append(sb3.charAt(length));
            }
            i11 += min;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00f6 A[EDGE_INSN: B:76:0x00f6->B:55:0x00f6 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int encodeText(java.lang.CharSequence r16, int r17, int r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.encodeText(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static void encodingECI(int i9, StringBuilder sb2) throws WriterException {
        if (i9 >= 0 && i9 < 900) {
            sb2.append((char) 927);
            sb2.append((char) i9);
        } else if (i9 < 810900) {
            sb2.append((char) 926);
            sb2.append((char) ((i9 / 900) - 1));
            sb2.append((char) (i9 % 900));
        } else if (i9 < 811800) {
            sb2.append((char) 925);
            sb2.append((char) (810900 - i9));
        } else {
            throw new WriterException("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i9)));
        }
    }

    private static boolean isAlphaLower(char c10) {
        if (c10 != ' ') {
            return c10 >= 'a' && c10 <= 'z';
        }
        return true;
    }

    private static boolean isAlphaUpper(char c10) {
        if (c10 != ' ') {
            return c10 >= 'A' && c10 <= 'Z';
        }
        return true;
    }

    private static boolean isDigit(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    private static boolean isMixed(char c10) {
        return MIXED[c10] != -1;
    }

    private static boolean isPunctuation(char c10) {
        return PUNCTUATION[c10] != -1;
    }

    private static boolean isText(char c10) {
        if (c10 == '\t' || c10 == '\n' || c10 == '\r') {
            return true;
        }
        return c10 >= ' ' && c10 <= '~';
    }
}
