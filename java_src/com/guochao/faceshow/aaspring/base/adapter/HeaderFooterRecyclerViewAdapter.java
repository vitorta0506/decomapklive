package com.guochao.faceshow.aaspring.base.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import e7.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class HeaderFooterRecyclerViewAdapter<T, VH extends BaseViewHolder> extends BaseRecyclerAdapter<T, VH> {

    /* renamed from: d  reason: collision with root package name */
    private List<a> f16089d;

    /* renamed from: e  reason: collision with root package name */
    private List<a> f16090e;

    /* renamed from: f  reason: collision with root package name */
    private RecyclerView.Adapter<VH> f16091f;

    public HeaderFooterRecyclerViewAdapter(Context context, List<T> list, BaseRecyclerAdapter.a<VH> aVar, RecyclerView.Adapter<VH> adapter) {
        super(context, list, aVar);
        this.f16089d = new ArrayList();
        this.f16090e = new ArrayList();
        this.f16091f = adapter;
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter
    public void a() {
        super.a();
        notifyDataSetChanged();
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: b */
    public void onViewRecycled(@NonNull VH vh2) {
        int adapterPosition = vh2.getAdapterPosition();
        if (adapterPosition >= this.f16089d.size() && adapterPosition < this.f16089d.size() + getList().size()) {
            this.f16091f.onViewRecycled(vh2);
        }
    }

    public void c(View view, int i9) {
        this.f16090e.add(new a(view, i9));
        notifyDataSetChanged();
    }

    public void d(View view, int i9) {
        this.f16089d.add(new a(view, i9));
        notifyDataSetChanged();
    }

    public boolean e(int i9) {
        return i9 < this.f16089d.size() || i9 >= getItemCount() - this.f16090e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onViewAttachedToWindow(@NonNull VH vh2) {
        super.onViewAttachedToWindow(vh2);
        ViewGroup.LayoutParams layoutParams = vh2.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            if (e(vh2.getAdapterPosition())) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            } else {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(false);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f16089d.size() + super.getItemCount() + this.f16090e.size();
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        if (i9 < this.f16089d.size()) {
            return this.f16089d.get(i9).b();
        }
        if (i9 >= this.f16089d.size() + getList().size()) {
            return this.f16090e.get((i9 - this.f16089d.size()) - getList().size()).b();
        }
        return this.f16091f.getItemViewType(i9 - this.f16089d.size());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
        onBindViewHolder((HeaderFooterRecyclerViewAdapter<T, VH>) ((BaseViewHolder) viewHolder), i9);
    }

    public void removeFooterView(View view) {
        Iterator<a> it = this.f16090e.iterator();
        while (it.hasNext()) {
            if (it.next().a() == view) {
                it.remove();
                return;
            }
        }
        notifyDataSetChanged();
    }

    public void removeHeaderView(View view) {
        Iterator<a> it = this.f16089d.iterator();
        while (it.hasNext()) {
            if (it.next().a() == view) {
                it.remove();
                return;
            }
        }
        notifyDataSetChanged();
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter
    public void onBindViewHolder(@NonNull VH vh2, int i9) {
        if (i9 >= this.f16089d.size() && i9 < this.f16089d.size() + getList().size()) {
            this.f16091f.onBindViewHolder(vh2, i9 - this.f16089d.size());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        for (int i10 = 0; i10 < this.f16089d.size(); i10++) {
            if (this.f16089d.get(i10).b() == i9) {
                View a10 = this.f16089d.get(i10).a();
                if (a10.getParent() != null) {
                    ((ViewGroup) a10.getParent()).removeView(a10);
                }
                return (VH) new BaseViewHolder(this.f16089d.get(i10).a());
            }
        }
        for (int i11 = 0; i11 < this.f16090e.size(); i11++) {
            if (this.f16090e.get(i11).b() == i9) {
                View a11 = this.f16090e.get(i11).a();
                if (a11.getParent() != null) {
                    ((ViewGroup) a11.getParent()).removeView(a11);
                }
                return (VH) new BaseViewHolder(this.f16090e.get(i11).a());
            }
        }
        return this.f16091f.onCreateViewHolder(viewGroup, i9);
    }
}
