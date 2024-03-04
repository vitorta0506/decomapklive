package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveShareMessage;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.utils.LiveInfoUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveShareViewHolder extends BaseMessageViewHolder {
    @BindView
    View mAddressArea;
    @BindView
    HeadPortraitView mHeadPortraitView;
    @BindView
    TextView mTextViewAddress;
    @BindView
    TextView mTextViewNickName;

    public LiveShareViewHolder(Context context, View view) {
        super(context, view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        LiveShareMessage liveShareMessage = (LiveShareMessage) aVar2;
        this.mHeadPortraitView.d(liveShareMessage);
        this.mTextViewNickName.setText(liveShareMessage.getNickName());
        this.mAddressArea.setVisibility(0);
        this.mTextViewAddress.setText(liveShareMessage.getAddress());
        hc.a.h((ImageView) this.itemView.findViewById(R.id.cover), liveShareMessage.getCover(), R.mipmap.icon_live_msg_error_place);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.delete)));
        if (isSelf() && aVar.getStatus() == 2 && !isErrorMsg()) {
            arrayList.add(new PopupMenuItem(2, this.mContext.getString(R.string.chat_pullback)));
        }
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        int id2 = popupMenuItem.getId();
        if (id2 == 1) {
            deleteCurrentMessage();
        } else if (id2 != 2) {
        } else {
            revokeCurrentMessage();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        super.onMessageContentClick(view, aVar);
        LiveShareMessage liveShareMessage = (LiveShareMessage) aVar;
        RoomItemData roomItemData = new RoomItemData();
        roomItemData.setLiveId(liveShareMessage.getLiveId());
        roomItemData.setUserId(liveShareMessage.getUserId());
        roomItemData.setLiveCoverImg(liveShareMessage.getCover());
        LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, view.getContext());
    }
}
