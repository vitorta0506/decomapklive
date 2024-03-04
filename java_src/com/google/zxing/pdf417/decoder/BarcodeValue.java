package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
final class BarcodeValue {
    private final Map<Integer, Integer> values = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getConfidence(int i9) {
        return this.values.get(Integer.valueOf(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getValue() {
        ArrayList arrayList = new ArrayList();
        int i9 = -1;
        for (Map.Entry<Integer, Integer> entry : this.values.entrySet()) {
            if (entry.getValue().intValue() > i9) {
                i9 = entry.getValue().intValue();
                arrayList.clear();
                arrayList.add(entry.getKey());
            } else if (entry.getValue().intValue() == i9) {
                arrayList.add(entry.getKey());
            }
        }
        return PDF417Common.toIntArray(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValue(int i9) {
        Integer num = this.values.get(Integer.valueOf(i9));
        if (num == null) {
            num = 0;
        }
        this.values.put(Integer.valueOf(i9), Integer.valueOf(num.intValue() + 1));
    }
}
