package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.FaceMessage;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class FaceMessageViewHolder extends BaseMessageViewHolder {
    public FaceMessageViewHolder(Context context, View view) {
        super(context, view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    @RequiresApi(api = 23)
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        ImageView imageView = (ImageView) getView(R.id.img);
        ((ViewGroup) getView(R.id.message_content)).setBackground(null);
        FaceMessage faceMessage = (FaceMessage) aVar2;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (faceMessage.getFaceUrl().endsWith(".gif")) {
            layoutParams.width = DensityUtil.dp2px(this.mContext, 110.0f);
            layoutParams.height = DensityUtil.dp2px(this.mContext, 110.0f);
        } else {
            layoutParams.width = DensityUtil.dp2px(this.mContext, 28.0f);
            layoutParams.height = DensityUtil.dp2px(this.mContext, 28.0f);
        }
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        hc.a.j(imageView, faceMessage.getFaceUrl());
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
}
