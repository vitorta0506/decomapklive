package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutDanmuViewBinding implements ViewBinding {
    @NonNull
    public final DanmuView danmu;
    @NonNull
    private final DanmuView rootView;

    private LayoutDanmuViewBinding(@NonNull DanmuView danmuView, @NonNull DanmuView danmuView2) {
        this.rootView = danmuView;
        this.danmu = danmuView2;
    }

    @NonNull
    public static LayoutDanmuViewBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        DanmuView danmuView = (DanmuView) view;
        return new LayoutDanmuViewBinding(danmuView, danmuView);
    }

    @NonNull
    public static LayoutDanmuViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDanmuViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_danmu_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public DanmuView getRoot() {
        return this.rootView;
    }
}
