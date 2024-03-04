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
public final class CountryListCurrItemCountryBinding implements ViewBinding {
    @NonNull
    public final ImageView checkbox;
    @NonNull
    public final ImageView ivImg;
    @NonNull
    public final LinearLayout rlItemLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvName;

    private CountryListCurrItemCountryBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.checkbox = imageView;
        this.ivImg = imageView2;
        this.rlItemLayout = linearLayout2;
        this.tvName = textView;
    }

    @NonNull
    public static CountryListCurrItemCountryBinding bind(@NonNull View view) {
        int i9 = R.id.checkbox;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.checkbox);
        if (imageView != null) {
            i9 = R.id.ivImg;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivImg);
            if (imageView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.tvName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
                if (textView != null) {
                    return new CountryListCurrItemCountryBinding(linearLayout, imageView, imageView2, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static CountryListCurrItemCountryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CountryListCurrItemCountryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.country_list_curr_item_country, viewGroup, false);
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
