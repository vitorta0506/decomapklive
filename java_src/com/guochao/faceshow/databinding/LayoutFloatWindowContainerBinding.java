package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutFloatWindowContainerBinding implements ViewBinding {
    @NonNull
    public final ImageView background;
    @NonNull
    public final ImageView close;
    @NonNull
    public final FrameLayout container;
    @NonNull
    public final SVGAImageView loadingAnim;
    @NonNull
    public final MultiLivePlayView multiply;
    @NonNull
    public final ImageView realBackground;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ViewStub viewStub;

    private LayoutFloatWindowContainerBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout2, @NonNull SVGAImageView sVGAImageView, @NonNull MultiLivePlayView multiLivePlayView, @NonNull ImageView imageView3, @NonNull ViewStub viewStub) {
        this.rootView = frameLayout;
        this.background = imageView;
        this.close = imageView2;
        this.container = frameLayout2;
        this.loadingAnim = sVGAImageView;
        this.multiply = multiLivePlayView;
        this.realBackground = imageView3;
        this.viewStub = viewStub;
    }

    @NonNull
    public static LayoutFloatWindowContainerBinding bind(@NonNull View view) {
        int i9 = R.id.background;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
        if (imageView != null) {
            i9 = R.id.close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView2 != null) {
                i9 = R.id.container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
                if (frameLayout != null) {
                    i9 = R.id.loading_anim;
                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.loading_anim);
                    if (sVGAImageView != null) {
                        i9 = R.id.multiply;
                        MultiLivePlayView multiLivePlayView = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.multiply);
                        if (multiLivePlayView != null) {
                            i9 = R.id.realBackground;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.realBackground);
                            if (imageView3 != null) {
                                i9 = R.id.view_stub;
                                ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.view_stub);
                                if (viewStub != null) {
                                    return new LayoutFloatWindowContainerBinding((FrameLayout) view, imageView, imageView2, frameLayout, sVGAImageView, multiLivePlayView, imageView3, viewStub);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFloatWindowContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFloatWindowContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_float_window_container, viewGroup, false);
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
