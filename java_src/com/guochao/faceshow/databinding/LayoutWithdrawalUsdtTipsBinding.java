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
public final class LayoutWithdrawalUsdtTipsBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final LinearLayout guide;
    @NonNull
    private final LinearLayout rootView;

    private LayoutWithdrawalUsdtTipsBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.content = textView;
        this.guide = linearLayout2;
    }

    @NonNull
    public static LayoutWithdrawalUsdtTipsBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.guide;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.guide);
            if (linearLayout != null) {
                return new LayoutWithdrawalUsdtTipsBinding((LinearLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutWithdrawalUsdtTipsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutWithdrawalUsdtTipsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_withdrawal_usdt_tips, viewGroup, false);
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
