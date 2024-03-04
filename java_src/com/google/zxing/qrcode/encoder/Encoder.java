package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import kotlin.UByte;
/* loaded from: classes3.dex */
public final class Encoder {
    private static final int[] ALPHANUMERIC_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.qrcode.encoder.Encoder$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private Encoder() {
    }

    static void append8BitBytes(String str, BitArray bitArray, String str2) throws WriterException {
        try {
            for (byte b10 : str.getBytes(str2)) {
                bitArray.appendBits(b10, 8);
            }
        } catch (UnsupportedEncodingException e10) {
            throw new WriterException(e10);
        }
    }

    static void appendAlphanumericBytes(CharSequence charSequence, BitArray bitArray) throws WriterException {
        int length = charSequence.length();
        int i9 = 0;
        while (i9 < length) {
            int alphanumericCode = getAlphanumericCode(charSequence.charAt(i9));
            if (alphanumericCode == -1) {
                throw new WriterException();
            }
            int i10 = i9 + 1;
            if (i10 < length) {
                int alphanumericCode2 = getAlphanumericCode(charSequence.charAt(i10));
                if (alphanumericCode2 != -1) {
                    bitArray.appendBits((alphanumericCode * 45) + alphanumericCode2, 11);
                    i9 += 2;
                } else {
                    throw new WriterException();
                }
            } else {
                bitArray.appendBits(alphanumericCode, 6);
                i9 = i10;
            }
        }
    }

    static void appendBytes(String str, Mode mode, BitArray bitArray, String str2) throws WriterException {
        int i9 = AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()];
        if (i9 == 1) {
            appendNumericBytes(str, bitArray);
        } else if (i9 == 2) {
            appendAlphanumericBytes(str, bitArray);
        } else if (i9 == 3) {
            append8BitBytes(str, bitArray, str2);
        } else if (i9 == 4) {
            appendKanjiBytes(str, bitArray);
        } else {
            throw new WriterException("Invalid mode: ".concat(String.valueOf(mode)));
        }
    }

    private static void appendECI(CharacterSetECI characterSetECI, BitArray bitArray) {
        bitArray.appendBits(Mode.ECI.getBits(), 4);
        bitArray.appendBits(characterSetECI.getValue(), 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035 A[LOOP:0: B:4:0x0008->B:17:0x0035, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0044 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void appendKanjiBytes(java.lang.String r6, com.google.zxing.common.BitArray r7) throws com.google.zxing.WriterException {
        /*
            java.lang.String r0 = "Shift_JIS"
            byte[] r6 = r6.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L4d
            int r0 = r6.length
            r1 = 0
        L8:
            if (r1 >= r0) goto L4c
            r2 = r6[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r1 + 1
            r3 = r6[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            r2 = r2 | r3
            r3 = 33088(0x8140, float:4.6366E-41)
            r4 = -1
            if (r2 < r3) goto L24
            r5 = 40956(0x9ffc, float:5.7392E-41)
            if (r2 > r5) goto L24
        L22:
            int r2 = r2 - r3
            goto L33
        L24:
            r3 = 57408(0xe040, float:8.0446E-41)
            if (r2 < r3) goto L32
            r3 = 60351(0xebbf, float:8.457E-41)
            if (r2 > r3) goto L32
            r3 = 49472(0xc140, float:6.9325E-41)
            goto L22
        L32:
            r2 = -1
        L33:
            if (r2 == r4) goto L44
            int r3 = r2 >> 8
            int r3 = r3 * 192
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r2
            r2 = 13
            r7.appendBits(r3, r2)
            int r1 = r1 + 2
            goto L8
        L44:
            com.google.zxing.WriterException r6 = new com.google.zxing.WriterException
            java.lang.String r7 = "Invalid byte sequence"
            r6.<init>(r7)
            throw r6
        L4c:
            return
        L4d:
            r6 = move-exception
            com.google.zxing.WriterException r7 = new com.google.zxing.WriterException
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.appendKanjiBytes(java.lang.String, com.google.zxing.common.BitArray):void");
    }

    static void appendLengthInfo(int i9, Version version, Mode mode, BitArray bitArray) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(version);
        int i10 = 1 << characterCountBits;
        if (i9 < i10) {
            bitArray.appendBits(i9, characterCountBits);
            return;
        }
        throw new WriterException(i9 + " is bigger than " + (i10 - 1));
    }

    static void appendModeInfo(Mode mode, BitArray bitArray) {
        bitArray.appendBits(mode.getBits(), 4);
    }

    static void appendNumericBytes(CharSequence charSequence, BitArray bitArray) {
        int length = charSequence.length();
        int i9 = 0;
        while (i9 < length) {
            int charAt = charSequence.charAt(i9) - '0';
            int i10 = i9 + 2;
            if (i10 < length) {
                bitArray.appendBits((charAt * 100) + ((charSequence.charAt(i9 + 1) - '0') * 10) + (charSequence.charAt(i10) - '0'), 10);
                i9 += 3;
            } else {
                i9++;
                if (i9 < length) {
                    bitArray.appendBits((charAt * 10) + (charSequence.charAt(i9) - '0'), 7);
                    i9 = i10;
                } else {
                    bitArray.appendBits(charAt, 4);
                }
            }
        }
    }

    private static int calculateBitsNeeded(Mode mode, BitArray bitArray, BitArray bitArray2, Version version) {
        return bitArray.getSize() + mode.getCharacterCountBits(version) + bitArray2.getSize();
    }

    private static int calculateMaskPenalty(ByteMatrix byteMatrix) {
        return MaskUtil.applyMaskPenaltyRule1(byteMatrix) + MaskUtil.applyMaskPenaltyRule2(byteMatrix) + MaskUtil.applyMaskPenaltyRule3(byteMatrix) + MaskUtil.applyMaskPenaltyRule4(byteMatrix);
    }

    private static int chooseMaskPattern(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, ByteMatrix byteMatrix) throws WriterException {
        int i9 = Integer.MAX_VALUE;
        int i10 = -1;
        for (int i11 = 0; i11 < 8; i11++) {
            MatrixUtil.buildMatrix(bitArray, errorCorrectionLevel, version, i11, byteMatrix);
            int calculateMaskPenalty = calculateMaskPenalty(byteMatrix);
            if (calculateMaskPenalty < i9) {
                i10 = i11;
                i9 = calculateMaskPenalty;
            }
        }
        return i10;
    }

    public static Mode chooseMode(String str) {
        return chooseMode(str, null);
    }

    private static Version chooseVersion(int i9, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i10 = 1; i10 <= 40; i10++) {
            Version versionForNumber = Version.getVersionForNumber(i10);
            if (willFit(i9, versionForNumber, errorCorrectionLevel)) {
                return versionForNumber;
            }
        }
        throw new WriterException("Data too big");
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        return encode(str, errorCorrectionLevel, null);
    }

    static byte[] generateECBytes(byte[] bArr, int i9) {
        int length = bArr.length;
        int[] iArr = new int[length + i9];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = bArr[i10] & UByte.MAX_VALUE;
        }
        new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(iArr, i9);
        byte[] bArr2 = new byte[i9];
        for (int i11 = 0; i11 < i9; i11++) {
            bArr2[i11] = (byte) iArr[length + i11];
        }
        return bArr2;
    }

    static int getAlphanumericCode(int i9) {
        int[] iArr = ALPHANUMERIC_TABLE;
        if (i9 < iArr.length) {
            return iArr[i9];
        }
        return -1;
    }

    static void getNumDataBytesAndNumECBytesForBlockID(int i9, int i10, int i11, int i12, int[] iArr, int[] iArr2) throws WriterException {
        if (i12 < i11) {
            int i13 = i9 % i11;
            int i14 = i11 - i13;
            int i15 = i9 / i11;
            int i16 = i15 + 1;
            int i17 = i10 / i11;
            int i18 = i17 + 1;
            int i19 = i15 - i17;
            int i20 = i16 - i18;
            if (i19 != i20) {
                throw new WriterException("EC bytes mismatch");
            }
            if (i11 != i14 + i13) {
                throw new WriterException("RS blocks mismatch");
            }
            if (i9 != ((i17 + i19) * i14) + ((i18 + i20) * i13)) {
                throw new WriterException("Total bytes mismatch");
            }
            if (i12 < i14) {
                iArr[0] = i17;
                iArr2[0] = i19;
                return;
            }
            iArr[0] = i18;
            iArr2[0] = i20;
            return;
        }
        throw new WriterException("Block ID too large");
    }

    static BitArray interleaveWithECBytes(BitArray bitArray, int i9, int i10, int i11) throws WriterException {
        if (bitArray.getSizeInBytes() == i10) {
            ArrayList<BlockPair> arrayList = new ArrayList(i11);
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i11; i15++) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                getNumDataBytesAndNumECBytesForBlockID(i9, i10, i11, i15, iArr, iArr2);
                int i16 = iArr[0];
                byte[] bArr = new byte[i16];
                bitArray.toBytes(i12 << 3, bArr, 0, i16);
                byte[] generateECBytes = generateECBytes(bArr, iArr2[0]);
                arrayList.add(new BlockPair(bArr, generateECBytes));
                i13 = Math.max(i13, i16);
                i14 = Math.max(i14, generateECBytes.length);
                i12 += iArr[0];
            }
            if (i10 == i12) {
                BitArray bitArray2 = new BitArray();
                for (int i17 = 0; i17 < i13; i17++) {
                    for (BlockPair blockPair : arrayList) {
                        byte[] dataBytes = blockPair.getDataBytes();
                        if (i17 < dataBytes.length) {
                            bitArray2.appendBits(dataBytes[i17], 8);
                        }
                    }
                }
                for (int i18 = 0; i18 < i14; i18++) {
                    for (BlockPair blockPair2 : arrayList) {
                        byte[] errorCorrectionBytes = blockPair2.getErrorCorrectionBytes();
                        if (i18 < errorCorrectionBytes.length) {
                            bitArray2.appendBits(errorCorrectionBytes[i18], 8);
                        }
                    }
                }
                if (i9 == bitArray2.getSizeInBytes()) {
                    return bitArray2;
                }
                throw new WriterException("Interleaving error: " + i9 + " and " + bitArray2.getSizeInBytes() + " differ.");
            }
            throw new WriterException("Data bytes does not match offset");
        }
        throw new WriterException("Number of bits and data bytes does not match");
    }

    private static boolean isOnlyDoubleByteKanji(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i9 = 0; i9 < length; i9 += 2) {
                int i10 = bytes[i9] & UByte.MAX_VALUE;
                if ((i10 < 129 || i10 > 159) && (i10 < 224 || i10 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    private static Version recommendVersion(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, BitArray bitArray, BitArray bitArray2) throws WriterException {
        return chooseVersion(calculateBitsNeeded(mode, bitArray, bitArray2, chooseVersion(calculateBitsNeeded(mode, bitArray, bitArray2, Version.getVersionForNumber(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    static void terminateBits(int i9, BitArray bitArray) throws WriterException {
        int i10 = i9 << 3;
        if (bitArray.getSize() <= i10) {
            for (int i11 = 0; i11 < 4 && bitArray.getSize() < i10; i11++) {
                bitArray.appendBit(false);
            }
            int size = bitArray.getSize() & 7;
            if (size > 0) {
                while (size < 8) {
                    bitArray.appendBit(false);
                    size++;
                }
            }
            int sizeInBytes = i9 - bitArray.getSizeInBytes();
            for (int i12 = 0; i12 < sizeInBytes; i12++) {
                bitArray.appendBits((i12 & 1) == 0 ? 236 : 17, 8);
            }
            if (bitArray.getSize() != i10) {
                throw new WriterException("Bits size does not equal capacity");
            }
            return;
        }
        throw new WriterException("data bits cannot fit in the QR Code" + bitArray.getSize() + " > " + i10);
    }

    private static boolean willFit(int i9, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        return version.getTotalCodewords() - version.getECBlocksForLevel(errorCorrectionLevel).getTotalECCodewords() >= (i9 + 7) / 8;
    }

    private static Mode chooseMode(String str, String str2) {
        if ("Shift_JIS".equals(str2) && isOnlyDoubleByteKanji(str)) {
            return Mode.KANJI;
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt >= '0' && charAt <= '9') {
                z11 = true;
            } else if (getAlphanumericCode(charAt) == -1) {
                return Mode.BYTE;
            } else {
                z10 = true;
            }
        }
        if (z10) {
            return Mode.ALPHANUMERIC;
        }
        if (z11) {
            return Mode.NUMERIC;
        }
        return Mode.BYTE;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.qrcode.encoder.QRCode encode(java.lang.String r7, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel r8, java.util.Map<com.google.zxing.EncodeHintType, ?> r9) throws com.google.zxing.WriterException {
        /*
            r0 = 1
            r1 = 0
            if (r9 == 0) goto Le
            com.google.zxing.EncodeHintType r2 = com.google.zxing.EncodeHintType.CHARACTER_SET
            boolean r2 = r9.containsKey(r2)
            if (r2 == 0) goto Le
            r2 = 1
            goto Lf
        Le:
            r2 = 0
        Lf:
            if (r2 == 0) goto L1c
            com.google.zxing.EncodeHintType r3 = com.google.zxing.EncodeHintType.CHARACTER_SET
            java.lang.Object r3 = r9.get(r3)
            java.lang.String r3 = r3.toString()
            goto L1e
        L1c:
            java.lang.String r3 = "ISO-8859-1"
        L1e:
            com.google.zxing.qrcode.decoder.Mode r4 = chooseMode(r7, r3)
            com.google.zxing.common.BitArray r5 = new com.google.zxing.common.BitArray
            r5.<init>()
            com.google.zxing.qrcode.decoder.Mode r6 = com.google.zxing.qrcode.decoder.Mode.BYTE
            if (r4 != r6) goto L36
            if (r2 == 0) goto L36
            com.google.zxing.common.CharacterSetECI r2 = com.google.zxing.common.CharacterSetECI.getCharacterSetECIByName(r3)
            if (r2 == 0) goto L36
            appendECI(r2, r5)
        L36:
            if (r9 == 0) goto L41
            com.google.zxing.EncodeHintType r2 = com.google.zxing.EncodeHintType.GS1_FORMAT
            boolean r2 = r9.containsKey(r2)
            if (r2 == 0) goto L41
            goto L42
        L41:
            r0 = 0
        L42:
            if (r0 == 0) goto L5d
            com.google.zxing.EncodeHintType r0 = com.google.zxing.EncodeHintType.GS1_FORMAT
            java.lang.Object r0 = r9.get(r0)
            java.lang.String r0 = r0.toString()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L5d
            com.google.zxing.qrcode.decoder.Mode r0 = com.google.zxing.qrcode.decoder.Mode.FNC1_FIRST_POSITION
            appendModeInfo(r0, r5)
        L5d:
            appendModeInfo(r4, r5)
            com.google.zxing.common.BitArray r0 = new com.google.zxing.common.BitArray
            r0.<init>()
            appendBytes(r7, r4, r0, r3)
            if (r9 == 0) goto L95
            com.google.zxing.EncodeHintType r1 = com.google.zxing.EncodeHintType.QR_VERSION
            boolean r2 = r9.containsKey(r1)
            if (r2 == 0) goto L95
            java.lang.Object r9 = r9.get(r1)
            java.lang.String r9 = r9.toString()
            int r9 = java.lang.Integer.parseInt(r9)
            com.google.zxing.qrcode.decoder.Version r9 = com.google.zxing.qrcode.decoder.Version.getVersionForNumber(r9)
            int r1 = calculateBitsNeeded(r4, r5, r0, r9)
            boolean r1 = willFit(r1, r9, r8)
            if (r1 == 0) goto L8d
            goto L99
        L8d:
            com.google.zxing.WriterException r7 = new com.google.zxing.WriterException
            java.lang.String r8 = "Data too big for requested version"
            r7.<init>(r8)
            throw r7
        L95:
            com.google.zxing.qrcode.decoder.Version r9 = recommendVersion(r8, r4, r5, r0)
        L99:
            com.google.zxing.common.BitArray r1 = new com.google.zxing.common.BitArray
            r1.<init>()
            r1.appendBitArray(r5)
            if (r4 != r6) goto La8
            int r7 = r0.getSizeInBytes()
            goto Lac
        La8:
            int r7 = r7.length()
        Lac:
            appendLengthInfo(r7, r9, r4, r1)
            r1.appendBitArray(r0)
            com.google.zxing.qrcode.decoder.Version$ECBlocks r7 = r9.getECBlocksForLevel(r8)
            int r0 = r9.getTotalCodewords()
            int r2 = r7.getTotalECCodewords()
            int r0 = r0 - r2
            terminateBits(r0, r1)
            int r2 = r9.getTotalCodewords()
            int r7 = r7.getNumBlocks()
            com.google.zxing.common.BitArray r7 = interleaveWithECBytes(r1, r2, r0, r7)
            com.google.zxing.qrcode.encoder.QRCode r0 = new com.google.zxing.qrcode.encoder.QRCode
            r0.<init>()
            r0.setECLevel(r8)
            r0.setMode(r4)
            r0.setVersion(r9)
            int r1 = r9.getDimensionForVersion()
            com.google.zxing.qrcode.encoder.ByteMatrix r2 = new com.google.zxing.qrcode.encoder.ByteMatrix
            r2.<init>(r1, r1)
            int r1 = chooseMaskPattern(r7, r8, r9, r2)
            r0.setMaskPattern(r1)
            com.google.zxing.qrcode.encoder.MatrixUtil.buildMatrix(r7, r8, r9, r1, r2)
            r0.setMatrix(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.encode(java.lang.String, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel, java.util.Map):com.google.zxing.qrcode.encoder.QRCode");
    }
}
