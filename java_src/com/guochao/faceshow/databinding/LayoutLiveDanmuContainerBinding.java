package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
/* loaded from: classes2.dex */
public final class LayoutLiveDanmuContainerBinding implements ViewBinding {
    @NonNull
    public final DanmuView danmu;
    @NonNull
    public final FrameLayout danmuArea;
    @NonNull
    private final FrameLayout rootView;

    private LayoutLiveDanmuContainerBinding(@NonNull FrameLayout frameLayout, @NonNull DanmuView danmuView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.danmu = danmuView;
        this.danmuArea = frameLayout2;
    }

    @NonNull
    public static LayoutLiveDanmuContainerBinding bind(@NonNull View view) {
        DanmuView danmuView = (DanmuView) ViewBindings.findChildViewById(view, R.id.danmu);
        if (danmuView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new LayoutLiveDanmuContainerBinding(frameLayout, danmuView, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.danmu)));
    }

    @NonNull
    public static LayoutLiveDanmuContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLiveDanmuContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_live_danmu_container, viewGroup, false);
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
