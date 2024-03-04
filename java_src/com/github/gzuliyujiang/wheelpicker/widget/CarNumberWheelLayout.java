package com.github.gzuliyujiang.wheelpicker.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import j1.a;
/* loaded from: classes.dex */
public class CarNumberWheelLayout extends LinkageWheelLayout {
    public CarNumberWheelLayout(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.gzuliyujiang.wheelpicker.widget.LinkageWheelLayout, com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    public void g(@NonNull Context context) {
        super.g(context);
        setData(new a());
    }

    public CarNumberWheelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CarNumberWheelLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
