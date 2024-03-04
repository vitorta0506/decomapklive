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
public final class LayoutThirdCancelAccountBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView thirdIcon;
    @NonNull
    public final TextView thirdName;

    private LayoutThirdCancelAccountBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.thirdIcon = imageView;
        this.thirdName = textView;
    }

    @NonNull
    public static LayoutThirdCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.third_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.third_icon);
        if (imageView != null) {
            i9 = R.id.third_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.third_name);
            if (textView != null) {
                return new LayoutThirdCancelAccountBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutThirdCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutThirdCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_third_cancel_account, viewGroup, false);
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
