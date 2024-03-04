package com.guochao.faceshow.aaspring.modulars.onevone.pendant.filter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.pusher.beauty.FilterItem;
import hc.a;
/* loaded from: classes3.dex */
public class FilterItemHolder extends BaseViewHolder {
    @BindView
    TextView mTextViewName;
    @BindView
    ImageView motionPannelItemImg;
    @BindView
    View selectItem;

    public FilterItemHolder(Context context, ViewGroup viewGroup) {
        super(LayoutInflater.from(context).inflate(R.layout.item_filter, viewGroup, false));
    }

    public void c(boolean z10) {
        if (z10) {
            this.selectItem.setVisibility(0);
        } else {
            this.selectItem.setVisibility(8);
        }
    }

    public void d(int i9, FilterItem filterItem) {
        a.h(this.motionPannelItemImg, filterItem.getIcon(), R.mipmap.beauty_no);
        TextView textView = this.mTextViewName;
        textView.setText("F" + (getAbsoluteAdapterPosition() + 1));
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.motion_pannel_item_img) {
            return;
        }
        this.itemView.callOnClick();
    }
}
