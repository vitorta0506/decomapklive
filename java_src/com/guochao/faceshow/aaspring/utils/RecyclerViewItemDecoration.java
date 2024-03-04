package com.guochao.faceshow.aaspring.utils;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class RecyclerViewItemDecoration extends RecyclerView.ItemDecoration {
    private int mDividerSize;
    private int mOrientation;

    public RecyclerViewItemDecoration(@Dimension float f10, int i9) {
        this.mDividerSize = DensityUtil.dp2px(f10);
        this.mOrientation = i9;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        int viewAdapterPosition = layoutParams.getViewAdapterPosition();
        int i9 = this.mOrientation;
        if (i9 != 0) {
            if (i9 != 1) {
                return;
            }
            rect.set(0, 0, 0, this.mDividerSize);
        } else if (viewAdapterPosition == itemCount - 1) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(0, 0, this.mDividerSize, 0);
        }
    }
}
