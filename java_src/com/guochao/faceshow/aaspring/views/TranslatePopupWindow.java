package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class TranslatePopupWindow extends FrameLayout {
    public TranslatePopupWindow(Context context) {
        super(context);
        View inflate = LayoutInflater.from(context).inflate(R.layout.popup_im_focus_tip, (ViewGroup) null);
        inflate.setPadding(0, DensityUtil.dp2px(20.0f), 0, 0);
        inflate.findViewById(R.id.primary_content).setVisibility(8);
        setBackgroundDrawable(new ColorDrawable(0));
        TextView textView = (TextView) inflate.findViewById(R.id.primary_title);
        ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).topMargin = DensityUtil.dp2px(2.0f);
        ((ViewGroup.MarginLayoutParams) inflate.findViewById(R.id.iv_sanjiao).getLayoutParams()).setMarginEnd(DensityUtil.dp2px(6.0f));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        textView.setText(R.string.translate_automatic_switch);
        addView(inflate, layoutParams);
    }
}
