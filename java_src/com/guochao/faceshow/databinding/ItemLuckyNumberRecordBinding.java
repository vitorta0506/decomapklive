package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemLuckyNumberRecordBinding implements ViewBinding {
    @NonNull
    public final TextView joinFee;
    @NonNull
    public final TextView recordTime;
    @NonNull
    public final TextView reward;
    @NonNull
    private final LinearLayout rootView;

    private ItemLuckyNumberRecordBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.joinFee = textView;
        this.recordTime = textView2;
        this.reward = textView3;
    }

    @NonNull
    public static ItemLuckyNumberRecordBinding bind(@NonNull View view) {
        int i9 = R.id.join_fee;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.join_fee);
        if (textView != null) {
            i9 = R.id.record_time;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.record_time);
            if (textView2 != null) {
                i9 = R.id.reward;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.reward);
                if (textView3 != null) {
                    return new ItemLuckyNumberRecordBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemLuckyNumberRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLuckyNumberRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_lucky_number_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
