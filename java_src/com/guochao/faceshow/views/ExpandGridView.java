package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
/* loaded from: classes4.dex */
public class ExpandGridView extends GridView {
    public ExpandGridView(Context context) {
        super(context);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public ExpandGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
