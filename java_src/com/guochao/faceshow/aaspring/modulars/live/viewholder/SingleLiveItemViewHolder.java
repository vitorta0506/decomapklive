package com.guochao.faceshow.aaspring.modulars.live.viewholder;

import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import hc.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/SingleLiveItemViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "bindValue", "", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "position", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SingleLiveItemViewHolder extends BaseLiveItemViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleLiveItemViewHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.BaseLiveItemViewHolder
    public void bindValue(@Nullable RoomItemData roomItemData, int i9) {
        super.bindValue(roomItemData, i9);
        if (roomItemData != null) {
            ((ImageView) getView(R.id.lock)).setVisibility(roomItemData.isPrivateLiveRoom() ? 0 : 4);
            a.h((ImageView) getView(R.id.ivCover), roomItemData.getLiveImg(), R.mipmap.icon_live_liveloading);
            ImageView imageView = (ImageView) getView(R.id.lock);
            if (imageView != null) {
                imageView.setVisibility(Intrinsics.areEqual(roomItemData.getPrivateType(), "2") ? 0 : 8);
            }
            ImageView imageView2 = (ImageView) getView(R.id.icon_multi);
            imageView2.setVisibility(8);
            String liveLabel = roomItemData.getLiveLabel();
            if (liveLabel == null) {
                liveLabel = "";
            } else {
                Intrinsics.checkNotNullExpressionValue(liveLabel, "roomItemData.liveLabel ?: \"\"");
            }
            setLabel(liveLabel, imageView2);
        }
    }
}
