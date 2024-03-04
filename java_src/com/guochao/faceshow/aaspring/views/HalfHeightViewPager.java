package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class HalfHeightViewPager extends RtlViewPager {
    public HalfHeightViewPager(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.duolingo.open.rtlviewpager.RtlViewPager, androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec((((View.MeasureSpec.getSize(i9) / 2) * 105) / 87) + DensityUtil.dp2px(6.0f), View.MeasureSpec.getMode(i10)));
    }

    public HalfHeightViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
