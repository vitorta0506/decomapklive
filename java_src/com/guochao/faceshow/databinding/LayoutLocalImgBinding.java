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
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
/* loaded from: classes2.dex */
public final class LayoutLocalImgBinding implements ViewBinding {
    @NonNull
    public final ImageView checkbox;
    @NonNull
    public final ImageView gifIndicator;
    @NonNull
    public final ImageView iconVideo;
    @NonNull
    public final RatioHeightImageView img;
    @NonNull
    private final FrameLayout rootView;

    private LayoutLocalImgBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RatioHeightImageView ratioHeightImageView) {
        this.rootView = frameLayout;
        this.checkbox = imageView;
        this.gifIndicator = imageView2;
        this.iconVideo = imageView3;
        this.img = ratioHeightImageView;
    }

    @NonNull
    public static LayoutLocalImgBinding bind(@NonNull View view) {
        int i9 = R.id.checkbox;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.checkbox);
        if (imageView != null) {
            i9 = R.id.gif_indicator;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gif_indicator);
            if (imageView2 != null) {
                i9 = R.id.icon_video;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_video);
                if (imageView3 != null) {
                    i9 = R.id.img;
                    RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.img);
                    if (ratioHeightImageView != null) {
                        return new LayoutLocalImgBinding((FrameLayout) view, imageView, imageView2, imageView3, ratioHeightImageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLocalImgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLocalImgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_local_img, viewGroup, false);
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
