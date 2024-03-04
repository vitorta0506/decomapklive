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
public final class RechargeGameListItemBinding implements ViewBinding {
    @NonNull
    public final TextView btnRecharge;
    @NonNull
    public final LinearLayout rechageListItemLy;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvNumber;

    private RechargeGameListItemBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.btnRecharge = textView;
        this.rechageListItemLy = linearLayout;
        this.tvNumber = textView2;
    }

    @NonNull
    public static RechargeGameListItemBinding bind(@NonNull View view) {
        int i9 = R.id.btnRecharge;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnRecharge);
        if (textView != null) {
            i9 = R.id.rechage_list_item_ly;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rechage_list_item_ly);
            if (linearLayout != null) {
                i9 = R.id.tv_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_number);
                if (textView2 != null) {
                    return new RechargeGameListItemBinding((FrameLayout) view, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static RechargeGameListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static RechargeGameListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.recharge_game_list_item, viewGroup, false);
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
