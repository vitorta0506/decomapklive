package com.guochao.faceshow.aaspring.modulars.onevone.history;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.OneVOneHistoryBean;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J$\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bH\u0016J$\u0010\u0016\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u0017\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000b2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0019H\u0002J\b\u0010\u001a\u001a\u00020\bH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;", "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;", "Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;", "()V", "mEmptyView", "Landroid/view/View;", "convertItem", "", "holder", "position", "", BaseConfig.ITEM, "getOneVOneRecord", "pageNo", "initView", ViewHierarchyConstants.VIEW_KEY, "loadData", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onItemClick", "resetDatas", "list", "", "showEmptyView", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class F2fHistoryFragment extends BaseRecyclerViewFragment<OneVOneHistoryBean.ListBean, OneVOneHistoryHolder> {
    @Nullable
    private View mEmptyView;

    private final void getOneVOneRecord(final int i9) {
        post("tokens/1v1/getMatchList").v(Contants.USER_ID, getCurrentUser().getUserId()).v("limit", 20).v("page", Integer.valueOf(i9)).M(new c<OneVOneHistoryBean>() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.history.F2fHistoryFragment$getOneVOneRecord$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<OneVOneHistoryBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                F2fHistoryFragment.this.resetDatas(i9, new ArrayList());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable OneVOneHistoryBean oneVOneHistoryBean, @NotNull FaceCastBaseResponse<OneVOneHistoryBean> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (oneVOneHistoryBean == null) {
                    F2fHistoryFragment.this.resetDatas(i9, new ArrayList());
                    return;
                }
                List<OneVOneHistoryBean.ListBean> list = oneVOneHistoryBean.getList();
                if (list == null) {
                    F2fHistoryFragment.this.resetDatas(i9, new ArrayList());
                } else {
                    F2fHistoryFragment.this.resetDatas(i9, list);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetDatas(int i9, List<? extends OneVOneHistoryBean.ListBean> list) {
        boolean z10 = true;
        if (i9 == 1) {
            setDatas(list);
        } else {
            addDatas(list);
        }
        notifyDataLoaded((list == null || list.size() <= 0) ? false : false);
        showEmptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showEmptyView$lambda-1  reason: not valid java name */
    public static final void m528showEmptyView$lambda1(F2fHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.reload();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
        if (requireActivity() instanceof F2fMatchActivity) {
            getRefreshableLayout().f(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        removeHeaderView(this.mEmptyView);
        getOneVOneRecord(i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    public void onItemClick(@Nullable OneVOneHistoryHolder oneVOneHistoryHolder, int i9, @Nullable OneVOneHistoryBean.ListBean listBean) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            View view = this.mEmptyView;
            if (view == null) {
                View inflate = getLayoutInflater().inflate(R.layout.layout_live_list_empty, (ViewGroup) getRecyclerView(), false);
                this.mEmptyView = inflate;
                inflate.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.history.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        F2fHistoryFragment.m528showEmptyView$lambda1(F2fHistoryFragment.this, view2);
                    }
                });
                ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.height = -1;
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    inflate.setLayoutParams(marginLayoutParams);
                    inflate.setPadding(inflate.getPaddingLeft(), DensityUtil.dp2px(getActivity(), 64.0f), inflate.getRight(), inflate.getPaddingBottom());
                }
                inflate.setBackgroundResource(R.color.white);
            } else {
                removeHeaderView(view);
            }
            addHeaderView(this.mEmptyView, 1002);
            setFooterView(8);
            return;
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            removeHeaderView(view2);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void convertItem(@Nullable OneVOneHistoryHolder oneVOneHistoryHolder, int i9, @Nullable OneVOneHistoryBean.ListBean listBean) {
        Intrinsics.checkNotNull(oneVOneHistoryHolder);
        oneVOneHistoryHolder.c(listBean, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NotNull
    public OneVOneHistoryHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new OneVOneHistoryHolder(parent);
    }
}
