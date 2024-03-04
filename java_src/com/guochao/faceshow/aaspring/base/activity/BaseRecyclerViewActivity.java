package com.guochao.faceshow.aaspring.base.activity;

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
import d7.c;
import d7.d;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseRecyclerViewActivity<T, VH extends BaseViewHolder> extends BaseActivity implements c<T, VH> {
    c<T, VH> mRecyclerViewDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f16066a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16067b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f16068c;

        a(BaseViewHolder baseViewHolder, int i9, Object obj) {
            this.f16066a = baseViewHolder;
            this.f16067b = i9;
            this.f16068c = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                BaseRecyclerViewActivity.this.onItemClick(this.f16066a, this.f16067b, this.f16068c);
            } catch (Exception unused) {
            }
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
        return getActivityConfig().k();
    }

    @Override // d7.c
    public boolean canRefresh() {
        return getActivityConfig().m();
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

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_base_recycler_view;
    }

    @Override // d7.a
    public List<T> getList() {
        return this.mRecyclerViewDelegate.getList();
    }

    @Override // d7.a
    public RecyclerView getRecyclerView() {
        return this.mRecyclerViewDelegate.getRecyclerView();
    }

    @Override // d7.c
    public SmartRefreshLayout getRefreshableLayout() {
        return this.mRecyclerViewDelegate.getRefreshableLayout();
    }

    @Override // d7.a
    public void hideFooterView() {
        this.mRecyclerViewDelegate.hideFooterView();
    }

    @Override // d7.a
    public void init(Context context, View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.mRecyclerViewDelegate.init(this, getWindow().getDecorView());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
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
        onBindViewHolder((BaseRecyclerViewActivity<T, VH>) ((BaseViewHolder) obj), i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        this.mRecyclerViewDelegate = new d(this);
        super.onCreate(bundle);
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
        onViewRecycled((BaseRecyclerViewActivity<T, VH>) ((BaseViewHolder) obj));
    }

    @Override // d7.a
    public void reload() {
        this.mRecyclerViewDelegate.reload();
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

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }

    @Override // d7.c
    public void notifyDataLoaded(boolean z10) {
        if (isDestroyed()) {
            return;
        }
        this.mRecyclerViewDelegate.notifyDataLoaded(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull Object obj, int i9, @NonNull List list) {
        onBindViewHolder((BaseRecyclerViewActivity<T, VH>) ((BaseViewHolder) obj), i9, (List<Object>) list);
    }

    @Override // d7.a
    public void onBindViewHolder(@NonNull VH vh2, int i9) {
        vh2.itemView.setOnClickListener(new a(vh2, i9, this.mRecyclerViewDelegate.getList().get(i9)));
        this.mRecyclerViewDelegate.onBindViewHolder((c<T, VH>) vh2, i9);
    }

    public void onBindViewHolder(@NonNull VH vh2, int i9, @NonNull List<Object> list) {
        onBindViewHolder((BaseRecyclerViewActivity<T, VH>) vh2, i9);
    }
}
