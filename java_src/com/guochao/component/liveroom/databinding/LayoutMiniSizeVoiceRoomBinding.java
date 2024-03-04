package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public final class LayoutMiniSizeVoiceRoomBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final ImageView cover;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SvgaImageViewV2 svga;

    private LayoutMiniSizeVoiceRoomBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.cover = imageView2;
        this.svga = svgaImageViewV2;
    }

    @NonNull
    public static LayoutMiniSizeVoiceRoomBinding bind(@NonNull View view) {
        int i9 = R$id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.cover;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView2 != null) {
                i9 = R$id.svga;
                SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
                if (svgaImageViewV2 != null) {
                    return new LayoutMiniSizeVoiceRoomBinding((FrameLayout) view, imageView, imageView2, svgaImageViewV2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutMiniSizeVoiceRoomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutMiniSizeVoiceRoomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_mini_size_voice_room, viewGroup, false);
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
