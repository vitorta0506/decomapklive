package com.beloo.widget.chipslayoutmanager;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;
import u.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private u.g f4089a;

    /* renamed from: b  reason: collision with root package name */
    private com.beloo.widget.chipslayoutmanager.a f4090b;

    /* renamed from: c  reason: collision with root package name */
    private m f4091c;

    /* renamed from: d  reason: collision with root package name */
    private int f4092d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private SparseArray<View> f4093a = new SparseArray<>();

        /* renamed from: b  reason: collision with root package name */
        private SparseArray<View> f4094b = new SparseArray<>();

        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SparseArray<View> c() {
            return this.f4093a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SparseArray<View> d() {
            return this.f4094b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int e() {
            return this.f4093a.size() + this.f4094b.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(u.g gVar, com.beloo.widget.chipslayoutmanager.a aVar, m mVar) {
        this.f4089a = gVar;
        this.f4090b = aVar;
        this.f4091c = mVar;
    }

    @Override // com.beloo.widget.chipslayoutmanager.e
    public int a(RecyclerView.Recycler recycler) {
        int convertPreLayoutPositionToPostLayout;
        Integer num = Integer.MAX_VALUE;
        Integer num2 = Integer.MIN_VALUE;
        Iterator<View> it = this.f4090b.iterator();
        while (true) {
            boolean z10 = false;
            if (!it.hasNext()) {
                break;
            }
            View next = it.next();
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) next.getLayoutParams();
            if (!layoutParams.isItemRemoved() && ((convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(layoutParams.getViewLayoutPosition())) < this.f4089a.d().intValue() || convertPreLayoutPositionToPostLayout > this.f4089a.r().intValue())) {
                z10 = true;
            }
            if (layoutParams.isItemRemoved() || z10) {
                this.f4092d++;
                num = Integer.valueOf(Math.min(num.intValue(), this.f4091c.o(next)));
                num2 = Integer.valueOf(Math.max(num2.intValue(), this.f4091c.b(next)));
            }
        }
        if (num.intValue() != Integer.MAX_VALUE) {
            return num2.intValue() - num.intValue();
        }
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.e
    public int b() {
        return this.f4092d;
    }

    @Override // com.beloo.widget.chipslayoutmanager.e
    public a c(RecyclerView.Recycler recycler) {
        List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
        a aVar = new a();
        for (RecyclerView.ViewHolder viewHolder : scrapList) {
            View view = viewHolder.itemView;
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (!layoutParams.isItemRemoved()) {
                if (layoutParams.getViewAdapterPosition() < this.f4089a.d().intValue()) {
                    aVar.f4093a.put(layoutParams.getViewAdapterPosition(), view);
                } else if (layoutParams.getViewAdapterPosition() > this.f4089a.r().intValue()) {
                    aVar.f4094b.put(layoutParams.getViewAdapterPosition(), view);
                }
            }
        }
        return aVar;
    }

    @Override // com.beloo.widget.chipslayoutmanager.e
    public void reset() {
        this.f4092d = 0;
    }
}
