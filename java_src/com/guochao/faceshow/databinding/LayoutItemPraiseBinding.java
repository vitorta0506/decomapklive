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
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutItemPraiseBinding implements ViewBinding {
    @NonNull
    public final SVGAImageView praise;
    @NonNull
    public final ImageView praiseStatic;
    @NonNull
    private final FrameLayout rootView;

    private LayoutItemPraiseBinding(@NonNull FrameLayout frameLayout, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.praise = sVGAImageView;
        this.praiseStatic = imageView;
    }

    @NonNull
    public static LayoutItemPraiseBinding bind(@NonNull View view) {
        int i9 = R.id.praise;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.praise);
        if (sVGAImageView != null) {
            i9 = R.id.praise_static;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.praise_static);
            if (imageView != null) {
                return new LayoutItemPraiseBinding((FrameLayout) view, sVGAImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutItemPraiseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutItemPraiseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_item_praise, viewGroup, false);
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
