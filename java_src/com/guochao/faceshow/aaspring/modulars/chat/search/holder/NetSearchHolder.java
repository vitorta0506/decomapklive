package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
/* loaded from: classes3.dex */
public class NetSearchHolder extends BaseViewHolder {
    public NetSearchHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_im_net, viewGroup, false));
    }

    public void c(String str) {
        TextView textView = (TextView) this.itemView;
        String format = String.format(textView.getContext().getString(R.string.Network_Search), str);
        int color = ContextCompat.getColor(textView.getContext(), R.color.color_app_primary);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        int intValue = str != null ? SpanColorUtils.getFirstCharIndex(format, "\"").intValue() : -1;
        if (intValue >= 0) {
            int i9 = intValue + 1;
            spannableStringBuilder.setSpan(new ForegroundColorSpan(color), i9, str.length() + i9, 18);
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(color), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }
}
