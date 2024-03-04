package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class PopImTranslationGuideBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final SVGAImageView svg;
    @NonNull
    public final TextView tvTip;

    private PopImTranslationGuideBinding(@NonNull LinearLayout linearLayout, @NonNull SVGAImageView sVGAImageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.svg = sVGAImageView;
        this.tvTip = textView;
    }

    @NonNull
    public static PopImTranslationGuideBinding bind(@NonNull View view) {
        int i9 = R.id.svg;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svg);
        if (sVGAImageView != null) {
            i9 = R.id.tv_tip;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tip);
            if (textView != null) {
                return new PopImTranslationGuideBinding((LinearLayout) view, sVGAImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopImTranslationGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopImTranslationGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_im_translation_guide, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
