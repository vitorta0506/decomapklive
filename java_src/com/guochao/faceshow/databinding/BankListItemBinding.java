package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class BankListItemBinding implements ViewBinding {
    @NonNull
    public final ImageView ivBankImg;
    @NonNull
    public final RelativeLayout rlItemLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvBankName;

    private BankListItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.ivBankImg = imageView;
        this.rlItemLayout = relativeLayout;
        this.tvBankName = textView;
    }

    @NonNull
    public static BankListItemBinding bind(@NonNull View view) {
        int i9 = R.id.ivBankImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivBankImg);
        if (imageView != null) {
            i9 = R.id.rlItemLayout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlItemLayout);
            if (relativeLayout != null) {
                i9 = R.id.tvBankName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvBankName);
                if (textView != null) {
                    return new BankListItemBinding((LinearLayout) view, imageView, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static BankListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static BankListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.bank_list_item, viewGroup, false);
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
