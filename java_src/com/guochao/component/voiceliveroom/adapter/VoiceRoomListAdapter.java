package com.guochao.component.voiceliveroom.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.load.resource.bitmap.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$raw;
import com.guochao.component.liveroom.databinding.ListItemVoiceRoomListBinding;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.view.VoiceListLoadMoreView;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_base.R$mipmap;
import com.guochao.lib_service_center.util.service.TimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.d;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.f;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u000eB\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "list", "", "(Ljava/util/List;)V", "formatter", "Lcom/guochao/lib_service_center/util/service/TimeFormatter;", "convert", "", "holder", BaseConfig.ITEM, "VoiceRoomHolder", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class VoiceRoomListAdapter extends BaseQuickAdapter<VoiceRoomInfoModel, VoiceRoomHolder> implements LoadMoreModule {
    @Nullable
    private final TimeFormatter formatter;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomHolder extends BaseViewHolder {
        @NotNull
        private final ListItemVoiceRoomListBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VoiceRoomHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ListItemVoiceRoomListBinding bind = ListItemVoiceRoomListBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.binding = bind;
        }

        @NotNull
        public final ListItemVoiceRoomListBinding getBinding() {
            return this.binding;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomListAdapter(@NotNull final List<VoiceRoomInfoModel> list) {
        super(R$layout.list_item_voice_room_list, list);
        Intrinsics.checkNotNullParameter(list, "list");
        Object navigation = o.a.c().a(RouterPath.ROUTER_TIME_FORMATTER).navigation();
        this.formatter = navigation instanceof TimeFormatter ? (TimeFormatter) navigation : null;
        getLoadMoreModule().setLoadMoreView(new VoiceListLoadMoreView(true));
        getLoadMoreModule().setEnableLoadMore(true);
        getLoadMoreModule().setAutoLoadMore(false);
        setOnItemClickListener(new f() { // from class: com.guochao.component.voiceliveroom.adapter.a
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomListAdapter.m261_init_$lambda0(list, baseQuickAdapter, view, i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m261_init_$lambda0(List list, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(list, "$list");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "view.context");
        VoiceRoomMiniHelper.gotoVoiceRoom(context, i9, new ArrayList(list));
    }

    @Override // com.chad.library.adapter.base.module.LoadMoreModule
    @NotNull
    public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull VoiceRoomHolder holder, @NotNull VoiceRoomInfoModel item) {
        int coerceAtMost;
        IntRange until;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        hc.a.i((ImageView) holder.getView(R$id.cover), item.getCoverImgUrl(), -1, new y(DensityUtil.dp2px(10.0f)));
        ListItemVoiceRoomListBinding binding = holder.getBinding();
        binding.svga.playRaw(R$raw.voice_room_list_member_num);
        if (item.getNature() == 2) {
            binding.lockRL.setVisibility(0);
        } else {
            binding.lockRL.setVisibility(8);
        }
        binding.roomTitle.setText(item.getTitle());
        binding.memberCount.setText(String.valueOf(item.getVisitorCount()));
        hc.a.i(binding.countryLogo, item.getCountryImg(), R$drawable.ic_voice_room_list_default_cover, new y(DensityUtil.dp2px(4.0f)));
        List<String> tagNames = item.getTagNames();
        boolean z10 = true;
        String str = null;
        if (tagNames == null || tagNames.isEmpty()) {
            binding.tagsArea.setVisibility(8);
        } else {
            List<String> tagNames2 = item.getTagNames();
            String str2 = tagNames2 != null ? tagNames2.get(0) : null;
            if (str2 == null || str2.length() == 0) {
                binding.tagsArea.setVisibility(8);
            } else {
                TextView textView = binding.tagsArea;
                List<String> tagNames3 = item.getTagNames();
                textView.setText(tagNames3 != null ? tagNames3.get(0) : null);
                binding.tagsArea.setVisibility(0);
            }
        }
        binding.seatArea.removeAllViews();
        List<VoiceRoomUserOnSeatModel> microList = item.getMicroList();
        if (microList != null) {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(5, microList.size());
            until = RangesKt___RangesKt.until(0, coerceAtMost);
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                AppCompatImageView appCompatImageView = new AppCompatImageView(binding.getRoot().getContext());
                appCompatImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DensityUtil.dp2px(25.0f), DensityUtil.dp2px(25.0f));
                if (nextInt > 0) {
                    layoutParams.setMarginStart(DensityUtil.dp2px(-4.0f));
                }
                binding.seatArea.addView(appCompatImageView, layoutParams);
                hc.a.i(appCompatImageView, microList.get(nextInt).getSmallAvatarUrl(), R$mipmap.default_head, new d(DensityUtil.dp2px(2.0f), -1, true));
            }
        }
        AppCompatImageView appCompatImageView2 = new AppCompatImageView(binding.getRoot().getContext());
        appCompatImageView2.setImageResource(com.guochao.component.liveroom.R$mipmap.ic_voice_room_list_add_icon);
        appCompatImageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(DensityUtil.dp2px(25.0f), DensityUtil.dp2px(25.0f));
        if (!(microList == null || microList.isEmpty())) {
            layoutParams2.setMarginStart(DensityUtil.dp2px(-4.0f));
        }
        binding.seatArea.addView(appCompatImageView2, layoutParams2);
        if (microList != null && !microList.isEmpty()) {
            z10 = false;
        }
        if (z10) {
            binding.micCountArea.setVisibility(8);
            binding.onlineTime.setVisibility(0);
            TextView textView2 = binding.onlineTime;
            TimeFormatter timeFormatter = this.formatter;
            if (timeFormatter != null) {
                long currentTimeMillis = System.currentTimeMillis();
                Long offlineTime = item.getOfflineTime();
                str = timeFormatter.getVoiceRoomOfflineTime(currentTimeMillis - (offlineTime != null ? offlineTime.longValue() : 0L));
            }
            textView2.setText(str);
            return;
        }
        binding.micCountArea.setVisibility(0);
        binding.onlineTime.setVisibility(8);
    }
}
