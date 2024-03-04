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
/* loaded from: classes2.dex */
public final class FragmentFeedbackListBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    private final FrameLayout rootView;

    private FragmentFeedbackListBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
    }

    @NonNull
    public static FragmentFeedbackListBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            return new FragmentFeedbackListBinding((FrameLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_close)));
    }

    @NonNull
    public static FragmentFeedbackListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFeedbackListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_feedback_list, viewGroup, false);
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
