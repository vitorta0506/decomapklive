package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
/* loaded from: classes3.dex */
public class SearchTopicHolder extends BaseViewHolder {
    @BindView
    View divider;
    @BindView
    TextView joinNum;
    @BindView
    TextView topicName;

    public SearchTopicHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_search_topic, viewGroup, false));
    }

    public void c(UgcTopicBean ugcTopicBean, boolean z10) {
        this.topicName.setText(ugcTopicBean.getTopicName());
        int partakeTimes = ugcTopicBean.getPartakeTimes();
        if (partakeTimes < 0) {
            this.joinNum.setText(R.string.ugc_new_topic);
        } else {
            this.joinNum.setText(String.format("%s %s", Integer.valueOf(partakeTimes), this.itemView.getContext().getString(R.string.cy_topic_count)));
        }
        if (z10) {
            this.divider.setVisibility(8);
        } else {
            this.divider.setVisibility(0);
        }
    }
}
