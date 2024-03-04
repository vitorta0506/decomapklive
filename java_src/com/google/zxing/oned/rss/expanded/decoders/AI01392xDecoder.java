package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AI01392xDecoder extends AI01decoder {
    private static final int HEADER_SIZE = 8;
    private static final int LAST_DIGIT_SIZE = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01392xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        if (getInformation().getSize() >= 48) {
            StringBuilder sb2 = new StringBuilder();
            encodeCompressedGtin(sb2, 8);
            int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray(48, 2);
            sb2.append("(392");
            sb2.append(extractNumericValueFromBitArray);
            sb2.append(')');
            sb2.append(getGeneralDecoder().decodeGeneralPurposeField(50, null).getNewString());
            return sb2.toString();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
