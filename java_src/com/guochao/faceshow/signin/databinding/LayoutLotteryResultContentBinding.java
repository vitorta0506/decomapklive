package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class LayoutLotteryResultContentBinding implements ViewBinding {
    @NonNull
    public final TextView avatarDays;
    @NonNull
    public final TextView exploreDays;
    @NonNull
    public final TextView newDays;
    @NonNull
    public final TextView rewardDiamond;
    @NonNull
    public final TextView rewardDiamondCount;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView speedDays;

    private LayoutLotteryResultContentBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = linearLayout;
        this.avatarDays = textView;
        this.exploreDays = textView2;
        this.newDays = textView3;
        this.rewardDiamond = textView4;
        this.rewardDiamondCount = textView5;
        this.speedDays = textView6;
    }

    @NonNull
    public static LayoutLotteryResultContentBinding bind(@NonNull View view) {
        int i9 = R$id.avatar_days;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.exploreDays;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.new_days;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView3 != null) {
                    i9 = R$id.rewardDiamond;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView4 != null) {
                        i9 = R$id.reward_diamond_count;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView5 != null) {
                            i9 = R$id.speed_days;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView6 != null) {
                                return new LayoutLotteryResultContentBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5, textView6);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLotteryResultContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLotteryResultContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_lottery_result_content, viewGroup, false);
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
