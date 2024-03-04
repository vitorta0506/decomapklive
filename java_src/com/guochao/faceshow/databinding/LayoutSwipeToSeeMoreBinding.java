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
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutSwipeToSeeMoreBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView svga;

    private LayoutSwipeToSeeMoreBinding(@NonNull FrameLayout frameLayout, @NonNull SVGAImageView sVGAImageView) {
        this.rootView = frameLayout;
        this.svga = sVGAImageView;
    }

    @NonNull
    public static LayoutSwipeToSeeMoreBinding bind(@NonNull View view) {
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga);
        if (sVGAImageView != null) {
            return new LayoutSwipeToSeeMoreBinding((FrameLayout) view, sVGAImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.svga)));
    }

    @NonNull
    public static LayoutSwipeToSeeMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSwipeToSeeMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_swipe_to_see_more, viewGroup, false);
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
