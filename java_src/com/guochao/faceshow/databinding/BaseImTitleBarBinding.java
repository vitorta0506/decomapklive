package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class BaseImTitleBarBinding implements ViewBinding {
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final SvgaImageViewV2 focusSVGA;
    @NonNull
    public final FrameLayout imTitleBar;
    @NonNull
    public final ImageView ivBack;
    @NonNull
    public final ImageView ivFocus;
    @NonNull
    public final ImageView ivMore;
    @NonNull
    public final ImageView ivVideo;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;

    private BaseImTitleBarBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull Toolbar toolbar) {
        this.rootView = frameLayout;
        this.floatTitle = textView;
        this.focusSVGA = svgaImageViewV2;
        this.imTitleBar = frameLayout2;
        this.ivBack = imageView;
        this.ivFocus = imageView2;
        this.ivMore = imageView3;
        this.ivVideo = imageView4;
        this.title = textView2;
        this.toolbar = toolbar;
    }

    @NonNull
    public static BaseImTitleBarBinding bind(@NonNull View view) {
        int i9 = R.id.float_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
        if (textView != null) {
            i9 = R.id.focusSVGA;
            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.focusSVGA);
            if (svgaImageViewV2 != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i9 = R.id.iv_back;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
                if (imageView != null) {
                    i9 = R.id.iv_focus;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_focus);
                    if (imageView2 != null) {
                        i9 = R.id.iv_more;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
                        if (imageView3 != null) {
                            i9 = R.id.iv_video;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_video);
                            if (imageView4 != null) {
                                i9 = 16908310;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908310);
                                if (textView2 != null) {
                                    i9 = R.id.toolbar;
                                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                    if (toolbar != null) {
                                        return new BaseImTitleBarBinding(frameLayout, textView, svgaImageViewV2, frameLayout, imageView, imageView2, imageView3, imageView4, textView2, toolbar);
                                    }
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
    public static BaseImTitleBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static BaseImTitleBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.base_im_title_bar, viewGroup, false);
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
