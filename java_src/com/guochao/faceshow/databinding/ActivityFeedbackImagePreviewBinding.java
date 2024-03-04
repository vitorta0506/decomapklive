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
import com.guochao.faceshow.aaspring.views.HackyViewPager;
/* loaded from: classes2.dex */
public final class ActivityFeedbackImagePreviewBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final HackyViewPager viewpager;

    private ActivityFeedbackImagePreviewBinding(@NonNull FrameLayout frameLayout, @NonNull HackyViewPager hackyViewPager) {
        this.rootView = frameLayout;
        this.viewpager = hackyViewPager;
    }

    @NonNull
    public static ActivityFeedbackImagePreviewBinding bind(@NonNull View view) {
        HackyViewPager hackyViewPager = (HackyViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
        if (hackyViewPager != null) {
            return new ActivityFeedbackImagePreviewBinding((FrameLayout) view, hackyViewPager);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.viewpager)));
    }

    @NonNull
    public static ActivityFeedbackImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFeedbackImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_feedback_image_preview, viewGroup, false);
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
