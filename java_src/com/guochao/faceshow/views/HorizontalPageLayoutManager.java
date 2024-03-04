package com.guochao.faceshow.views;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes4.dex */
public class HorizontalPageLayoutManager extends RecyclerView.LayoutManager {

    /* renamed from: f  reason: collision with root package name */
    int f26637f;

    /* renamed from: g  reason: collision with root package name */
    int f26638g;

    /* renamed from: k  reason: collision with root package name */
    int f26642k;

    /* renamed from: l  reason: collision with root package name */
    int f26643l;

    /* renamed from: m  reason: collision with root package name */
    int f26644m;

    /* renamed from: a  reason: collision with root package name */
    int f26632a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f26633b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f26634c = 0;

    /* renamed from: d  reason: collision with root package name */
    int f26635d = 0;

    /* renamed from: e  reason: collision with root package name */
    private SparseArray<Rect> f26636e = new SparseArray<>();

    /* renamed from: h  reason: collision with root package name */
    int f26639h = 0;

    /* renamed from: i  reason: collision with root package name */
    int f26640i = 0;

    /* renamed from: j  reason: collision with root package name */
    int f26641j = 0;

    public HorizontalPageLayoutManager(int i9, int i10) {
        this.f26637f = i9;
        this.f26638g = i10;
        this.f26642k = i9 * i10;
    }

    private void b(RecyclerView.State state) {
        this.f26639h = (state.getItemCount() / this.f26642k) + (state.getItemCount() % this.f26642k == 0 ? 0 : 1);
    }

    private int c() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int d() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void e(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout()) {
            return;
        }
        Rect rect = new Rect(getPaddingLeft() + this.f26635d, getPaddingTop(), ((getWidth() - getPaddingLeft()) - getPaddingRight()) + this.f26635d, (getHeight() - getPaddingTop()) - getPaddingBottom());
        Rect rect2 = new Rect();
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            rect2.left = getDecoratedLeft(childAt);
            rect2.top = getDecoratedTop(childAt);
            rect2.right = getDecoratedRight(childAt);
            rect2.bottom = getDecoratedBottom(childAt);
            if (!Rect.intersects(rect, rect2)) {
                removeAndRecycleView(childAt, recycler);
            }
        }
        for (int i10 = 0; i10 < getItemCount(); i10++) {
            if (Rect.intersects(rect, this.f26636e.get(i10))) {
                View viewForPosition = recycler.getViewForPosition(i10);
                addView(viewForPosition);
                measureChildWithMargins(viewForPosition, this.f26643l, this.f26644m);
                Rect rect3 = this.f26636e.get(i10);
                int i11 = rect3.left;
                int i12 = this.f26635d;
                layoutDecorated(viewForPosition, i11 - i12, rect3.top, rect3.right - i12, rect3.bottom);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return this.f26635d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        b(state);
        return this.f26639h * getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        this.f26635d = 0;
        this.f26634c = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
        } else if (state.isPreLayout()) {
        } else {
            this.f26640i = d() / this.f26638g;
            int c10 = c();
            int i9 = this.f26637f;
            int i10 = c10 / i9;
            this.f26641j = i10;
            this.f26643l = (this.f26638g - 1) * this.f26640i;
            this.f26644m = (i9 - 1) * i10;
            b(state);
            Log.i("zzz", "itemCount=" + getItemCount() + " state itemCount=" + state.getItemCount() + " pageSize=" + this.f26639h);
            this.f26633b = (this.f26639h + (-1)) * getWidth();
            detachAndScrapAttachedViews(recycler);
            int itemCount = getItemCount();
            int i11 = 0;
            while (i11 < this.f26639h) {
                int i12 = 0;
                while (i12 < this.f26637f) {
                    int i13 = 0;
                    while (true) {
                        int i14 = this.f26638g;
                        if (i13 >= i14) {
                            break;
                        }
                        int i15 = (this.f26642k * i11) + (i14 * i12) + i13;
                        if (i15 == itemCount) {
                            i12 = this.f26637f;
                            i11 = this.f26639h;
                            break;
                        }
                        View viewForPosition = recycler.getViewForPosition(i15);
                        addView(viewForPosition);
                        measureChildWithMargins(viewForPosition, this.f26643l, this.f26644m);
                        int decoratedMeasuredWidth = getDecoratedMeasuredWidth(viewForPosition);
                        int decoratedMeasuredHeight = getDecoratedMeasuredHeight(viewForPosition);
                        Rect rect = this.f26636e.get(i15);
                        if (rect == null) {
                            rect = new Rect();
                        }
                        int d10 = (d() * i11) + (this.f26640i * i13);
                        int i16 = this.f26641j * i12;
                        rect.set(d10, i16, decoratedMeasuredWidth + d10, decoratedMeasuredHeight + i16);
                        this.f26636e.put(i15, rect);
                        i13++;
                    }
                    i12++;
                }
                removeAndRecycleAllViews(recycler);
                i11++;
            }
            e(recycler, state);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        detachAndScrapAttachedViews(recycler);
        int i10 = this.f26635d;
        int i11 = i10 + i9;
        int i12 = this.f26633b;
        if (i11 > i12) {
            i9 = i12 - i10;
        } else if (i11 < 0) {
            i9 = 0 - i10;
        }
        this.f26635d = i10 + i9;
        offsetChildrenHorizontal(-i9);
        e(recycler, state);
        return i9;
    }
}
