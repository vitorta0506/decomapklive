package com.guochao.faceshow.aaspring.modulars.live.viewholder;

import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import hc.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "bindValue", "", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "position", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MultiLiveNormalViewHolder extends BaseLiveItemViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiLiveNormalViewHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.BaseLiveItemViewHolder
    public void bindValue(@Nullable RoomItemData roomItemData, int i9) {
        List<AudienceInformation> audienceList;
        super.bindValue(roomItemData, i9);
        ImageView imageView = (ImageView) getView(R.id.lock);
        Boolean valueOf = roomItemData != null ? Boolean.valueOf(roomItemData.isPrivateLiveRoom()) : null;
        Intrinsics.checkNotNull(valueOf);
        imageView.setVisibility(valueOf.booleanValue() ? 0 : 4);
        View view = getView(R.id.avatar_group_view);
        if (roomItemData != null && (audienceList = roomItemData.getAudienceList()) != null) {
            Intrinsics.checkNotNullExpressionValue(audienceList, "audienceList");
            AvatarGroupView avatarGroupView = (AvatarGroupView) view;
            if (avatarGroupView != null) {
                avatarGroupView.setAvatarList(audienceList);
            }
        }
        a.h((ImageView) getView(R.id.ivCover), roomItemData != null ? roomItemData.getLiveImg() : null, R.mipmap.icon_live_liveloading);
        setLabel(roomItemData.getLiveLabel(), (ImageView) getView(R.id.icon_multi));
    }
}
