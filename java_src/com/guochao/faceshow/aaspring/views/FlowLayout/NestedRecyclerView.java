package com.guochao.faceshow.aaspring.views.FlowLayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class NestedRecyclerView extends RecyclerView {
    public NestedRecyclerView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        FlowLayoutManager flowLayoutManager = (FlowLayoutManager) getLayoutManager();
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        if (mode != 1073741824) {
            size = getContext().getResources().getDisplayMetrics().widthPixels;
        }
        if (mode2 != 1073741824) {
            size2 = flowLayoutManager.d() + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, size2);
    }

    public NestedRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NestedRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
