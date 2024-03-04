package com.github.gzuliyujiang.wheelview.widget;

import android.content.Context;
import android.util.AttributeSet;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class NumberWheelView extends WheelView {
    public NumberWheelView(Context context) {
        super(context);
    }

    public void K(int i9, int i10, int i11) {
        int min = Math.min(i9, i10);
        int max = Math.max(i9, i10);
        ArrayList arrayList = new ArrayList((max - min) / i11);
        while (min <= max) {
            arrayList.add(Integer.valueOf(min));
            min += i11;
        }
        super.setData(arrayList);
    }

    @Override // com.github.gzuliyujiang.wheelview.widget.WheelView
    @Deprecated
    public void setData(List<?> list) {
        throw new UnsupportedOperationException("Use setRange instead");
    }

    @Override // com.github.gzuliyujiang.wheelview.widget.WheelView
    protected List<?> u() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 1; i9 <= 10; i9++) {
            arrayList.add(Integer.valueOf(i9));
        }
        return arrayList;
    }

    public NumberWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NumberWheelView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
