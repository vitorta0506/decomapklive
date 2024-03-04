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
public final class LayoutUserGenderAgeMvpBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView userAge1;
    @NonNull
    public final ImageView userGender1;
    @NonNull
    public final LinearLayout userGenderAge1;

    private LayoutUserGenderAgeMvpBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.userAge1 = textView;
        this.userGender1 = imageView;
        this.userGenderAge1 = linearLayout2;
    }

    @NonNull
    public static LayoutUserGenderAgeMvpBinding bind(@NonNull View view) {
        int i9 = R.id.user_age1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_age1);
        if (textView != null) {
            i9 = R.id.user_gender1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.user_gender1);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new LayoutUserGenderAgeMvpBinding(linearLayout, textView, imageView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUserGenderAgeMvpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUserGenderAgeMvpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_user_gender_age_mvp, viewGroup, false);
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
