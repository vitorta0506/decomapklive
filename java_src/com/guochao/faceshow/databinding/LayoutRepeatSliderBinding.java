package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutRepeatSliderBinding implements ViewBinding {
    @NonNull
    public final ImageView ivSlider;
    @NonNull
    private final LinearLayout rootView;

    private LayoutRepeatSliderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.ivSlider = imageView;
    }

    @NonNull
    public static LayoutRepeatSliderBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_slider);
        if (imageView != null) {
            return new LayoutRepeatSliderBinding((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_slider)));
    }

    @NonNull
    public static LayoutRepeatSliderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRepeatSliderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_repeat_slider, viewGroup, false);
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
