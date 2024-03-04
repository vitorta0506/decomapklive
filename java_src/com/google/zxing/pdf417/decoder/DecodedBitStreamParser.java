package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import java.math.BigInteger;
import java.util.Arrays;
/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final int AL = 28;
    private static final int AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final BigInteger[] EXP900;
    private static final int LL = 27;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE = 4;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM = 6;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME = 0;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE = 5;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT = 1;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_SENDER = 3;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP = 2;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;
    private static final int ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;
    private static final int PL = 25;
    private static final int PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    private static final char[] MIXED_CHARS = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = valueOf;
        int i9 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = EXP900;
            if (i9 >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i9] = bigIntegerArr2[i9 - 1].multiply(valueOf);
            i9++;
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0021 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int byteCompaction(int r16, int[] r17, java.nio.charset.Charset r18, int r19, java.lang.StringBuilder r20) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.byteCompaction(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.common.DecoderResult decode(int[] r6, java.lang.String r7) throws com.google.zxing.FormatException {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r6.length
            r2 = 1
            int r1 = r1 << r2
            r0.<init>(r1)
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.ISO_8859_1
            r2 = r6[r2]
            com.google.zxing.pdf417.PDF417ResultMetadata r3 = new com.google.zxing.pdf417.PDF417ResultMetadata
            r3.<init>()
            r4 = 2
        L12:
            r5 = 0
            r5 = r6[r5]
            if (r4 >= r5) goto L6d
            r5 = 913(0x391, float:1.28E-42)
            if (r2 == r5) goto L58
            switch(r2) {
                case 900: goto L53;
                case 901: goto L4e;
                case 902: goto L49;
                default: goto L1e;
            }
        L1e:
            switch(r2) {
                case 922: goto L44;
                case 923: goto L44;
                case 924: goto L4e;
                case 925: goto L41;
                case 926: goto L3e;
                case 927: goto L2d;
                case 928: goto L28;
                default: goto L21;
            }
        L21:
            int r4 = r4 + (-1)
            int r2 = textCompaction(r6, r4, r0)
            goto L60
        L28:
            int r2 = decodeMacroBlock(r6, r4, r3)
            goto L60
        L2d:
            int r2 = r4 + 1
            r1 = r6[r4]
            com.google.zxing.common.CharacterSetECI r1 = com.google.zxing.common.CharacterSetECI.getCharacterSetECIByValue(r1)
            java.lang.String r1 = r1.name()
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            goto L60
        L3e:
            int r2 = r4 + 2
            goto L60
        L41:
            int r2 = r4 + 1
            goto L60
        L44:
            com.google.zxing.FormatException r6 = com.google.zxing.FormatException.getFormatInstance()
            throw r6
        L49:
            int r2 = numericCompaction(r6, r4, r0)
            goto L60
        L4e:
            int r2 = byteCompaction(r2, r6, r1, r4, r0)
            goto L60
        L53:
            int r2 = textCompaction(r6, r4, r0)
            goto L60
        L58:
            int r2 = r4 + 1
            r4 = r6[r4]
            char r4 = (char) r4
            r0.append(r4)
        L60:
            int r4 = r6.length
            if (r2 >= r4) goto L68
            int r4 = r2 + 1
            r2 = r6[r2]
            goto L12
        L68:
            com.google.zxing.FormatException r6 = com.google.zxing.FormatException.getFormatInstance()
            throw r6
        L6d:
            int r6 = r0.length()
            if (r6 == 0) goto L81
            com.google.zxing.common.DecoderResult r6 = new com.google.zxing.common.DecoderResult
            java.lang.String r0 = r0.toString()
            r1 = 0
            r6.<init>(r1, r0, r1, r7)
            r6.setOther(r3)
            return r6
        L81:
            com.google.zxing.FormatException r6 = com.google.zxing.FormatException.getFormatInstance()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.decode(int[], java.lang.String):com.google.zxing.common.DecoderResult");
    }

    private static String decodeBase900toBase10(int[] iArr, int i9) throws FormatException {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i10 = 0; i10 < i9; i10++) {
            bigInteger = bigInteger.add(EXP900[(i9 - i10) - 1].multiply(BigInteger.valueOf(iArr[i10])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    static int decodeMacroBlock(int[] iArr, int i9, PDF417ResultMetadata pDF417ResultMetadata) throws FormatException {
        if (i9 + 2 <= iArr[0]) {
            int[] iArr2 = new int[2];
            int i10 = 0;
            while (i10 < 2) {
                iArr2[i10] = iArr[i9];
                i10++;
                i9++;
            }
            pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
            StringBuilder sb2 = new StringBuilder();
            int textCompaction = textCompaction(iArr, i9, sb2);
            pDF417ResultMetadata.setFileId(sb2.toString());
            int i11 = iArr[textCompaction] == BEGIN_MACRO_PDF417_OPTIONAL_FIELD ? textCompaction + 1 : -1;
            while (textCompaction < iArr[0]) {
                int i12 = iArr[textCompaction];
                if (i12 == MACRO_PDF417_TERMINATOR) {
                    textCompaction++;
                    pDF417ResultMetadata.setLastSegment(true);
                } else if (i12 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
                    int i13 = textCompaction + 1;
                    switch (iArr[i13]) {
                        case 0:
                            StringBuilder sb3 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i13 + 1, sb3);
                            pDF417ResultMetadata.setFileName(sb3.toString());
                            continue;
                        case 1:
                            StringBuilder sb4 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i13 + 1, sb4);
                            pDF417ResultMetadata.setSegmentCount(Integer.parseInt(sb4.toString()));
                            continue;
                        case 2:
                            StringBuilder sb5 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i13 + 1, sb5);
                            pDF417ResultMetadata.setTimestamp(Long.parseLong(sb5.toString()));
                            continue;
                        case 3:
                            StringBuilder sb6 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i13 + 1, sb6);
                            pDF417ResultMetadata.setSender(sb6.toString());
                            continue;
                        case 4:
                            StringBuilder sb7 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i13 + 1, sb7);
                            pDF417ResultMetadata.setAddressee(sb7.toString());
                            continue;
                        case 5:
                            StringBuilder sb8 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i13 + 1, sb8);
                            pDF417ResultMetadata.setFileSize(Long.parseLong(sb8.toString()));
                            continue;
                        case 6:
                            StringBuilder sb9 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i13 + 1, sb9);
                            pDF417ResultMetadata.setChecksum(Integer.parseInt(sb9.toString()));
                            continue;
                        default:
                            throw FormatException.getFormatInstance();
                    }
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            if (i11 != -1) {
                int i14 = textCompaction - i11;
                if (pDF417ResultMetadata.isLastSegment()) {
                    i14--;
                }
                pDF417ResultMetadata.setOptionalData(Arrays.copyOfRange(iArr, i11, i14 + i11));
            }
            return textCompaction;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void decodeTextCompaction(int[] iArr, int[] iArr2, int i9, StringBuilder sb2) {
        Mode mode;
        int i10;
        Mode mode2 = Mode.ALPHA;
        Mode mode3 = mode2;
        for (int i11 = 0; i11 < i9; i11++) {
            int i12 = iArr[i11];
            char c10 = ' ';
            switch (AnonymousClass1.$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[mode2.ordinal()]) {
                case 1:
                    if (i12 < 26) {
                        i10 = i12 + 65;
                        c10 = (char) i10;
                        break;
                    } else {
                        if (i12 == 900) {
                            mode2 = Mode.ALPHA;
                        } else if (i12 != 913) {
                            switch (i12) {
                                case 27:
                                    mode2 = Mode.LOWER;
                                    break;
                                case 28:
                                    mode2 = Mode.MIXED;
                                    break;
                                case 29:
                                    mode = Mode.PUNCT_SHIFT;
                                    c10 = 0;
                                    Mode mode4 = mode;
                                    mode3 = mode2;
                                    mode2 = mode4;
                                    break;
                            }
                        } else {
                            sb2.append((char) iArr2[i11]);
                        }
                        c10 = 0;
                        break;
                    }
                    break;
                case 2:
                    if (i12 < 26) {
                        i10 = i12 + 97;
                        c10 = (char) i10;
                        break;
                    } else {
                        if (i12 == 900) {
                            mode2 = Mode.ALPHA;
                        } else if (i12 != 913) {
                            switch (i12) {
                                case 27:
                                    mode = Mode.ALPHA_SHIFT;
                                    c10 = 0;
                                    Mode mode42 = mode;
                                    mode3 = mode2;
                                    mode2 = mode42;
                                    break;
                                case 28:
                                    mode2 = Mode.MIXED;
                                    break;
                                case 29:
                                    mode = Mode.PUNCT_SHIFT;
                                    c10 = 0;
                                    Mode mode422 = mode;
                                    mode3 = mode2;
                                    mode2 = mode422;
                                    break;
                            }
                        } else {
                            sb2.append((char) iArr2[i11]);
                        }
                        c10 = 0;
                        break;
                    }
                    break;
                case 3:
                    if (i12 < 25) {
                        c10 = MIXED_CHARS[i12];
                        break;
                    } else {
                        if (i12 == 900) {
                            mode2 = Mode.ALPHA;
                        } else if (i12 != 913) {
                            switch (i12) {
                                case 25:
                                    mode2 = Mode.PUNCT;
                                    break;
                                case 27:
                                    mode2 = Mode.LOWER;
                                    break;
                                case 28:
                                    mode2 = Mode.ALPHA;
                                    break;
                                case 29:
                                    mode = Mode.PUNCT_SHIFT;
                                    c10 = 0;
                                    Mode mode4222 = mode;
                                    mode3 = mode2;
                                    mode2 = mode4222;
                                    break;
                            }
                        } else {
                            sb2.append((char) iArr2[i11]);
                        }
                        c10 = 0;
                        break;
                    }
                    break;
                case 4:
                    if (i12 < 29) {
                        c10 = PUNCT_CHARS[i12];
                        break;
                    } else {
                        if (i12 == 29) {
                            mode2 = Mode.ALPHA;
                        } else if (i12 == 900) {
                            mode2 = Mode.ALPHA;
                        } else if (i12 == 913) {
                            sb2.append((char) iArr2[i11]);
                        }
                        c10 = 0;
                        break;
                    }
                case 5:
                    if (i12 < 26) {
                        c10 = (char) (i12 + 65);
                    } else if (i12 != 26) {
                        if (i12 == 900) {
                            mode2 = Mode.ALPHA;
                            c10 = 0;
                            break;
                        }
                        mode2 = mode3;
                        c10 = 0;
                    }
                    mode2 = mode3;
                    break;
                case 6:
                    if (i12 < 29) {
                        c10 = PUNCT_CHARS[i12];
                        mode2 = mode3;
                        break;
                    } else {
                        if (i12 == 29) {
                            mode2 = Mode.ALPHA;
                        } else if (i12 != 900) {
                            if (i12 == 913) {
                                sb2.append((char) iArr2[i11]);
                            }
                            mode2 = mode3;
                        } else {
                            mode2 = Mode.ALPHA;
                        }
                        c10 = 0;
                        break;
                    }
                default:
                    c10 = 0;
                    break;
            }
            if (c10 != 0) {
                sb2.append(c10);
            }
        }
    }

    private static int numericCompaction(int[] iArr, int i9, StringBuilder sb2) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z10 = false;
        int i10 = 0;
        while (i9 < iArr[0] && !z10) {
            int i11 = i9 + 1;
            int i12 = iArr[i9];
            if (i11 == iArr[0]) {
                z10 = true;
            }
            if (i12 < 900) {
                iArr2[i10] = i12;
                i10++;
            } else {
                if (i12 != 900 && i12 != 901 && i12 != 928) {
                    switch (i12) {
                    }
                }
                i11--;
                z10 = true;
            }
            if ((i10 % 15 == 0 || i12 == 902 || z10) && i10 > 0) {
                sb2.append(decodeBase900toBase10(iArr2, i10));
                i10 = 0;
            }
            i9 = i11;
        }
        return i9;
    }

    private static int textCompaction(int[] iArr, int i9, StringBuilder sb2) {
        int[] iArr2 = new int[(iArr[0] - i9) << 1];
        int[] iArr3 = new int[(iArr[0] - i9) << 1];
        boolean z10 = false;
        int i10 = 0;
        while (i9 < iArr[0] && !z10) {
            int i11 = i9 + 1;
            int i12 = iArr[i9];
            if (i12 < 900) {
                iArr2[i10] = i12 / 30;
                iArr2[i10 + 1] = i12 % 30;
                i10 += 2;
            } else if (i12 != 913) {
                if (i12 != 928) {
                    switch (i12) {
                        case 900:
                            iArr2[i10] = 900;
                            i10++;
                            break;
                        case 901:
                        case 902:
                            break;
                        default:
                            switch (i12) {
                            }
                    }
                }
                i9 = i11 - 1;
                z10 = true;
            } else {
                iArr2[i10] = 913;
                i9 = i11 + 1;
                iArr3[i10] = iArr[i11];
                i10++;
            }
            i9 = i11;
        }
        decodeTextCompaction(iArr2, iArr3, i10, sb2);
        return i9;
    }
}
