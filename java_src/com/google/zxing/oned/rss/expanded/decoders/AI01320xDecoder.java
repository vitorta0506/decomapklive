package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
/* loaded from: classes3.dex */
final class AI01320xDecoder extends AI013x0xDecoder {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01320xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected void addWeightCode(StringBuilder sb2, int i9) {
        if (i9 < 10000) {
            sb2.append("(3202)");
        } else {
            sb2.append("(3203)");
        }
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected int checkWeight(int i9) {
        return i9 < 10000 ? i9 : i9 - 10000;
    }
}
