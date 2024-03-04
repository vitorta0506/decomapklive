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
public final class LayoutPkIconSingleBinding implements ViewBinding {
    @NonNull
    public final SVGAImageView pkGiftBtn;
    @NonNull
    public final ImageView pkNormalBtn;
    @NonNull
    private final FrameLayout rootView;

    private LayoutPkIconSingleBinding(@NonNull FrameLayout frameLayout, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.pkGiftBtn = sVGAImageView;
        this.pkNormalBtn = imageView;
    }

    @NonNull
    public static LayoutPkIconSingleBinding bind(@NonNull View view) {
        int i9 = R.id.pk_gift_btn;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.pk_gift_btn);
        if (sVGAImageView != null) {
            i9 = R.id.pk_normal_btn;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.pk_normal_btn);
            if (imageView != null) {
                return new LayoutPkIconSingleBinding((FrameLayout) view, sVGAImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutPkIconSingleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPkIconSingleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_pk_icon_single, viewGroup, false);
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
