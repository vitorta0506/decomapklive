package com.guochao.faceshow.aaspring.modulars.onevone.history;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Keep;
import b8.e;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.OneVOneHistoryBean;
import com.guochao.faceshow.component.f2fmatch.adapter.F2fHistoryAdapter;
import com.guochao.faceshow.databinding.LayoutSingleRecyclerviewBinding;
import com.guochao.faceshow.utils.Contants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.f;
import x0.j;
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u001a\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "adapter", "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;", "page", "", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;)V", "getOneVOneRecord", "", "pageNo", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class F2fHistoryFragment2 extends GCCoreFragment {
    @NotNull
    private final F2fHistoryAdapter adapter;
    private int page = 1;
    public LayoutSingleRecyclerviewBinding viewBinding;

    public F2fHistoryFragment2() {
        F2fHistoryAdapter f2fHistoryAdapter = new F2fHistoryAdapter();
        f2fHistoryAdapter.getLoadMoreModule().setOnLoadMoreListener(new j() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.history.F2fHistoryFragment2$adapter$1$1
            @Override // x0.j
            public void onLoadMore() {
                int i9;
                int i10;
                int unused;
                F2fHistoryFragment2 f2fHistoryFragment2 = F2fHistoryFragment2.this;
                i9 = f2fHistoryFragment2.page;
                f2fHistoryFragment2.page = i9 + 1;
                unused = f2fHistoryFragment2.page;
                F2fHistoryFragment2 f2fHistoryFragment22 = F2fHistoryFragment2.this;
                i10 = f2fHistoryFragment22.page;
                f2fHistoryFragment22.loadData(i10);
            }
        });
        f2fHistoryAdapter.setOnItemClickListener(new f() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.history.F2fHistoryFragment2$adapter$1$2
            @Override // x0.f
            public void onItemClick(@NotNull BaseQuickAdapter<?, ?> adapter, @NotNull View view, int i9) {
                Intrinsics.checkNotNullParameter(adapter, "adapter");
                Intrinsics.checkNotNullParameter(view, "view");
            }
        });
        this.adapter = f2fHistoryAdapter;
    }

    private final void getOneVOneRecord(final int i9) {
        post("tokens/1v1/getMatchList").v(Contants.USER_ID, e.g().c().getUserId()).v("limit", 20).v("page", Integer.valueOf(i9)).M(new c<OneVOneHistoryBean>() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.history.F2fHistoryFragment2$getOneVOneRecord$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<OneVOneHistoryBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable OneVOneHistoryBean oneVOneHistoryBean, @NotNull FaceCastBaseResponse<OneVOneHistoryBean> baseResponse) {
                F2fHistoryAdapter f2fHistoryAdapter;
                List<OneVOneHistoryBean.ListBean> list;
                F2fHistoryAdapter f2fHistoryAdapter2;
                F2fHistoryAdapter f2fHistoryAdapter3;
                F2fHistoryAdapter f2fHistoryAdapter4;
                F2fHistoryAdapter f2fHistoryAdapter5;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (oneVOneHistoryBean != null && (list = oneVOneHistoryBean.getList()) != null) {
                    int i10 = i9;
                    F2fHistoryFragment2 f2fHistoryFragment2 = F2fHistoryFragment2.this;
                    if (i10 == 1) {
                        f2fHistoryAdapter5 = f2fHistoryFragment2.adapter;
                        f2fHistoryAdapter5.setNewInstance(list);
                    } else {
                        f2fHistoryAdapter2 = f2fHistoryFragment2.adapter;
                        f2fHistoryAdapter2.addData((Collection) list);
                        if (list.size() >= 20) {
                            f2fHistoryAdapter4 = f2fHistoryFragment2.adapter;
                            f2fHistoryAdapter4.getLoadMoreModule().loadMoreComplete();
                        } else {
                            f2fHistoryAdapter3 = f2fHistoryFragment2.adapter;
                            BaseLoadMoreModule.loadMoreEnd$default(f2fHistoryAdapter3.getLoadMoreModule(), false, 1, null);
                        }
                    }
                }
                f2fHistoryAdapter = F2fHistoryFragment2.this.adapter;
                if (f2fHistoryAdapter.getData().isEmpty()) {
                    F2fHistoryFragment2.this.getViewBinding().recyclerView.setVisibility(4);
                    F2fHistoryFragment2.this.getViewBinding().empty.getRoot().setVisibility(0);
                    return;
                }
                F2fHistoryFragment2.this.getViewBinding().recyclerView.setVisibility(0);
                F2fHistoryFragment2.this.getViewBinding().empty.getRoot().setVisibility(4);
            }
        });
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final LayoutSingleRecyclerviewBinding getViewBinding() {
        LayoutSingleRecyclerviewBinding layoutSingleRecyclerviewBinding = this.viewBinding;
        if (layoutSingleRecyclerviewBinding != null) {
            return layoutSingleRecyclerviewBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().recyclerView.setAdapter(this.adapter);
        loadData(this.page);
        getViewBinding().empty.getRoot().setVisibility(4);
        getViewBinding().empty.emptyText.setText(R.string.no_match_result);
    }

    public final void loadData(int i9) {
        getOneVOneRecord(i9);
    }

    public final void setViewBinding(@NotNull LayoutSingleRecyclerviewBinding layoutSingleRecyclerviewBinding) {
        Intrinsics.checkNotNullParameter(layoutSingleRecyclerviewBinding, "<set-?>");
        this.viewBinding = layoutSingleRecyclerviewBinding;
    }
}
