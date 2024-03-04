package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class HeaderWithdrawalMoneyBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final View spaceWeight;
    @NonNull
    public final TextView tvFCount;
    @NonNull
    public final TextView tvFTip;

    private HeaderWithdrawalMoneyBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.spaceWeight = view;
        this.tvFCount = textView;
        this.tvFTip = textView2;
    }

    @NonNull
    public static HeaderWithdrawalMoneyBinding bind(@NonNull View view) {
        int i9 = R.id.space_weight;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.space_weight);
        if (findChildViewById != null) {
            i9 = R.id.tv_f_count;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_count);
            if (textView != null) {
                i9 = R.id.tv_f_tip;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_tip);
                if (textView2 != null) {
                    return new HeaderWithdrawalMoneyBinding((FrameLayout) view, findChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static HeaderWithdrawalMoneyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static HeaderWithdrawalMoneyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.header_withdrawal_money, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
