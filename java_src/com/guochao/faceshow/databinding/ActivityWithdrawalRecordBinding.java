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
public final class ActivityWithdrawalRecordBinding implements ViewBinding {
    @NonNull
    public final LinearLayout llTitleContent;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAllRmb;
    @NonNull
    public final TextView tvAllUsd;
    @NonNull
    public final TextView tvSelectInterval;

    private ActivityWithdrawalRecordBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.llTitleContent = linearLayout2;
        this.tvAllRmb = textView;
        this.tvAllUsd = textView2;
        this.tvSelectInterval = textView3;
    }

    @NonNull
    public static ActivityWithdrawalRecordBinding bind(@NonNull View view) {
        int i9 = R.id.ll_title_content;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_title_content);
        if (linearLayout != null) {
            i9 = R.id.tv_all_rmb;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_all_rmb);
            if (textView != null) {
                i9 = R.id.tv_all_usd;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_all_usd);
                if (textView2 != null) {
                    i9 = R.id.tv_select_interval;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_select_interval);
                    if (textView3 != null) {
                        return new ActivityWithdrawalRecordBinding((LinearLayout) view, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityWithdrawalRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWithdrawalRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_withdrawal_record, viewGroup, false);
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
