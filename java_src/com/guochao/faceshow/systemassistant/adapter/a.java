package com.guochao.faceshow.systemassistant.adapter;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.guochao.faceshow.ImageBrowse.EditBigImageAct;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.Tool;
/* loaded from: classes4.dex */
class a extends UserBaseMessageHolder {

    /* renamed from: com.guochao.faceshow.systemassistant.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class View$OnClickListenerC0264a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.ImgInfoItem f26387a;

        View$OnClickListenerC0264a(AssistantMsgResult.ImgInfoItem imgInfoItem) {
            this.f26387a = imgInfoItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(a.this.f26382k, EditBigImageAct.class);
            intent.putExtra("image_url", this.f26387a.URL);
            intent.putExtra("image_height", this.f26387a.Height);
            intent.putExtra("image_width", this.f26387a.Width);
            a.this.f26382k.startActivity(intent);
        }
    }

    public a(View view) {
        super(view);
    }

    @Override // com.guochao.faceshow.systemassistant.adapter.UserBaseMessageHolder
    public void f(AssistantMsgResult.MsgData msgData, int i9) {
        super.f(msgData, i9);
        if (msgData.getImgInfoArrayFirstItem() != null) {
            Tool.setViewPadding(this.f26377f, 0);
            this.f26378g.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f26377f.getLayoutParams();
            if (msgData.isSelf) {
                layoutParams.rightMargin = ScreenTools.dip2px(12.0f);
            } else {
                layoutParams.leftMargin = ScreenTools.dip2px(12.0f);
            }
            AssistantMsgResult.ImgInfoItem imgInfoItem = msgData.ImageInfoArray.get(0);
            ImageView imageView = new ImageView(this.itemView.getContext());
            Tool.setViewPadding(imageView, ScreenTools.dip2px(3.0f));
            int screenWidth = ScreenTools.getScreenWidth() / 2;
            this.f26377f.addView(imageView, new RelativeLayout.LayoutParams(screenWidth, (imgInfoItem.Height * screenWidth) / imgInfoItem.Width));
            hc.a.s(imageView, imgInfoItem.URL, ScreenTools.dip2px(5.0f));
            imageView.setOnClickListener(new View$OnClickListenerC0264a(imgInfoItem));
        }
    }
}
