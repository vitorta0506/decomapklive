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
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class LayoutPipContainerBinding implements ViewBinding {
    @NonNull
    public final ImageView background;
    @NonNull
    public final FrameLayout container;
    @NonNull
    public final SvgaImageViewV2 loadingAnim;
    @NonNull
    public final MultiLivePlayView multiply;
    @NonNull
    public final ImageView realBackground;
    @NonNull
    private final FrameLayout rootView;

    private LayoutPipContainerBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull MultiLivePlayView multiLivePlayView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.background = imageView;
        this.container = frameLayout2;
        this.loadingAnim = svgaImageViewV2;
        this.multiply = multiLivePlayView;
        this.realBackground = imageView2;
    }

    @NonNull
    public static LayoutPipContainerBinding bind(@NonNull View view) {
        int i9 = R.id.background;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
        if (imageView != null) {
            i9 = R.id.container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
            if (frameLayout != null) {
                i9 = R.id.loading_anim;
                SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.loading_anim);
                if (svgaImageViewV2 != null) {
                    i9 = R.id.multiply;
                    MultiLivePlayView multiLivePlayView = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.multiply);
                    if (multiLivePlayView != null) {
                        i9 = R.id.realBackground;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.realBackground);
                        if (imageView2 != null) {
                            return new LayoutPipContainerBinding((FrameLayout) view, imageView, frameLayout, svgaImageViewV2, multiLivePlayView, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutPipContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPipContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_pip_container, viewGroup, false);
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
