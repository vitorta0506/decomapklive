package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
/* loaded from: classes2.dex */
public final class LayoutFullscreenImageBinding implements ViewBinding {
    @NonNull
    public final FullScreenScrollToExitViewV2 content;
    @NonNull
    public final FrameLayout fullScreenView;
    @NonNull
    public final TextView indicator;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView saveImg;

    private LayoutFullscreenImageBinding(@NonNull FrameLayout frameLayout, @NonNull FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.content = fullScreenScrollToExitViewV2;
        this.fullScreenView = frameLayout2;
        this.indicator = textView;
        this.saveImg = imageView;
    }

    @NonNull
    public static LayoutFullscreenImageBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2 = (FullScreenScrollToExitViewV2) ViewBindings.findChildViewById(view, R.id.content);
        if (fullScreenScrollToExitViewV2 != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i9 = R.id.indicator;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.indicator);
            if (textView != null) {
                i9 = R.id.save_img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.save_img);
                if (imageView != null) {
                    return new LayoutFullscreenImageBinding(frameLayout, fullScreenScrollToExitViewV2, frameLayout, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFullscreenImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFullscreenImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_fullscreen_image, viewGroup, false);
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
