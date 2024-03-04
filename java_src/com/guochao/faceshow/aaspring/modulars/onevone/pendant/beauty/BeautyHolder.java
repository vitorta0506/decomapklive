package com.guochao.faceshow.aaspring.modulars.onevone.pendant.beauty;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.pusher.beauty.BeautyItem;
/* loaded from: classes3.dex */
public class BeautyHolder extends BaseViewHolder {
    @BindView
    ImageView beautyIcon;
    @BindView
    TextView beautyName;

    public BeautyHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_beauty_face, viewGroup, false));
    }

    public void c(BeautyItem beautyItem, int i9) {
        this.beautyIcon.setImageResource(beautyItem.getIcon());
        this.beautyName.setText(beautyItem.getDisplayName());
    }
}
