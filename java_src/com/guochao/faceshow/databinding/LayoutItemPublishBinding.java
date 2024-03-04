package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SquareFrameLayout;
/* loaded from: classes2.dex */
public final class LayoutItemPublishBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteImage;
    @NonNull
    public final ImageView imageThumb;
    @NonNull
    private final SquareFrameLayout rootView;
    @NonNull
    public final ImageView videoIcon;

    private LayoutItemPublishBinding(@NonNull SquareFrameLayout squareFrameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.rootView = squareFrameLayout;
        this.deleteImage = imageView;
        this.imageThumb = imageView2;
        this.videoIcon = imageView3;
    }

    @NonNull
    public static LayoutItemPublishBinding bind(@NonNull View view) {
        int i9 = R.id.delete_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_image);
        if (imageView != null) {
            i9 = R.id.image_thumb;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.image_thumb);
            if (imageView2 != null) {
                i9 = R.id.video_icon;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.video_icon);
                if (imageView3 != null) {
                    return new LayoutItemPublishBinding((SquareFrameLayout) view, imageView, imageView2, imageView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutItemPublishBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutItemPublishBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_item_publish, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SquareFrameLayout getRoot() {
        return this.rootView;
    }
}
