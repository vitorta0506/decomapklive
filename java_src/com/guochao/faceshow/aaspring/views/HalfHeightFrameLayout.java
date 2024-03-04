package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class HalfHeightFrameLayout extends FrameLayout {
    public HalfHeightFrameLayout(Context context) {
        super(context);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(((View.MeasureSpec.getSize(i9) * 50) / 100) + DensityUtil.dp2px(getContext(), 16.0f), View.MeasureSpec.getMode(i10)));
    }

    public HalfHeightFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HalfHeightFrameLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
