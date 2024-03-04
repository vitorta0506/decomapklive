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
public final class LayoutRangeSliderBinding implements ViewBinding {
    @NonNull
    public final ImageView ivEndView;
    @NonNull
    public final ImageView ivStartView;
    @NonNull
    public final View middleView;
    @NonNull
    private final LinearLayout rootView;

    private LayoutRangeSliderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view) {
        this.rootView = linearLayout;
        this.ivEndView = imageView;
        this.ivStartView = imageView2;
        this.middleView = view;
    }

    @NonNull
    public static LayoutRangeSliderBinding bind(@NonNull View view) {
        int i9 = R.id.iv_end_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_end_view);
        if (imageView != null) {
            i9 = R.id.iv_start_view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_start_view);
            if (imageView2 != null) {
                i9 = R.id.middle_view;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.middle_view);
                if (findChildViewById != null) {
                    return new LayoutRangeSliderBinding((LinearLayout) view, imageView, imageView2, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutRangeSliderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRangeSliderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_range_slider, viewGroup, false);
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
