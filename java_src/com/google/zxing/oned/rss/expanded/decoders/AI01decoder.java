package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
/* loaded from: classes3.dex */
abstract class AI01decoder extends AbstractExpandedDecoder {
    static final int GTIN_SIZE = 40;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01decoder(BitArray bitArray) {
        super(bitArray);
    }

    private static void appendCheckDigit(StringBuilder sb2, int i9) {
        int i10 = 0;
        for (int i11 = 0; i11 < 13; i11++) {
            int charAt = sb2.charAt(i11 + i9) - '0';
            if ((i11 & 1) == 0) {
                charAt *= 3;
            }
            i10 += charAt;
        }
        int i12 = 10 - (i10 % 10);
        sb2.append(i12 != 10 ? i12 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void encodeCompressedGtin(StringBuilder sb2, int i9) {
        sb2.append("(01)");
        int length = sb2.length();
        sb2.append('9');
        encodeCompressedGtinWithoutAI(sb2, i9, length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void encodeCompressedGtinWithoutAI(StringBuilder sb2, int i9, int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray((i11 * 10) + i9, 10);
            if (extractNumericValueFromBitArray / 100 == 0) {
                sb2.append('0');
            }
            if (extractNumericValueFromBitArray / 10 == 0) {
                sb2.append('0');
            }
            sb2.append(extractNumericValueFromBitArray);
        }
        appendCheckDigit(sb2, i10);
    }
}
