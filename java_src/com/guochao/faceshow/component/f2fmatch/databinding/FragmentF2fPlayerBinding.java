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
public final class FragmentF2fPlayerBinding implements ViewBinding {
    @NonNull
    public final TXCloudVideoView playerView;
    @NonNull
    public final FrameLayout playerViewParent;
    @NonNull
    private final FrameLayout rootView;

    private FragmentF2fPlayerBinding(@NonNull FrameLayout frameLayout, @NonNull TXCloudVideoView tXCloudVideoView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.playerView = tXCloudVideoView;
        this.playerViewParent = frameLayout2;
    }

    @NonNull
    public static FragmentF2fPlayerBinding bind(@NonNull View view) {
        int i9 = R$id.player_view;
        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, i9);
        if (tXCloudVideoView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new FragmentF2fPlayerBinding(frameLayout, tXCloudVideoView, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentF2fPlayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fPlayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_player, viewGroup, false);
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
