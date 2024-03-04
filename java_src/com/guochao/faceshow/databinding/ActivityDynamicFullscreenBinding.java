package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
import com.guochao.faceshow.aaspring.views.HackyViewPager;
/* loaded from: classes2.dex */
public final class ActivityDynamicFullscreenBinding implements ViewBinding {
    @NonNull
    public final FullScreenScrollToExitViewV2 content;
    @NonNull
    public final FrameLayout fullScreenView;
    @NonNull
    public final TextView indicator;
    @NonNull
    public final HackyViewPager pager;
    @NonNull
    private final FrameLayout rootView;

    private ActivityDynamicFullscreenBinding(@NonNull FrameLayout frameLayout, @NonNull FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull HackyViewPager hackyViewPager) {
        this.rootView = frameLayout;
        this.content = fullScreenScrollToExitViewV2;
        this.fullScreenView = frameLayout2;
        this.indicator = textView;
        this.pager = hackyViewPager;
    }

    @NonNull
    public static ActivityDynamicFullscreenBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2 = (FullScreenScrollToExitViewV2) ViewBindings.findChildViewById(view, R.id.content);
        if (fullScreenScrollToExitViewV2 != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i9 = R.id.indicator;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.indicator);
            if (textView != null) {
                i9 = R.id.pager;
                HackyViewPager hackyViewPager = (HackyViewPager) ViewBindings.findChildViewById(view, R.id.pager);
                if (hackyViewPager != null) {
                    return new ActivityDynamicFullscreenBinding(frameLayout, fullScreenScrollToExitViewV2, frameLayout, textView, hackyViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityDynamicFullscreenBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityDynamicFullscreenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_dynamic_fullscreen, viewGroup, false);
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
