package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class HeaderRechargeBinding implements ViewBinding {
    @NonNull
    public final ImageView czHelp;
    @NonNull
    public final TextView gameCoinMoney;
    @NonNull
    public final TextView gameCoinNumber;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDiamondCount;

    private HeaderRechargeBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.czHelp = imageView;
        this.gameCoinMoney = textView;
        this.gameCoinNumber = textView2;
        this.tvDiamondCount = textView3;
    }

    @NonNull
    public static HeaderRechargeBinding bind(@NonNull View view) {
        int i9 = R.id.cz_help;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cz_help);
        if (imageView != null) {
            i9 = R.id.game_coin_money;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_coin_money);
            if (textView != null) {
                i9 = R.id.game_coin_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.game_coin_number);
                if (textView2 != null) {
                    i9 = R.id.tv_diamond_count;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_diamond_count);
                    if (textView3 != null) {
                        return new HeaderRechargeBinding((LinearLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static HeaderRechargeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static HeaderRechargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.header_recharge, viewGroup, false);
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
