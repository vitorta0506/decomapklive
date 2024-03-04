package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class PopupDateGuideBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flContent;
    @NonNull
    public final LinearLayout llGuid;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView svgGuid;

    private PopupDateGuideBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull SVGAImageView sVGAImageView) {
        this.rootView = frameLayout;
        this.flContent = frameLayout2;
        this.llGuid = linearLayout;
        this.svgGuid = sVGAImageView;
    }

    @NonNull
    public static PopupDateGuideBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.ll_guid;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_guid);
        if (linearLayout != null) {
            i9 = R.id.svg_guid;
            SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svg_guid);
            if (sVGAImageView != null) {
                return new PopupDateGuideBinding(frameLayout, frameLayout, linearLayout, sVGAImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopupDateGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupDateGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.popup_date_guide, viewGroup, false);
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
