package com.guochao.faceshow.aaspring.views;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* loaded from: classes3.dex */
public class GridDivider extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private int f23709a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f23710b;

    private void a(Canvas canvas, RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i10 = this.f23709a + bottom;
            Paint paint = this.f23710b;
            if (paint != null) {
                canvas.drawRect(left, bottom, right, i10, paint);
            }
            int top = childAt.getTop();
            int bottom2 = childAt.getBottom() + this.f23709a;
            int right2 = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int i11 = this.f23709a + right2;
            Paint paint2 = this.f23710b;
            if (paint2 != null) {
                canvas.drawRect(right2, top, i11, bottom2, paint2);
            }
        }
    }

    private int b(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return -1;
    }

    private boolean c(RecyclerView recyclerView, int i9, int i10, int i11) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            int i12 = i11 % i10;
            int i13 = i11 / i10;
            if (i12 != 0) {
                i13++;
            }
            return i13 == (i9 / i10) + 1;
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1) {
                if (i9 >= i11 - (i11 % i10)) {
                    return true;
                }
            } else if ((i9 + 1) % i10 == 0) {
                return true;
            }
        }
        return false;
    }

    private boolean d(RecyclerView recyclerView, int i9, int i10, int i11) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            int i12 = i11 % i10;
            int i13 = i11 / i10;
            return (i9 / i10) + 1 == 1;
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1) {
                if (i9 >= i11 - (i11 % i10)) {
                    return true;
                }
            } else if ((i9 + 1) % i10 == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int viewLayoutPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        int b10 = b(recyclerView);
        int itemCount = recyclerView.getAdapter().getItemCount();
        c(recyclerView, viewLayoutPosition, b10, itemCount);
        boolean d10 = d(recyclerView, viewLayoutPosition, b10, itemCount);
        int i9 = b10 - 1;
        int i10 = this.f23709a;
        int i11 = (i9 * i10) / b10;
        int i12 = (viewLayoutPosition % b10) * (i10 - i11);
        rect.set(i12, d10 ? (i9 * i10) / b10 : 0, i11 - i12, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        a(canvas, recyclerView);
    }
}
