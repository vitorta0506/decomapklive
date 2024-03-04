package com.guochao.faceshow.aaspring.modulars.dressmarket.holder;

import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressSpecBean;
import q7.a;
/* loaded from: classes3.dex */
public class SpecHolder extends BaseViewHolder {
    public SpecHolder(View view, View.OnClickListener onClickListener) {
        super(view);
        view.setOnClickListener(onClickListener);
    }

    public void c(DressSpecBean dressSpecBean) {
        this.itemView.setSelected(dressSpecBean.isSelect());
        TextView textView = (TextView) this.itemView.findViewById(R.id.price_off);
        if (dressSpecBean.getPercent() == 0.0f) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            if (a.e().j()) {
                textView.setBackgroundResource(R.drawable.bg_dress_up_spec_off_rtl);
            } else {
                textView.setBackgroundResource(R.drawable.bg_dress_up_spec_off);
            }
            textView.setText(dressSpecBean.getOffContent(textView.getContext()));
        }
        dressSpecBean.setPriceSpecContent((TextView) this.itemView.findViewById(R.id.text_view));
    }
}
