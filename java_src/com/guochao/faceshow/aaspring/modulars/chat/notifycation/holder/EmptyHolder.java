package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes3.dex */
public class EmptyHolder extends BaseViewHolder {
    public EmptyHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_empty_view, viewGroup, false));
        ((LinearLayout) this.itemView).setGravity(49);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.itemView.getLayoutParams();
        int screenHeight = ScreenTools.getScreenHeight();
        marginLayoutParams.height = screenHeight;
        marginLayoutParams.topMargin = (int) (screenHeight * 0.2f);
    }

    public EmptyHolder(ViewGroup viewGroup, String str) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_empty_view, viewGroup, false));
        TextView textView = (TextView) this.itemView.findViewById(R.id.empty_text);
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
        ((LinearLayout) this.itemView).setGravity(49);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.itemView.getLayoutParams();
        int screenHeight = ScreenTools.getScreenHeight();
        marginLayoutParams.height = screenHeight;
        marginLayoutParams.topMargin = (int) (screenHeight * 0.2f);
    }
}
