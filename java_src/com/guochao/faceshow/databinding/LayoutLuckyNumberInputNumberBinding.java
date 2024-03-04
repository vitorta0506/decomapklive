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
public final class LayoutLuckyNumberInputNumberBinding implements ViewBinding {
    @NonNull
    public final FrameLayout floatInput1;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView sVGAImageView;

    private LayoutLuckyNumberInputNumberBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull SVGAImageView sVGAImageView) {
        this.rootView = frameLayout;
        this.floatInput1 = frameLayout2;
        this.sVGAImageView = sVGAImageView;
    }

    @NonNull
    public static LayoutLuckyNumberInputNumberBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.sVGAImageView);
        if (sVGAImageView != null) {
            return new LayoutLuckyNumberInputNumberBinding(frameLayout, frameLayout, sVGAImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.sVGAImageView)));
    }

    @NonNull
    public static LayoutLuckyNumberInputNumberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLuckyNumberInputNumberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_lucky_number_input_number, viewGroup, false);
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
