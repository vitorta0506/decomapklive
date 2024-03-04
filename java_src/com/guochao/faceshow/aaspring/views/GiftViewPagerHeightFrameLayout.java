package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class GiftViewPagerHeightFrameLayout extends FrameLayout {
    public GiftViewPagerHeightFrameLayout(Context context) {
        super(context);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int size = (((View.MeasureSpec.getSize(i9) / 2) * 103) / 85) + DensityUtil.dp2px(getContext(), 16.0f);
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(size, View.MeasureSpec.getMode(i10)));
        setMeasuredDimension(getMeasuredWidth(), size);
    }

    public GiftViewPagerHeightFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GiftViewPagerHeightFrameLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
