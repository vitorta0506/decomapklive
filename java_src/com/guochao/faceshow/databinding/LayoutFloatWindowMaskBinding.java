package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutFloatWindowMaskBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final ImageView cover;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView sVGAImageView;

    private LayoutFloatWindowMaskBinding(@NonNull FrameLayout frameLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull SVGAImageView sVGAImageView) {
        this.rootView = frameLayout;
        this.avatar = normalCircleImageView;
        this.cover = imageView;
        this.sVGAImageView = sVGAImageView;
    }

    @NonNull
    public static LayoutFloatWindowMaskBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.cover;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cover);
            if (imageView != null) {
                i9 = R.id.sVGAImageView;
                SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.sVGAImageView);
                if (sVGAImageView != null) {
                    return new LayoutFloatWindowMaskBinding((FrameLayout) view, normalCircleImageView, imageView, sVGAImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFloatWindowMaskBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFloatWindowMaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_float_window_mask, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
