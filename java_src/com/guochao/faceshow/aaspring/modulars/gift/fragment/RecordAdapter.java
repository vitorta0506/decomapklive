package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.widget.ImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.GiftLuckRecordBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.views.LoadMoreTextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/RecordAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "()V", "addLoadMoreModule", "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "baseQuickAdapter", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RecordAdapter extends BaseQuickAdapter<GiftLuckRecordBean, BaseViewHolder> implements LoadMoreModule {
    public RecordAdapter() {
        super(R.layout.item_lucky_gift_record, null, 2, null);
        getLoadMoreModule().setLoadMoreView(new LoadMoreTextView(null, 1, null));
    }

    @Override // com.chad.library.adapter.base.module.LoadMoreModule
    @NotNull
    public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull BaseViewHolder holder, @NotNull GiftLuckRecordBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        com.bumptech.glide.c.u(getContext()).r(item.getGiftImg()).Q0((ImageView) holder.getView(R.id.goodIV));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.US);
        Long createTime = item.getCreateTime();
        holder.setText(R.id.timeTV, simpleDateFormat.format(createTime != null ? new Date(createTime.longValue()) : null));
        StringBuilder sb2 = new StringBuilder();
        sb2.append('X');
        sb2.append(item.getGiftNum());
        sb2.append(' ');
        holder.setText(R.id.countTV, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(item.getAwardNum());
        sb3.append(' ');
        holder.setText(R.id.diamondNumTV, sb3.toString());
        Integer winType = item.getWinType();
        if (winType != null && winType.intValue() == 0) {
            holder.setImageResource(R.id.winTypeIV, R.mipmap.lucky_gift_record_win);
        } else if (winType != null && winType.intValue() == 1) {
            holder.setImageResource(R.id.winTypeIV, R.mipmap.lucky_gift_record_win_big);
        } else if (winType != null && winType.intValue() == 2) {
            holder.setImageResource(R.id.winTypeIV, R.mipmap.lucky_gift_record_win_super);
        } else {
            holder.setImageResource(R.id.winTypeIV, R.mipmap.lucky_gift_record_win);
        }
    }
}
