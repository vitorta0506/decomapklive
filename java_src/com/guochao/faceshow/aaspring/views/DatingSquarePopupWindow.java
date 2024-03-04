package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.ColorUtils;
/* loaded from: classes3.dex */
public class DatingSquarePopupWindow extends FrameLayout {
    public DatingSquarePopupWindow(Context context) {
        super(context);
        setBackgroundDrawable(new ColorDrawable(0));
        TextView textView = new TextView(context);
        textView.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(context, R.drawable.im_top_remind), ContextCompat.getColor(context, R.color.color_ugc_app_primary_tint)));
        textView.setTextColor(-1);
        textView.setTextSize(2, 14.0f);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        textView.setText(R.string.trtc_click_open_date_function);
        addView(textView, layoutParams);
    }
}
