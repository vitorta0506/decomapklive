package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
/* loaded from: classes3.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    private static int[] bitsToWords(BitArray bitArray, int i9, int i10) {
        int[] iArr = new int[i10];
        int size = bitArray.getSize() / i9;
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = 0;
            for (int i13 = 0; i13 < i9; i13++) {
                i12 |= bitArray.get((i11 * i9) + i13) ? 1 << ((i9 - i13) - 1) : 0;
            }
            iArr[i11] = i12;
        }
        return iArr;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i9, int i10) {
        for (int i11 = 0; i11 < i10; i11 += 2) {
            int i12 = i9 - i11;
            int i13 = i12;
            while (true) {
                int i14 = i9 + i11;
                if (i13 <= i14) {
                    bitMatrix.set(i13, i12);
                    bitMatrix.set(i13, i14);
                    bitMatrix.set(i12, i13);
                    bitMatrix.set(i14, i13);
                    i13++;
                }
            }
        }
        int i15 = i9 - i10;
        bitMatrix.set(i15, i15);
        int i16 = i15 + 1;
        bitMatrix.set(i16, i15);
        bitMatrix.set(i15, i16);
        int i17 = i9 + i10;
        bitMatrix.set(i17, i15);
        bitMatrix.set(i17, i16);
        bitMatrix.set(i17, i17 - 1);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z10, int i9, BitArray bitArray) {
        int i10 = i9 / 2;
        int i11 = 0;
        if (z10) {
            while (i11 < 7) {
                int i12 = (i10 - 3) + i11;
                if (bitArray.get(i11)) {
                    bitMatrix.set(i12, i10 - 5);
                }
                if (bitArray.get(i11 + 7)) {
                    bitMatrix.set(i10 + 5, i12);
                }
                if (bitArray.get(20 - i11)) {
                    bitMatrix.set(i12, i10 + 5);
                }
                if (bitArray.get(27 - i11)) {
                    bitMatrix.set(i10 - 5, i12);
                }
                i11++;
            }
            return;
        }
        while (i11 < 10) {
            int i13 = (i10 - 5) + i11 + (i11 / 5);
            if (bitArray.get(i11)) {
                bitMatrix.set(i13, i10 - 7);
            }
            if (bitArray.get(i11 + 10)) {
                bitMatrix.set(i10 + 7, i13);
            }
            if (bitArray.get(29 - i11)) {
                bitMatrix.set(i13, i10 + 7);
            }
            if (bitArray.get(39 - i11)) {
                bitMatrix.set(i10 - 7, i13);
            }
            i11++;
        }
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i9, int i10) {
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i10));
        int i11 = i9 / i10;
        int[] bitsToWords = bitsToWords(bitArray, i10, i11);
        reedSolomonEncoder.encode(bitsToWords, i11 - (bitArray.getSize() / i10));
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i9 % i10);
        for (int i12 : bitsToWords) {
            bitArray2.appendBits(i12, i10);
        }
        return bitArray2;
    }

    static BitArray generateModeMessage(boolean z10, int i9, int i10) {
        BitArray bitArray = new BitArray();
        if (z10) {
            bitArray.appendBits(i9 - 1, 2);
            bitArray.appendBits(i10 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i9 - 1, 5);
        bitArray.appendBits(i10 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static GenericGF getGF(int i9) {
        if (i9 != 4) {
            if (i9 != 6) {
                if (i9 != 8) {
                    if (i9 != 10) {
                        if (i9 == 12) {
                            return GenericGF.AZTEC_DATA_12;
                        }
                        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i9)));
                    }
                    return GenericGF.AZTEC_DATA_10;
                }
                return GenericGF.AZTEC_DATA_8;
            }
            return GenericGF.AZTEC_DATA_6;
        }
        return GenericGF.AZTEC_PARAM;
    }

    static BitArray stuffBits(BitArray bitArray, int i9) {
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i10 = (1 << i9) - 2;
        int i11 = 0;
        while (i11 < size) {
            int i12 = 0;
            for (int i13 = 0; i13 < i9; i13++) {
                int i14 = i11 + i13;
                if (i14 >= size || bitArray.get(i14)) {
                    i12 |= 1 << ((i9 - 1) - i13);
                }
            }
            int i15 = i12 & i10;
            if (i15 == i10) {
                bitArray2.appendBits(i15, i9);
            } else if (i15 == 0) {
                bitArray2.appendBits(i12 | 1, i9);
            } else {
                bitArray2.appendBits(i12, i9);
                i11 += i9;
            }
            i11--;
            i11 += i9;
        }
        return bitArray2;
    }

    private static int totalBitsInLayer(int i9, boolean z10) {
        return ((z10 ? 88 : 112) + (i9 << 4)) * i9;
    }

    public static AztecCode encode(byte[] bArr, int i9, int i10) {
        BitArray bitArray;
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        BitArray encode = new HighLevelEncoder(bArr).encode();
        int size = ((encode.getSize() * i9) / 100) + 11;
        int size2 = encode.getSize() + size;
        int i15 = 0;
        int i16 = 1;
        if (i10 != 0) {
            z10 = i10 < 0;
            i12 = Math.abs(i10);
            if (i12 <= (z10 ? 4 : 32)) {
                i13 = totalBitsInLayer(i12, z10);
                i11 = WORD_SIZE[i12];
                int i17 = i13 - (i13 % i11);
                bitArray = stuffBits(encode, i11);
                if (bitArray.getSize() + size <= i17) {
                    if (z10 && bitArray.getSize() > (i11 << 6)) {
                        throw new IllegalArgumentException("Data to large for user specified layer");
                    }
                } else {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            } else {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i10)));
            }
        } else {
            BitArray bitArray2 = null;
            int i18 = 0;
            int i19 = 0;
            while (i18 <= 32) {
                boolean z11 = i18 <= 3;
                int i20 = z11 ? i18 + 1 : i18;
                int i21 = totalBitsInLayer(i20, z11);
                if (size2 <= i21) {
                    if (bitArray2 == null || i19 != WORD_SIZE[i20]) {
                        int i22 = WORD_SIZE[i20];
                        i19 = i22;
                        bitArray2 = stuffBits(encode, i22);
                    }
                    int i23 = i21 - (i21 % i19);
                    if ((!z11 || bitArray2.getSize() <= (i19 << 6)) && bitArray2.getSize() + size <= i23) {
                        bitArray = bitArray2;
                        i11 = i19;
                        z10 = z11;
                        i12 = i20;
                        i13 = i21;
                    }
                }
                i18++;
                i15 = 0;
                i16 = 1;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        BitArray generateCheckWords = generateCheckWords(bitArray, i13, i11);
        int size3 = bitArray.getSize() / i11;
        BitArray generateModeMessage = generateModeMessage(z10, i12, size3);
        int i24 = (z10 ? 11 : 14) + (i12 << 2);
        int[] iArr = new int[i24];
        int i25 = 2;
        if (z10) {
            for (int i26 = 0; i26 < i24; i26++) {
                iArr[i26] = i26;
            }
            i14 = i24;
        } else {
            int i27 = i24 / 2;
            i14 = i24 + 1 + (((i27 - 1) / 15) * 2);
            int i28 = i14 / 2;
            for (int i29 = 0; i29 < i27; i29++) {
                int i30 = (i29 / 15) + i29;
                iArr[(i27 - i29) - i16] = (i28 - i30) - 1;
                iArr[i27 + i29] = i30 + i28 + i16;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i14);
        int i31 = 0;
        int i32 = 0;
        while (i31 < i12) {
            int i33 = ((i12 - i31) << i25) + (z10 ? 9 : 12);
            int i34 = 0;
            while (i34 < i33) {
                int i35 = i34 << 1;
                while (i15 < i25) {
                    if (generateCheckWords.get(i32 + i35 + i15)) {
                        int i36 = i31 << 1;
                        bitMatrix.set(iArr[i36 + i15], iArr[i36 + i34]);
                    }
                    if (generateCheckWords.get((i33 << 1) + i32 + i35 + i15)) {
                        int i37 = i31 << 1;
                        bitMatrix.set(iArr[i37 + i34], iArr[((i24 - 1) - i37) - i15]);
                    }
                    if (generateCheckWords.get((i33 << 2) + i32 + i35 + i15)) {
                        int i38 = (i24 - 1) - (i31 << 1);
                        bitMatrix.set(iArr[i38 - i15], iArr[i38 - i34]);
                    }
                    if (generateCheckWords.get((i33 * 6) + i32 + i35 + i15)) {
                        int i39 = i31 << 1;
                        bitMatrix.set(iArr[((i24 - 1) - i39) - i34], iArr[i39 + i15]);
                    }
                    i15++;
                    i25 = 2;
                }
                i34++;
                i15 = 0;
                i25 = 2;
            }
            i32 += i33 << 3;
            i31++;
            i15 = 0;
            i25 = 2;
        }
        drawModeMessage(bitMatrix, z10, i14, generateModeMessage);
        if (z10) {
            drawBullsEye(bitMatrix, i14 / 2, 5);
        } else {
            int i40 = i14 / 2;
            drawBullsEye(bitMatrix, i40, 7);
            int i41 = 0;
            int i42 = 0;
            while (i42 < (i24 / 2) - 1) {
                for (int i43 = i40 & 1; i43 < i14; i43 += 2) {
                    int i44 = i40 - i41;
                    bitMatrix.set(i44, i43);
                    int i45 = i40 + i41;
                    bitMatrix.set(i45, i43);
                    bitMatrix.set(i43, i44);
                    bitMatrix.set(i43, i45);
                }
                i42 += 15;
                i41 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z10);
        aztecCode.setSize(i14);
        aztecCode.setLayers(i12);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }
}
