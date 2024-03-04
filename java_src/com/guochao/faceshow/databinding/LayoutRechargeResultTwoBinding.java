package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutRechargeResultTwoBinding implements ViewBinding {
    @NonNull
    public final ItemFirstRechargeResultContentBinding itemFirst;
    @NonNull
    public final ItemFirstRechargeResultContentBinding itemSecond;
    @NonNull
    private final LinearLayout rootView;

    private LayoutRechargeResultTwoBinding(@NonNull LinearLayout linearLayout, @NonNull ItemFirstRechargeResultContentBinding itemFirstRechargeResultContentBinding, @NonNull ItemFirstRechargeResultContentBinding itemFirstRechargeResultContentBinding2) {
        this.rootView = linearLayout;
        this.itemFirst = itemFirstRechargeResultContentBinding;
        this.itemSecond = itemFirstRechargeResultContentBinding2;
    }

    @NonNull
    public static LayoutRechargeResultTwoBinding bind(@NonNull View view) {
        int i9 = R.id.item_first;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.item_first);
        if (findChildViewById != null) {
            ItemFirstRechargeResultContentBinding bind = ItemFirstRechargeResultContentBinding.bind(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.item_second);
            if (findChildViewById2 != null) {
                return new LayoutRechargeResultTwoBinding((LinearLayout) view, bind, ItemFirstRechargeResultContentBinding.bind(findChildViewById2));
            }
            i9 = R.id.item_second;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutRechargeResultTwoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRechargeResultTwoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_recharge_result_two, viewGroup, false);
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
