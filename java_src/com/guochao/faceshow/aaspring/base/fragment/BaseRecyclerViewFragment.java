package com.guochao.faceshow.aaspring.base.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseRecyclerViewFragment<T, VH extends BaseViewHolder> extends BaseFragment implements d7.c<T, VH> {
    d7.c<T, VH> mRecyclerViewDelegate;

    private void ensureDelegate() {
        if (this.mRecyclerViewDelegate == null) {
            this.mRecyclerViewDelegate = new d7.d(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$onBindViewHolder$0(BaseViewHolder baseViewHolder, int i9, Object obj, View view) {
        try {
            onItemClick(baseViewHolder, i9, obj);
        } catch (Exception unused) {
        }
    }

    @Override // d7.a
    public void addData(T t10) {
        this.mRecyclerViewDelegate.addData(t10);
    }

    @Override // d7.a
    public void addDatas(List<T> list) {
        this.mRecyclerViewDelegate.addDatas(list);
    }

    @Override // d7.c
    public void addFooterView(View view, int i9) {
        this.mRecyclerViewDelegate.addFooterView(view, i9);
    }

    @Override // d7.c
    public void addHeaderView(View view, int i9) {
        this.mRecyclerViewDelegate.addHeaderView(view, i9);
    }

    @Override // d7.c
    public boolean canLoadMore() {
        return getFragmentConfig().f();
    }

    @Override // d7.c
    public boolean canRefresh() {
        return getFragmentConfig().g();
    }

    @Override // d7.a
    public void clearAll() {
        this.mRecyclerViewDelegate.clearAll();
    }

    @Override // d7.a
    public abstract void convertItem(VH vh2, int i9, T t10);

    @Override // d7.c
    public int getCurrentPage() {
        return this.mRecyclerViewDelegate.getCurrentPage();
    }

    @Override // d7.c
    public int getDefaultPage() {
        return this.mRecyclerViewDelegate.getDefaultPage();
    }

    @Override // d7.c
    public View getEmptyView() {
        return this.mRecyclerViewDelegate.getEmptyView();
    }

    @Override // d7.a
    public View getFooterView() {
        return this.mRecyclerViewDelegate.getFooterView();
    }

    @Override // d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemCount() {
        return this.mRecyclerViewDelegate.getItemCount();
    }

    @Override // d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_base_recycler_view;
    }

    @Override // d7.a
    public List<T> getList() {
        d7.c<T, VH> cVar = this.mRecyclerViewDelegate;
        if (cVar == null) {
            return null;
        }
        return cVar.getList();
    }

    @Override // d7.a
    public RecyclerView getRecyclerView() {
        return this.mRecyclerViewDelegate.getRecyclerView();
    }

    @Override // d7.c
    public SmartRefreshLayout getRefreshableLayout() {
        ensureDelegate();
        return this.mRecyclerViewDelegate.getRefreshableLayout();
    }

    @Override // d7.a
    public void hideFooterView() {
        this.mRecyclerViewDelegate.hideFooterView();
    }

    @Override // d7.a
    public void init(Context context, View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        ensureDelegate();
        this.mRecyclerViewDelegate.init(getActivity(), view);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        ensureDelegate();
        loadData(this.mRecyclerViewDelegate.getDefaultPage());
    }

    @Override // d7.c
    public abstract void loadData(int i9);

    @Deprecated
    public void notifyDataLoaded() {
        notifyDataLoaded(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull Object obj, int i9) {
        onBindViewHolder((BaseRecyclerViewFragment<T, VH>) ((BaseViewHolder) obj), i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ensureDelegate();
    }

    @Override // d7.a
    public RecyclerView.Adapter<VH> onCreateAdapter(RecyclerView recyclerView) {
        return this.mRecyclerViewDelegate.onCreateAdapter(recyclerView);
    }

    @Override // d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new LinearLayoutManager(getActivity(), 1, false);
    }

    public abstract void onItemClick(VH vh2, int i9, T t10);

    public void onViewRecycled(@NonNull VH vh2) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public /* bridge */ /* synthetic */ void onViewRecycled(@NonNull Object obj) {
        onViewRecycled((BaseRecyclerViewFragment<T, VH>) ((BaseViewHolder) obj));
    }

    @Override // d7.a
    public void reload() {
        d7.c<T, VH> cVar = this.mRecyclerViewDelegate;
        if (cVar != null) {
            cVar.reload();
        }
    }

    @Override // d7.c
    public void removeFooterView(View view) {
        this.mRecyclerViewDelegate.removeFooterView(view);
    }

    @Override // d7.c
    public void removeHeaderView(View view) {
        this.mRecyclerViewDelegate.removeHeaderView(view);
    }

    @Override // d7.c
    public void setCurrentPage(int i9) {
        this.mRecyclerViewDelegate.setCurrentPage(i9);
    }

    @Override // d7.a
    public void setDatas(List<T> list) {
        this.mRecyclerViewDelegate.setDatas(list);
    }

    @Override // d7.c
    public void setDefaultPage(int i9) {
        this.mRecyclerViewDelegate.setDefaultPage(i9);
    }

    @Override // d7.a
    public void setFooterView(int i9) {
        this.mRecyclerViewDelegate.setFooterView(i9);
    }

    @Override // d7.c
    public void setShowRefreshOnInit(boolean z10) {
        this.mRecyclerViewDelegate.setShowRefreshOnInit(z10);
    }

    @Override // d7.a
    public void showEmptyView() {
        this.mRecyclerViewDelegate.showEmptyView();
    }

    @Override // d7.c
    public void notifyDataLoaded(boolean z10) {
        d7.c<T, VH> cVar;
        if (isDetached() || (cVar = this.mRecyclerViewDelegate) == null) {
            return;
        }
        cVar.notifyDataLoaded(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull Object obj, int i9, @NonNull List list) {
        onBindViewHolder((BaseRecyclerViewFragment<T, VH>) ((BaseViewHolder) obj), i9, (List<Object>) list);
    }

    @Override // d7.a
    public void onBindViewHolder(@NonNull final VH vh2, final int i9) {
        final T t10 = this.mRecyclerViewDelegate.getList().get(i9);
        vh2.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.base.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseRecyclerViewFragment.this.lambda$onBindViewHolder$0(vh2, i9, t10, view);
            }
        });
        convertItem(vh2, i9, t10);
    }

    public void onBindViewHolder(@NonNull VH vh2, int i9, @NonNull List<Object> list) {
        onBindViewHolder((BaseRecyclerViewFragment<T, VH>) vh2, i9);
    }
}
