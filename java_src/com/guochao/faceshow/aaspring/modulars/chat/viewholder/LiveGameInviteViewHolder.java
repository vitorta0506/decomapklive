package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveGameInviteMessage;
import com.guochao.faceshow.utils.LiveInfoUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveGameInviteViewHolder extends BaseMessageViewHolder {

    /* renamed from: a  reason: collision with root package name */
    LiveGameInviteMessage f17283a;
    @BindView
    ImageView mImageViewIcon;
    @BindView
    TextView mTextViewContent;
    @BindView
    TextView mTextViewGameName;

    public LiveGameInviteViewHolder(Context context, View view) {
        super(context, view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        LiveGameInviteMessage liveGameInviteMessage = (LiveGameInviteMessage) aVar2;
        this.f17283a = liveGameInviteMessage;
        this.mTextViewGameName.setText(liveGameInviteMessage.getGameName());
        this.mTextViewContent.setText(this.f17283a.getSummary());
        hc.a.j(this.mImageViewIcon, this.f17283a.getGameIcon());
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
        if (this.f17283a.isSelf()) {
            return;
        }
        LiveInfoUtils.getLiveInfoAndJumpIfNeed(this.f17283a.getLiveId(), this.mContext);
    }
}
