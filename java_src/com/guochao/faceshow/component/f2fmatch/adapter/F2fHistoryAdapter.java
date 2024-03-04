package com.guochao.faceshow.component.f2fmatch.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.OneVOneHistoryBean;
import com.guochao.faceshow.aaspring.modulars.onevone.history.OneVOneHistoryHolder;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.views.LoadMoreView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "()V", "addLoadMoreModule", "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "baseQuickAdapter", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fHistoryAdapter extends BaseQuickAdapter<OneVOneHistoryBean.ListBean, BaseViewHolder> implements LoadMoreModule {
    public F2fHistoryAdapter() {
        super(R.layout.item_history_onevone, null, 2, null);
        getLoadMoreModule().setLoadMoreView(new LoadMoreView(false));
    }

    @Override // com.chad.library.adapter.base.module.LoadMoreModule
    @NotNull
    public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull BaseViewHolder holder, @NotNull OneVOneHistoryBean.ListBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        new OneVOneHistoryHolder(holder.itemView).c(item, holder.getAbsoluteAdapterPosition());
    }
}
