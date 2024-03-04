package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityWaitVideoCoverCheckBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;

    private ActivityWaitVideoCoverCheckBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    @NonNull
    public static ActivityWaitVideoCoverCheckBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new ActivityWaitVideoCoverCheckBinding((LinearLayout) view);
    }

    @NonNull
    public static ActivityWaitVideoCoverCheckBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityWaitVideoCoverCheckBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_wait_video_cover_check, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
