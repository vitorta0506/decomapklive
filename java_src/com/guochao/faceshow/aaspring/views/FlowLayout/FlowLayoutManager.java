package com.guochao.faceshow.aaspring.views.FlowLayout;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class FlowLayoutManager extends RecyclerView.LayoutManager {

    /* renamed from: m  reason: collision with root package name */
    private static final String f23662m = "FlowLayoutManager";

    /* renamed from: b  reason: collision with root package name */
    protected int f23664b;

    /* renamed from: c  reason: collision with root package name */
    protected int f23665c;

    /* renamed from: e  reason: collision with root package name */
    private int f23667e;

    /* renamed from: f  reason: collision with root package name */
    private int f23668f;

    /* renamed from: g  reason: collision with root package name */
    private int f23669g;

    /* renamed from: h  reason: collision with root package name */
    private int f23670h;

    /* renamed from: a  reason: collision with root package name */
    final FlowLayoutManager f23663a = this;

    /* renamed from: d  reason: collision with root package name */
    protected int f23666d = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f23671i = 0;

    /* renamed from: j  reason: collision with root package name */
    private b f23672j = new b();

    /* renamed from: k  reason: collision with root package name */
    private List<b> f23673k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private SparseArray<Rect> f23674l = new SparseArray<>();

    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        int f23675a;

        /* renamed from: b  reason: collision with root package name */
        View f23676b;

        /* renamed from: c  reason: collision with root package name */
        Rect f23677c;

        public a(int i9, View view, Rect rect) {
            this.f23675a = i9;
            this.f23676b = view;
            this.f23677c = rect;
        }

        public void a(Rect rect) {
            this.f23677c = rect;
        }
    }

    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        float f23679a;

        /* renamed from: b  reason: collision with root package name */
        float f23680b;

        /* renamed from: c  reason: collision with root package name */
        List<a> f23681c = new ArrayList();

        public b() {
        }

        public void a(a aVar) {
            this.f23681c.add(aVar);
        }

        public void b(float f10) {
            this.f23679a = f10;
        }

        public void c(float f10) {
            this.f23680b = f10;
        }
    }

    public FlowLayoutManager() {
        setAutoMeasureEnabled(true);
    }

    private void b(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout() || getItemCount() == 0) {
            return;
        }
        new Rect(getPaddingLeft(), getPaddingTop() + this.f23671i, getWidth() - getPaddingRight(), this.f23671i + (getHeight() - getPaddingBottom()));
        for (int i9 = 0; i9 < this.f23673k.size(); i9++) {
            b bVar = this.f23673k.get(i9);
            float f10 = bVar.f23679a;
            List<a> list = bVar.f23681c;
            for (int i10 = 0; i10 < list.size(); i10++) {
                View view = list.get(i10).f23676b;
                measureChildWithMargins(view, 0, 0);
                addView(view);
                Rect rect = list.get(i10).f23677c;
                int i11 = rect.left;
                int i12 = rect.top;
                int i13 = this.f23671i;
                layoutDecoratedWithMargins(view, i11, i12 - i13, rect.right, rect.bottom - i13);
            }
        }
    }

    private void c() {
        List<a> list = this.f23672j.f23681c;
        for (int i9 = 0; i9 < list.size(); i9++) {
            a aVar = list.get(i9);
            View view = aVar.f23676b;
            int position = getPosition(view);
            b bVar = this.f23672j;
            if (this.f23674l.get(position).top < bVar.f23679a + ((bVar.f23680b - list.get(i9).f23675a) / 2.0f)) {
                Rect rect = this.f23674l.get(position);
                if (rect == null) {
                    rect = new Rect();
                }
                int i10 = this.f23674l.get(position).left;
                b bVar2 = this.f23672j;
                int i11 = (int) (bVar2.f23679a + ((bVar2.f23680b - list.get(i9).f23675a) / 2.0f));
                int i12 = this.f23674l.get(position).right;
                b bVar3 = this.f23672j;
                rect.set(i10, i11, i12, (int) (bVar3.f23679a + ((bVar3.f23680b - list.get(i9).f23675a) / 2.0f) + getDecoratedMeasuredHeight(view)));
                this.f23674l.put(position, rect);
                aVar.a(rect);
                list.set(i9, aVar);
            }
        }
        b bVar4 = this.f23672j;
        bVar4.f23681c = list;
        this.f23673k.add(bVar4);
        this.f23672j = new b();
    }

    private int e() {
        return (this.f23663a.getHeight() - this.f23663a.getPaddingBottom()) - this.f23663a.getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    public int d() {
        return this.f23666d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Log.d(f23662m, "onLayoutChildren");
        this.f23666d = 0;
        int i9 = this.f23668f;
        this.f23672j = new b();
        this.f23673k.clear();
        this.f23674l.clear();
        removeAllViews();
        if (getItemCount() == 0) {
            detachAndScrapAttachedViews(recycler);
            this.f23671i = 0;
        } else if (getChildCount() != 0 || !state.isPreLayout()) {
            detachAndScrapAttachedViews(recycler);
            if (getChildCount() == 0) {
                this.f23664b = getWidth();
                this.f23665c = getHeight();
                this.f23667e = getPaddingLeft();
                this.f23669g = getPaddingRight();
                this.f23668f = getPaddingTop();
                this.f23670h = (this.f23664b - this.f23667e) - this.f23669g;
            }
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < getItemCount(); i12++) {
                Log.d(f23662m, "index:" + i12);
                View viewForPosition = recycler.getViewForPosition(i12);
                if (8 != viewForPosition.getVisibility()) {
                    measureChildWithMargins(viewForPosition, 0, 0);
                    int decoratedMeasuredWidth = getDecoratedMeasuredWidth(viewForPosition);
                    int decoratedMeasuredHeight = getDecoratedMeasuredHeight(viewForPosition);
                    int i13 = i10 + decoratedMeasuredWidth;
                    if (i13 <= this.f23670h) {
                        int i14 = this.f23667e + i10;
                        Rect rect = this.f23674l.get(i12);
                        if (rect == null) {
                            rect = new Rect();
                        }
                        rect.set(i14, i9, decoratedMeasuredWidth + i14, i9 + decoratedMeasuredHeight);
                        this.f23674l.put(i12, rect);
                        i11 = Math.max(i11, decoratedMeasuredHeight);
                        this.f23672j.a(new a(decoratedMeasuredHeight, viewForPosition, rect));
                        this.f23672j.b(i9);
                        this.f23672j.c(i11);
                        i10 = i13;
                    } else {
                        c();
                        i9 += i11;
                        this.f23666d += i11;
                        int i15 = this.f23667e;
                        Rect rect2 = this.f23674l.get(i12);
                        if (rect2 == null) {
                            rect2 = new Rect();
                        }
                        rect2.set(i15, i9, i15 + decoratedMeasuredWidth, i9 + decoratedMeasuredHeight);
                        this.f23674l.put(i12, rect2);
                        this.f23672j.a(new a(decoratedMeasuredHeight, viewForPosition, rect2));
                        this.f23672j.b(i9);
                        this.f23672j.c(decoratedMeasuredHeight);
                        i10 = decoratedMeasuredWidth;
                        i11 = decoratedMeasuredHeight;
                    }
                    if (i12 == getItemCount() - 1) {
                        c();
                        this.f23666d += i11;
                    }
                }
            }
            this.f23666d = Math.max(this.f23666d, e());
            Log.d(f23662m, "onLayoutChildren totalHeight:" + this.f23666d);
            b(recycler, state);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Log.d("TAG", "totalHeight:" + this.f23666d);
        int i10 = this.f23671i;
        if (i10 + i9 < 0) {
            i9 = -i10;
        } else if (i10 + i9 > this.f23666d - e()) {
            i9 = (this.f23666d - e()) - this.f23671i;
        }
        this.f23671i += i9;
        offsetChildrenVertical(-i9);
        b(recycler, state);
        return i9;
    }
}
