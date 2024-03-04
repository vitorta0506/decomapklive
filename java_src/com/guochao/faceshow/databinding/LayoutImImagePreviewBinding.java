package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.GifImageView;
/* loaded from: classes2.dex */
public final class LayoutImImagePreviewBinding implements ViewBinding {
    @NonNull
    public final GifImageView photoView;
    @NonNull
    private final FrameLayout rootView;

    private LayoutImImagePreviewBinding(@NonNull FrameLayout frameLayout, @NonNull GifImageView gifImageView) {
        this.rootView = frameLayout;
        this.photoView = gifImageView;
    }

    @NonNull
    public static LayoutImImagePreviewBinding bind(@NonNull View view) {
        GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, R.id.photo_view);
        if (gifImageView != null) {
            return new LayoutImImagePreviewBinding((FrameLayout) view, gifImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.photo_view)));
    }

    @NonNull
    public static LayoutImImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutImImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_im_image_preview, viewGroup, false);
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
