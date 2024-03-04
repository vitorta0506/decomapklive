package com.guochao.component.voiceliveroom.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.voiceliveroom.model.VoiceRoomInviteListModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.lib_core.R$mipmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomInviteListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;", "Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;", "()V", "convert", "", "holder", BaseConfig.ITEM, "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class VoiceRoomInviteListAdapter extends BaseQuickAdapter<VoiceRoomInviteListModel.VoiceRoomInviteUser, PeopleViewHolder> {
    public VoiceRoomInviteListAdapter() {
        super(R$layout.item_voice_room_invite, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull PeopleViewHolder holder, @NotNull VoiceRoomInviteListModel.VoiceRoomInviteUser item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        hc.a.p(holder.getBinding().headerIV, item.getUserImg(), R$mipmap.icon_head_default);
        holder.getBinding().nameTV.setText(item.getUserNickName());
        Integer nature = item.getNature();
        if (nature != null && nature.intValue() == 2) {
            holder.getBinding().lockIV.setVisibility(0);
        } else {
            holder.getBinding().lockIV.setVisibility(8);
        }
    }
}
