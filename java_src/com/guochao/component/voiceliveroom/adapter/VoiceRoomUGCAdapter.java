package com.guochao.component.voiceliveroom.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.load.resource.bitmap.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.databinding.ListItemVoiceRoomListBinding;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.LoadMoreView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import x0.f;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\fB\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014¨\u0006\r"}, d2 = {"Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "list", "", "(Ljava/util/List;)V", "convert", "", "holder", BaseConfig.ITEM, "VoiceRoomHolder", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomUGCAdapter extends BaseQuickAdapter<VoiceRoomInfoModel, VoiceRoomHolder> implements LoadMoreModule {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter$VoiceRoomHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
    public VoiceRoomUGCAdapter(@NotNull final List<VoiceRoomInfoModel> list) {
        super(R$layout.list_item_voice_room_list, list);
        Intrinsics.checkNotNullParameter(list, "list");
        getLoadMoreModule().setLoadMoreView(new LoadMoreView(true));
        getLoadMoreModule().setEnableLoadMore(false);
        getLoadMoreModule().setAutoLoadMore(false);
        getLoadMoreModule().setEnableLoadMoreIfNotFullPage(false);
        setOnItemClickListener(new f() { // from class: com.guochao.component.voiceliveroom.adapter.b
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomUGCAdapter.m262_init_$lambda0(VoiceRoomUGCAdapter.this, list, baseQuickAdapter, view, i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m262_init_$lambda0(VoiceRoomUGCAdapter this$0, List list, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        VoiceRoomMiniHelper.gotoVoiceRoom(this$0.getContext(), i9, new ArrayList(list));
    }

    @Override // com.chad.library.adapter.base.module.LoadMoreModule
    @NotNull
    public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull VoiceRoomHolder holder, @NotNull VoiceRoomInfoModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        hc.a.i((ImageView) holder.getView(R$id.cover), item.getCoverImgUrl(), -1, new y(DensityUtil.dp2px(10.0f)));
        ListItemVoiceRoomListBinding binding = holder.getBinding();
        binding.roomTitle.setText(item.getTitle());
        binding.memberCount.setText(String.valueOf(item.getVisitorCount()));
        hc.a.i(binding.countryLogo, item.getCountryImg(), -1, new y(DensityUtil.dp2px(4.0f)));
        List<String> tagNames = item.getTagNames();
        if (tagNames == null || tagNames.isEmpty()) {
            binding.tagsArea.setVisibility(8);
            return;
        }
        binding.tagsArea.setVisibility(0);
        TextView textView = binding.tagsArea;
        List<String> tagNames2 = item.getTagNames();
        textView.setText(tagNames2 != null ? tagNames2.get(0) : null);
    }
}
