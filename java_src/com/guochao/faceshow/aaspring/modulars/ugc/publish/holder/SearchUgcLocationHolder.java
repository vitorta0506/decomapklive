package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.bean.UgcPoiBean;
import com.guochao.faceshow.utils.PushUtils;
/* loaded from: classes3.dex */
public class SearchUgcLocationHolder extends BaseViewHolder {
    @BindView
    ImageView checkStatus;
    @BindView
    ImageView ivUgcLocation;
    @BindView
    TextView primaryTitle;
    @BindView
    TextView secondaryTitle;

    public SearchUgcLocationHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_ugc_location, viewGroup, false));
    }

    public void c(UgcPoiBean.ListBean listBean, boolean z10) {
        if (PushUtils.CHAT_PUSH_TYPE.equals(listBean.getVicinity())) {
            this.primaryTitle.setText(this.itemView.getContext().getString(R.string.ugc_no_location));
            this.secondaryTitle.setVisibility(8);
        } else if (listBean.getIsCity() == 1) {
            this.primaryTitle.setText(listBean.getName());
            this.secondaryTitle.setVisibility(8);
        } else {
            this.secondaryTitle.setVisibility(0);
            this.primaryTitle.setText(listBean.getName());
            this.secondaryTitle.setText(listBean.getVicinity());
        }
        if (z10) {
            this.checkStatus.setVisibility(0);
        } else {
            this.checkStatus.setVisibility(4);
        }
    }
}
