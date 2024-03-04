package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemWithdrawItemBinding implements ViewBinding {
    @NonNull
    public final ImageView ivAlipayLogo;
    @NonNull
    public final RelativeLayout rlAliPayLayout;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvAlipayName;
    @NonNull
    public final View viewLine;

    private ListItemWithdrawItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull View view) {
        this.rootView = relativeLayout;
        this.ivAlipayLogo = imageView;
        this.rlAliPayLayout = relativeLayout2;
        this.tvAlipayName = textView;
        this.viewLine = view;
    }

    @NonNull
    public static ListItemWithdrawItemBinding bind(@NonNull View view) {
        int i9 = R.id.iv_alipay_logo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_alipay_logo);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i9 = R.id.tv_alipay_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_alipay_name);
            if (textView != null) {
                i9 = R.id.view_line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                if (findChildViewById != null) {
                    return new ListItemWithdrawItemBinding(relativeLayout, imageView, relativeLayout, textView, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemWithdrawItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemWithdrawItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_withdraw_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
