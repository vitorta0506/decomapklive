package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutLoadingProgressBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout layoutProgress;
    @NonNull
    public final SVGAImageView progressImg;
    @NonNull
    private final RelativeLayout rootView;

    private LayoutLoadingProgressBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull SVGAImageView sVGAImageView) {
        this.rootView = relativeLayout;
        this.layoutProgress = relativeLayout2;
        this.progressImg = sVGAImageView;
    }

    @NonNull
    public static LayoutLoadingProgressBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.progress_img);
        if (sVGAImageView != null) {
            return new LayoutLoadingProgressBinding(relativeLayout, relativeLayout, sVGAImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.progress_img)));
    }

    @NonNull
    public static LayoutLoadingProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLoadingProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_loading_progress, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
