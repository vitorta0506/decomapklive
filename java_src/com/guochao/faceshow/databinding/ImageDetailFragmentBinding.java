package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ImageDetailFragmentBinding implements ViewBinding {
    @NonNull
    public final PhotoView image;
    @NonNull
    public final FrameLayout mainLayout;
    @NonNull
    private final FrameLayout rootView;

    private ImageDetailFragmentBinding(@NonNull FrameLayout frameLayout, @NonNull PhotoView photoView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.image = photoView;
        this.mainLayout = frameLayout2;
    }

    @NonNull
    public static ImageDetailFragmentBinding bind(@NonNull View view) {
        PhotoView photoView = (PhotoView) ViewBindings.findChildViewById(view, R.id.image);
        if (photoView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new ImageDetailFragmentBinding(frameLayout, photoView, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }

    @NonNull
    public static ImageDetailFragmentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ImageDetailFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_fragment, viewGroup, false);
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
