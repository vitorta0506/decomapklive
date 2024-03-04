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
import com.guochao.faceshow.myPlayView.widget.TextureVideoView;
/* loaded from: classes2.dex */
public final class LayoutImVideoPreviewBinding implements ViewBinding {
    @NonNull
    public final ImageView img;
    @NonNull
    public final ImageView play;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextureVideoView videoView;

    private LayoutImVideoPreviewBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextureVideoView textureVideoView) {
        this.rootView = frameLayout;
        this.img = imageView;
        this.play = imageView2;
        this.videoView = textureVideoView;
    }

    @NonNull
    public static LayoutImVideoPreviewBinding bind(@NonNull View view) {
        int i9 = R.id.img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
        if (imageView != null) {
            i9 = R.id.play;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
            if (imageView2 != null) {
                i9 = R.id.video_view;
                TextureVideoView textureVideoView = (TextureVideoView) ViewBindings.findChildViewById(view, R.id.video_view);
                if (textureVideoView != null) {
                    return new LayoutImVideoPreviewBinding((FrameLayout) view, imageView, imageView2, textureVideoView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutImVideoPreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutImVideoPreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_im_video_preview, viewGroup, false);
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
