package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
/* loaded from: classes4.dex */
public class MeasureListView extends ListView {
    public MeasureListView(Context context) {
        super(context);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public MeasureListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MeasureListView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
