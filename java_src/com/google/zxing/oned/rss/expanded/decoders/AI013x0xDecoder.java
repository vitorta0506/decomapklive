package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
/* loaded from: classes3.dex */
abstract class AI013x0xDecoder extends AI01weightDecoder {
    private static final int HEADER_SIZE = 5;
    private static final int WEIGHT_SIZE = 15;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI013x0xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() == 60) {
            StringBuilder sb2 = new StringBuilder();
            encodeCompressedGtin(sb2, 5);
            encodeCompressedWeight(sb2, 45, 15);
            return sb2.toString();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
