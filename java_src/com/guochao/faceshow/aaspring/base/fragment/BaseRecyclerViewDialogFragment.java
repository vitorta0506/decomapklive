package com.guochao.faceshow.aaspring.base.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseRecyclerViewDialogFragment<T, VH extends BaseViewHolder> extends BaseDialogFragment implements d7.c<T, VH> {
    private View mEmptyView;
    d7.c<T, VH> mRecyclerViewDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f16133a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16134b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f16135c;

        a(BaseViewHolder baseViewHolder, int i9, Object obj) {
            this.f16133a = baseViewHolder;
            this.f16134b = i9;
            this.f16135c = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                BaseRecyclerViewDialogFragment.this.onItemClick(this.f16133a, this.f16134b, this.f16135c);
            } catch (Exception e10) {
                LogUtils.e("ItemClick", "onClick: ", e10);
            }
        }
    }

    private void ensureDelegate() {
        if (this.mRecyclerViewDelegate == null) {
            this.mRecyclerViewDelegate = new d7.d(this);
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

    public void notifyDataLoaded() {
        notifyDataLoaded(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull Object obj, int i9) {
        onBindViewHolder((BaseRecyclerViewDialogFragment<T, VH>) ((BaseViewHolder) obj), i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
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
        onViewRecycled((BaseRecyclerViewDialogFragment<T, VH>) ((BaseViewHolder) obj));
    }

    @Override // d7.a
    public void reload() {
        showProgressDialog("");
        ensureDelegate();
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

    public void showEmptyViewNoText() {
        if (getList().isEmpty()) {
            View view = this.mEmptyView;
            if (view == null) {
                View inflate = getLayoutInflater().inflate(R.layout.layout_live_list_empty, (ViewGroup) getRecyclerView(), false);
                this.mEmptyView = inflate;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) inflate.getLayoutParams();
                if (marginLayoutParams != null) {
                    marginLayoutParams.height = -1;
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    this.mEmptyView.setLayoutParams(marginLayoutParams);
                    View view2 = this.mEmptyView;
                    view2.setPadding(view2.getPaddingLeft(), DensityUtil.dp2px(getActivity(), 64.0f), this.mEmptyView.getRight(), this.mEmptyView.getPaddingBottom());
                }
            } else {
                removeHeaderView(view);
            }
            addHeaderView(this.mEmptyView, 1002);
            setFooterView(8);
            return;
        }
        View view3 = this.mEmptyView;
        if (view3 != null) {
            removeHeaderView(view3);
        }
    }

    @Override // d7.c
    public void notifyDataLoaded(boolean z10) {
        if (isDetached()) {
            return;
        }
        this.mRecyclerViewDelegate.notifyDataLoaded(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull Object obj, int i9, @NonNull List list) {
        onBindViewHolder((BaseRecyclerViewDialogFragment<T, VH>) ((BaseViewHolder) obj), i9, (List<Object>) list);
    }

    @Override // d7.a
    public void onBindViewHolder(@NonNull VH vh2, int i9) {
        T t10 = this.mRecyclerViewDelegate.getList().get(i9);
        vh2.itemView.setOnClickListener(new a(vh2, i9, t10));
        convertItem(vh2, i9, t10);
    }

    public void onBindViewHolder(@NonNull VH vh2, int i9, @NonNull List<Object> list) {
        onBindViewHolder((BaseRecyclerViewDialogFragment<T, VH>) vh2, i9);
    }
}
