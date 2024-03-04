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
public final class CountryListItemBinding implements ViewBinding {
    @NonNull
    public final ImageView ivImg;
    @NonNull
    public final ImageView ivRight;
    @NonNull
    public final RelativeLayout rlItemLayout;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvName;

    private CountryListItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.ivImg = imageView;
        this.ivRight = imageView2;
        this.rlItemLayout = relativeLayout2;
        this.tvName = textView;
    }

    @NonNull
    public static CountryListItemBinding bind(@NonNull View view) {
        int i9 = R.id.ivImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivImg);
        if (imageView != null) {
            i9 = R.id.ivRight;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivRight);
            if (imageView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i9 = R.id.tvName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
                if (textView != null) {
                    return new CountryListItemBinding(relativeLayout, imageView, imageView2, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static CountryListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CountryListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.country_list_item, viewGroup, false);
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
