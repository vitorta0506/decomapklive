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
public final class ItemWithdrawSpecificationBinding implements ViewBinding {
    @NonNull
    public final TextView firstCashTip;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvCashCoin;
    @NonNull
    public final TextView tvTotalPrice;

    private ItemWithdrawSpecificationBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.firstCashTip = textView;
        this.tvCashCoin = textView2;
        this.tvTotalPrice = textView3;
    }

    @NonNull
    public static ItemWithdrawSpecificationBinding bind(@NonNull View view) {
        int i9 = R.id.first_cash_tip;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.first_cash_tip);
        if (textView != null) {
            i9 = R.id.tv_cash_coin;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cash_coin);
            if (textView2 != null) {
                i9 = R.id.tv_total_price;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_total_price);
                if (textView3 != null) {
                    return new ItemWithdrawSpecificationBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemWithdrawSpecificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemWithdrawSpecificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_withdraw_specification, viewGroup, false);
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
