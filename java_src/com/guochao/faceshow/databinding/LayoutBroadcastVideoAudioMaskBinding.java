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
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutBroadcastVideoAudioMaskBinding implements ViewBinding {
    @NonNull
    public final SVGAImageView audioIndicator;
    @NonNull
    public final FrameLayout avatarArea;
    @NonNull
    public final NormalCircleImageView avatarView;
    @NonNull
    public final ImageView bigAvatarMask;
    @NonNull
    public final ImageView iconVoice;
    @NonNull
    private final FrameLayout rootView;

    private LayoutBroadcastVideoAudioMaskBinding(@NonNull FrameLayout frameLayout, @NonNull SVGAImageView sVGAImageView, @NonNull FrameLayout frameLayout2, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.audioIndicator = sVGAImageView;
        this.avatarArea = frameLayout2;
        this.avatarView = normalCircleImageView;
        this.bigAvatarMask = imageView;
        this.iconVoice = imageView2;
    }

    @NonNull
    public static LayoutBroadcastVideoAudioMaskBinding bind(@NonNull View view) {
        int i9 = R.id.audio_indicator;
        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.audio_indicator);
        if (sVGAImageView != null) {
            i9 = R.id.avatar_area;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.avatar_area);
            if (frameLayout != null) {
                i9 = R.id.avatar_view;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar_view);
                if (normalCircleImageView != null) {
                    i9 = R.id.big_avatar_mask;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.big_avatar_mask);
                    if (imageView != null) {
                        i9 = R.id.icon_voice;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_voice);
                        if (imageView2 != null) {
                            return new LayoutBroadcastVideoAudioMaskBinding((FrameLayout) view, sVGAImageView, frameLayout, normalCircleImageView, imageView, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBroadcastVideoAudioMaskBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBroadcastVideoAudioMaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_broadcast_video_audio_mask, viewGroup, false);
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
