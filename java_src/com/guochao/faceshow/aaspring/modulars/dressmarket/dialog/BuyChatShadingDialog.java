package com.guochao.faceshow.aaspring.modulars.dressmarket.dialog;

import android.view.View;
import android.view.ViewGroup;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class BuyChatShadingDialog extends BaseBuyDressDialog {
    @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BaseBuyDressDialog, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        ((ViewGroup.MarginLayoutParams) this.f17640g.getLayoutParams()).topMargin = DensityUtil.dp2px(0.0f);
        ((ViewGroup.MarginLayoutParams) ((ViewGroup) this.f17634a.getParent()).getLayoutParams()).topMargin = DensityUtil.dp2px(120.0f);
        ((ViewGroup.MarginLayoutParams) this.f17638e.getLayoutParams()).topMargin = DensityUtil.dp2px(36.0f);
        ((ViewGroup.MarginLayoutParams) this.f17638e.getLayoutParams()).width = DensityUtil.dp2px(67.0f);
        ((ViewGroup.MarginLayoutParams) this.f17638e.getLayoutParams()).height = DensityUtil.dp2px(38.0f);
        DressResponse.DressBean dressBean = this.f17642i;
        if (dressBean == null) {
            return;
        }
        int i9 = -1;
        if (dressBean.getIsVip() == 1) {
            i9 = R.mipmap.dress_up_vip;
        } else if (this.f17642i.getIsVip() == 2) {
            i9 = R.mipmap.dress_up_svip;
        } else if (this.f17642i.getTagType() == 1) {
            i9 = R.mipmap.dress_up_hot;
        } else if (this.f17642i.getTagType() == 2) {
            i9 = R.mipmap.dress_up_new;
        }
        this.f17634a.setText(this.f17642i.getName());
        if (i9 > 0) {
            this.f17637d.setImageResource(i9);
        } else {
            this.f17637d.setVisibility(8);
        }
    }
}
