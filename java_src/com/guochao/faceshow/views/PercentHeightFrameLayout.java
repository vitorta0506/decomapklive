package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
/* loaded from: classes4.dex */
public class PercentHeightFrameLayout extends FrameLayout {
    public PercentHeightFrameLayout(Context context) {
        super(context);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i9) / 3.6d), BasicMeasure.EXACTLY));
    }

    public PercentHeightFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PercentHeightFrameLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
