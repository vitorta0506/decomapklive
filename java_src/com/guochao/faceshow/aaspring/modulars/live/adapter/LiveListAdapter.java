package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveBannerHeader;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveDiscoveryHeader;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveViewPagerFragment;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.MultiLiveNormalViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.MultiLiveTopViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.SingleLiveItemViewHolder;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.views.LoadMoreView;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011R\u0018\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "mCurrSelectTypeId", "", "(Landroidx/lifecycle/LifecycleOwner;I)V", "fragment", "Ljava/lang/ref/WeakReference;", "convert", "", "holder", BaseConfig.ITEM, "getList", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveListAdapter extends BaseMultiItemQuickAdapter<RoomItemData, BaseViewHolder> implements LoadMoreModule {
    @Nullable
    private WeakReference<LifecycleOwner> fragment;
    private final int mCurrSelectTypeId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveListAdapter(@NotNull LifecycleOwner lifecycleOwner, int i9) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        this.mCurrSelectTypeId = i9;
        getLoadMoreModule().setLoadMoreView(new LoadMoreView(true));
        this.fragment = new WeakReference<>(lifecycleOwner);
        addItemType(0, R.layout.live_room_list_item);
        addItemType(1, R.layout.live_list_multi_list_top_item);
        addItemType(2, R.layout.list_live_item_multi_live);
        addItemType(3, R.layout.header_live_discovery);
        addItemType(4, R.layout.header_live_banner);
    }

    @Override // com.chad.library.adapter.base.module.LoadMoreModule
    @NotNull
    public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    @NotNull
    public final List<RoomItemData> getList() {
        return getData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull BaseViewHolder holder, @NotNull RoomItemData item) {
        LifecycleOwner lifecycleOwner;
        WeakReference<LifecycleOwner> weakReference;
        LifecycleOwner lifecycleOwner2;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int itemType = item.getItemType();
        if (itemType == 0) {
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            SingleLiveItemViewHolder singleLiveItemViewHolder = new SingleLiveItemViewHolder(view);
            singleLiveItemViewHolder.setCheckTip(this.mCurrSelectTypeId == 1);
            singleLiveItemViewHolder.bindValue(item, holder.getAbsoluteAdapterPosition());
        } else if (itemType == 1) {
            View view2 = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view2, "holder.itemView");
            new MultiLiveTopViewHolder(view2).bindValue(item, holder.getAbsoluteAdapterPosition());
        } else if (itemType == 2) {
            View view3 = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view3, "holder.itemView");
            new MultiLiveNormalViewHolder(view3).bindValue(item, holder.getAbsoluteAdapterPosition());
        } else if (itemType != 3) {
            if (itemType == 4 && (weakReference = this.fragment) != null && (lifecycleOwner2 = weakReference.get()) != null && (lifecycleOwner2 instanceof LiveListFragment)) {
                LiveListFragment liveListFragment = (LiveListFragment) lifecycleOwner2;
                if (liveListFragment.getParentFragment() instanceof LiveViewPagerFragment) {
                    View view4 = holder.itemView;
                    Intrinsics.checkNotNullExpressionValue(view4, "holder.itemView");
                    new LiveBannerHeader(view4).updateDatas(liveListFragment.getMEventItemBeans(), liveListFragment.getMRankRows());
                }
            }
        } else {
            WeakReference<LifecycleOwner> weakReference2 = this.fragment;
            if (weakReference2 == null || (lifecycleOwner = weakReference2.get()) == null || !(lifecycleOwner instanceof LiveListFragment)) {
                return;
            }
            LiveDiscoveryHeader liveDiscoveryHeader = new LiveDiscoveryHeader(this.fragment, holder.itemView);
            LiveRoomPageData mData = ((LiveListFragment) lifecycleOwner).getMData();
            liveDiscoveryHeader.k(mData != null ? mData.getCountryLiveList() : null);
        }
    }
}
