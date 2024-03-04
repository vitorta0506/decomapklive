package com.guochao.lib_core.databinding;

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
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
/* loaded from: classes4.dex */
public final class LayoutNewSexAgeBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView userAge;
    @NonNull
    public final ImageView userGender;
    @NonNull
    public final LinearLayout userGenderAge;

    private LayoutNewSexAgeBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.userAge = textView;
        this.userGender = imageView;
        this.userGenderAge = linearLayout2;
    }

    @NonNull
    public static LayoutNewSexAgeBinding bind(@NonNull View view) {
        int i9 = R$id.user_age;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.user_gender;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new LayoutNewSexAgeBinding(linearLayout, textView, imageView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutNewSexAgeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutNewSexAgeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_new_sex_age, viewGroup, false);
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
