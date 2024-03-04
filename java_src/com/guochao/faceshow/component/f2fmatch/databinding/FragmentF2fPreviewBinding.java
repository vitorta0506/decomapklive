package com.guochao.faceshow.component.f2fmatch.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$layout;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class FragmentF2fPreviewBinding implements ViewBinding {
    @NonNull
    public final FrameLayout largeVideo;
    @NonNull
    public final TXCloudVideoView previewView;
    @NonNull
    private final FrameLayout rootView;

    private FragmentF2fPreviewBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TXCloudVideoView tXCloudVideoView) {
        this.rootView = frameLayout;
        this.largeVideo = frameLayout2;
        this.previewView = tXCloudVideoView;
    }

    @NonNull
    public static FragmentF2fPreviewBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R$id.preview_view;
        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, i9);
        if (tXCloudVideoView != null) {
            return new FragmentF2fPreviewBinding(frameLayout, frameLayout, tXCloudVideoView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentF2fPreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fPreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_preview, viewGroup, false);
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
