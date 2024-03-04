package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutInputtingBinding implements ViewBinding {
    @NonNull
    public final SVGAImageView img;
    @NonNull
    private final SVGAImageView rootView;

    private LayoutInputtingBinding(@NonNull SVGAImageView sVGAImageView, @NonNull SVGAImageView sVGAImageView2) {
        this.rootView = sVGAImageView;
        this.img = sVGAImageView2;
    }

    @NonNull
    public static LayoutInputtingBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        SVGAImageView sVGAImageView = (SVGAImageView) view;
        return new LayoutInputtingBinding(sVGAImageView, sVGAImageView);
    }

    @NonNull
    public static LayoutInputtingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutInputtingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_inputting, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SVGAImageView getRoot() {
        return this.rootView;
    }
}
