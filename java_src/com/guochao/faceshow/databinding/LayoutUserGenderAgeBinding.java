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
public final class LayoutUserGenderAgeBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView userAge;
    @NonNull
    public final ImageView userGender;
    @NonNull
    public final LinearLayout userGenderAge;

    private LayoutUserGenderAgeBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.userAge = textView;
        this.userGender = imageView;
        this.userGenderAge = linearLayout2;
    }

    @NonNull
    public static LayoutUserGenderAgeBinding bind(@NonNull View view) {
        int i9 = R.id.user_age;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_age);
        if (textView != null) {
            i9 = R.id.user_gender;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.user_gender);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new LayoutUserGenderAgeBinding(linearLayout, textView, imageView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUserGenderAgeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUserGenderAgeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_user_gender_age, viewGroup, false);
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
