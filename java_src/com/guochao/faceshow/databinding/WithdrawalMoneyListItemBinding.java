package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class WithdrawalMoneyListItemBinding implements ViewBinding {
    @NonNull
    public final LinearLayout llF;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvFNumber;
    @NonNull
    public final TextView tvMoneyNumber;

    private WithdrawalMoneyListItemBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.llF = linearLayout;
        this.tvFNumber = textView;
        this.tvMoneyNumber = textView2;
    }

    @NonNull
    public static WithdrawalMoneyListItemBinding bind(@NonNull View view) {
        int i9 = R.id.ll_f;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_f);
        if (linearLayout != null) {
            i9 = R.id.tv_f_number;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_f_number);
            if (textView != null) {
                i9 = R.id.tv_money_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_money_number);
                if (textView2 != null) {
                    return new WithdrawalMoneyListItemBinding((FrameLayout) view, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static WithdrawalMoneyListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static WithdrawalMoneyListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.withdrawal_money_list_item, viewGroup, false);
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
