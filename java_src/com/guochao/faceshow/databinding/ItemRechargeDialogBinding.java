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
public final class ItemRechargeDialogBinding implements ViewBinding {
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final TextView extraDiamondCount;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvPrice;
    @NonNull
    public final TextView tvSaleDiamond;

    private ItemRechargeDialogBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.diamondCount = textView;
        this.extraDiamondCount = textView2;
        this.tvPrice = textView3;
        this.tvSaleDiamond = textView4;
    }

    @NonNull
    public static ItemRechargeDialogBinding bind(@NonNull View view) {
        int i9 = R.id.diamond_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
        if (textView != null) {
            i9 = R.id.extra_diamond_count;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.extra_diamond_count);
            if (textView2 != null) {
                i9 = R.id.tv_price;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_price);
                if (textView3 != null) {
                    i9 = R.id.tv_sale_diamond;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sale_diamond);
                    if (textView4 != null) {
                        return new ItemRechargeDialogBinding((FrameLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemRechargeDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemRechargeDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_recharge_dialog, viewGroup, false);
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
