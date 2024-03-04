package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
/* loaded from: classes3.dex */
public class SearchIMTopTipHolder extends BaseViewHolder {
    public SearchIMTopTipHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_im_top_tip, viewGroup, false));
    }

    public void c(boolean z10) {
        View view = this.itemView;
        TextView textView = (TextView) view;
        if (z10) {
            textView.setText(view.getContext().getString(R.string.Contacts));
        } else {
            textView.setText(view.getContext().getString(R.string.chat_his));
        }
    }
}
