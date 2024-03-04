package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class CountryListCurrItemBinding implements ViewBinding {
    @NonNull
    public final CheckBox checkbox;
    @NonNull
    public final ImageView ivImg;
    @NonNull
    public final LinearLayout rlItemLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvName;

    private CountryListCurrItemBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.checkbox = checkBox;
        this.ivImg = imageView;
        this.rlItemLayout = linearLayout2;
        this.tvName = textView;
    }

    @NonNull
    public static CountryListCurrItemBinding bind(@NonNull View view) {
        int i9 = R.id.checkbox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox);
        if (checkBox != null) {
            i9 = R.id.ivImg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivImg);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.tvName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
                if (textView != null) {
                    return new CountryListCurrItemBinding(linearLayout, checkBox, imageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static CountryListCurrItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CountryListCurrItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.country_list_curr_item, viewGroup, false);
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
