package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.DressPresentMessage;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.MyDressUpActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DressPresentViewHolder extends BaseMessageViewHolder {
    @BindView
    ImageView mImageView;
    @BindView
    TextView mTextViewInfo;
    @BindView
    TextView mTextViewTitle;

    public DressPresentViewHolder(Context context, View view) {
        super(context, view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        DressPresentMessage dressPresentMessage = (DressPresentMessage) aVar2;
        c.v(this.mImageView).r(dressPresentMessage.getDressIconUrl()).b0(R.mipmap.f_dress_empty).Q0(this.mImageView);
        int dressType = dressPresentMessage.getDressType();
        if (dressType == 1) {
            this.mTextViewTitle.setText(R.string.dress_market_avatar_present);
            this.mTextViewInfo.setText(R.string.dress_market_avatar_present2);
        } else if (dressType != 2) {
            this.mTextViewTitle.setText(R.string.dress_market_zuojia_present);
            this.mTextViewInfo.setText(R.string.dress_market_zuojia_present2);
        } else {
            this.mTextViewTitle.setText(R.string.dress_market_mask_present);
            this.mTextViewInfo.setText(R.string.dress_market_mask_present2);
        }
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
        if (aVar.isSelf() || !(aVar instanceof DressPresentMessage)) {
            return;
        }
        MyDressUpActivity.k0(view.getContext(), ((DressPresentMessage) aVar).getDressType());
    }
}
