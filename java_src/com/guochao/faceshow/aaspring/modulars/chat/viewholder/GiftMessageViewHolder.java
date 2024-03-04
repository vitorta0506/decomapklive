package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.aaspring.utils.BaseCustomTarget;
import com.guochao.faceshow.facetoface.data.GiftData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class GiftMessageViewHolder extends BaseMessageViewHolder {
    public GiftMessageViewHolder(Context context, View view) {
        super(context, view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        TextView textView = (TextView) getView(R.id.count);
        GiftData.GiftItemData giftInfo = ((GiftMessage) aVar2).getGiftInfo();
        if (giftInfo == null) {
            return;
        }
        String valueOf = String.valueOf(giftInfo.numbers);
        textView.setText("X " + valueOf);
        ImageView imageView = (ImageView) getView(R.id.gift_icon);
        imageView.setImageBitmap(null);
        ic.a.c(imageView).f(imageView);
        ic.a.c(imageView).r(giftInfo.img).l(R.mipmap.icon_im_giftzhanwei).b0(R.mipmap.icon_im_giftzhanwei).i().M0(new BaseCustomTarget(imageView));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.delete)));
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        if (popupMenuItem.getId() != 1) {
            return;
        }
        deleteCurrentMessage();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        super.onMessageContentClick(view, aVar);
    }
}
