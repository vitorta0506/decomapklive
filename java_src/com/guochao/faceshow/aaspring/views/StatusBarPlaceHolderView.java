package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
/* loaded from: classes3.dex */
public class StatusBarPlaceHolderView extends View {
    public StatusBarPlaceHolderView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        setMeasuredDimension(View.MeasureSpec.getSize(i9), StatusBarHelper.getStatusbarHeight(getContext()));
    }

    public StatusBarPlaceHolderView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StatusBarPlaceHolderView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
