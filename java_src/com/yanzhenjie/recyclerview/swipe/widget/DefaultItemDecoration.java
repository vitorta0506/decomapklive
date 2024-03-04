package com.yanzhenjie.recyclerview.swipe.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class DefaultItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f37856a;

    /* renamed from: b  reason: collision with root package name */
    private int f37857b;

    /* renamed from: c  reason: collision with root package name */
    private int f37858c;

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f37859d = new ArrayList();

    public DefaultItemDecoration(@ColorInt int i9, int i10, int i11, int... iArr) {
        this.f37856a = new ColorDrawable(i9);
        this.f37857b = i10;
        this.f37858c = i11;
        for (int i12 : iArr) {
            this.f37859d.add(Integer.valueOf(i12));
        }
    }

    private int a(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return 1;
    }

    private boolean b(int i9, int i10) {
        return i10 == 1 || i9 % i10 == 0;
    }

    private boolean c(int i9, int i10) {
        return i9 < i10;
    }

    private boolean d(int i9, int i10, int i11) {
        if (i10 == 1) {
            return i9 + 1 == i11;
        }
        int i12 = i11 % i10;
        int i13 = ((i11 - i12) / i10) + (i12 > 0 ? 1 : 0);
        int i14 = i9 + 1;
        int i15 = i14 % i10;
        return i15 == 0 ? i13 == i14 / i10 : i13 == ((i14 - i15) / i10) + 1;
    }

    private boolean isLastColumn(int i9, int i10) {
        return i10 == 1 || (i9 + 1) % i10 == 0;
    }

    public void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        canvas.save();
        int childCount = recyclerView.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0 && !this.f37859d.contains(Integer.valueOf(recyclerView.getAdapter().getItemViewType(childAdapterPosition))) && !(childAt instanceof SwipeMenuRecyclerView.f)) {
                int left = childAt.getLeft();
                int bottom = childAt.getBottom();
                this.f37856a.setBounds(left, bottom, childAt.getRight(), this.f37858c + bottom);
                this.f37856a.draw(canvas);
            }
        }
        canvas.restore();
    }

    public void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        canvas.save();
        int childCount = recyclerView.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0 && !this.f37859d.contains(Integer.valueOf(recyclerView.getAdapter().getItemViewType(childAdapterPosition))) && !(childAt instanceof SwipeMenuRecyclerView.f)) {
                int right = childAt.getRight();
                int bottom = childAt.getBottom();
                this.f37856a.setBounds(right, childAt.getTop(), this.f37857b + right, bottom);
                this.f37856a.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition < 0) {
            return;
        }
        if (this.f37859d.contains(Integer.valueOf(recyclerView.getAdapter().getItemViewType(childAdapterPosition)))) {
            rect.set(0, 0, 0, 0);
            return;
        }
        int a10 = a(recyclerView);
        int itemCount = recyclerView.getAdapter().getItemCount();
        boolean c10 = c(childAdapterPosition, a10);
        boolean d10 = d(childAdapterPosition, a10, itemCount);
        boolean b10 = b(childAdapterPosition, a10);
        boolean isLastColumn = isLastColumn(childAdapterPosition, a10);
        if (a10 == 1) {
            if (c10) {
                rect.set(0, 0, 0, this.f37858c / 2);
            } else if (d10) {
                rect.set(0, this.f37858c / 2, 0, 0);
            } else {
                int i9 = this.f37858c;
                rect.set(0, i9 / 2, 0, i9 / 2);
            }
        } else if (c10 && b10) {
            rect.set(0, 0, this.f37857b / 2, this.f37858c / 2);
        } else if (c10 && isLastColumn) {
            rect.set(this.f37857b / 2, 0, 0, this.f37858c / 2);
        } else if (c10) {
            int i10 = this.f37857b;
            rect.set(i10 / 2, 0, i10 / 2, this.f37858c / 2);
        } else if (d10 && b10) {
            rect.set(0, this.f37858c / 2, this.f37857b / 2, 0);
        } else if (d10 && isLastColumn) {
            rect.set(this.f37857b / 2, this.f37858c / 2, 0, 0);
        } else if (d10) {
            int i11 = this.f37857b;
            rect.set(i11 / 2, this.f37858c / 2, i11 / 2, 0);
        } else if (b10) {
            int i12 = this.f37858c;
            rect.set(0, i12 / 2, this.f37857b / 2, i12 / 2);
        } else if (isLastColumn) {
            int i13 = this.f37858c;
            rect.set(this.f37857b / 2, i13 / 2, 0, i13 / 2);
        } else {
            int i14 = this.f37857b;
            int i15 = this.f37858c;
            rect.set(i14 / 2, i15 / 2, i14 / 2, i15 / 2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        drawHorizontal(canvas, recyclerView);
        drawVertical(canvas, recyclerView);
    }
}
