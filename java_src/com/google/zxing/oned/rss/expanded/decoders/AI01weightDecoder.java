package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import com.tencent.bugly.BuglyStrategy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class AI01weightDecoder extends AI01decoder {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01weightDecoder(BitArray bitArray) {
        super(bitArray);
    }

    protected abstract void addWeightCode(StringBuilder sb2, int i9);

    protected abstract int checkWeight(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void encodeCompressedWeight(StringBuilder sb2, int i9, int i10) {
        int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray(i9, i10);
        addWeightCode(sb2, extractNumericValueFromBitArray);
        int checkWeight = checkWeight(extractNumericValueFromBitArray);
        int i11 = BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
        for (int i12 = 0; i12 < 5; i12++) {
            if (checkWeight / i11 == 0) {
                sb2.append('0');
            }
            i11 /= 10;
        }
        sb2.append(checkWeight);
    }
}
