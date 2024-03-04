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
/* loaded from: classes2.dex */
public final class ActivityVideoPlayBinding implements ViewBinding {
    @NonNull
    public final FrameLayout mAcivityView;
    @NonNull
    public final FrameLayout mainLayout;
    @NonNull
    private final FrameLayout rootView;

    private ActivityVideoPlayBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.mAcivityView = frameLayout2;
        this.mainLayout = frameLayout3;
    }

    @NonNull
    public static ActivityVideoPlayBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.main_layout);
        if (frameLayout2 != null) {
            return new ActivityVideoPlayBinding(frameLayout, frameLayout, frameLayout2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.main_layout)));
    }

    @NonNull
    public static ActivityVideoPlayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityVideoPlayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_video_play, viewGroup, false);
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
