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
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.ResizableImageView;
/* loaded from: classes2.dex */
public final class FragmentImageAdsBinding implements ViewBinding {
    @NonNull
    public final ResizableImageView imageView;
    @NonNull
    private final FrameLayout rootView;

    private FragmentImageAdsBinding(@NonNull FrameLayout frameLayout, @NonNull ResizableImageView resizableImageView) {
        this.rootView = frameLayout;
        this.imageView = resizableImageView;
    }

    @NonNull
    public static FragmentImageAdsBinding bind(@NonNull View view) {
        ResizableImageView resizableImageView = (ResizableImageView) ViewBindings.findChildViewById(view, R.id.image_view);
        if (resizableImageView != null) {
            return new FragmentImageAdsBinding((FrameLayout) view, resizableImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image_view)));
    }

    @NonNull
    public static FragmentImageAdsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentImageAdsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_image_ads, viewGroup, false);
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
