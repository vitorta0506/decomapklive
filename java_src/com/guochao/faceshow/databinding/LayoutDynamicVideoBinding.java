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
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class LayoutDynamicVideoBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bgFL;
    @NonNull
    public final ImageView bgIV;
    @NonNull
    public final ImageView iconPlay;
    @NonNull
    public final ImageView placeHolder;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FrameLayout videoContent;
    @NonNull
    public final TXCloudVideoView videoView;

    private LayoutDynamicVideoBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout3, @NonNull TXCloudVideoView tXCloudVideoView) {
        this.rootView = frameLayout;
        this.bgFL = frameLayout2;
        this.bgIV = imageView;
        this.iconPlay = imageView2;
        this.placeHolder = imageView3;
        this.videoContent = frameLayout3;
        this.videoView = tXCloudVideoView;
    }

    @NonNull
    public static LayoutDynamicVideoBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.bgIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bgIV);
        if (imageView != null) {
            i9 = R.id.icon_play;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_play);
            if (imageView2 != null) {
                i9 = R.id.place_holder;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.place_holder);
                if (imageView3 != null) {
                    i9 = R.id.video_content;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.video_content);
                    if (frameLayout2 != null) {
                        i9 = R.id.video_view;
                        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.video_view);
                        if (tXCloudVideoView != null) {
                            return new LayoutDynamicVideoBinding(frameLayout, frameLayout, imageView, imageView2, imageView3, frameLayout2, tXCloudVideoView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutDynamicVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDynamicVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_dynamic_video, viewGroup, false);
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
