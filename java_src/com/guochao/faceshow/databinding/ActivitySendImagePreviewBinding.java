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
import com.guochao.faceshow.aaspring.views.HackyViewPager;
/* loaded from: classes2.dex */
public final class ActivitySendImagePreviewBinding implements ViewBinding {
    @NonNull
    public final TextView count;
    @NonNull
    public final FrameLayout flBottomNavigation;
    @NonNull
    public final FrameLayout flContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvCompile;
    @NonNull
    public final HackyViewPager viewPager;

    private ActivitySendImagePreviewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView2, @NonNull HackyViewPager hackyViewPager) {
        this.rootView = frameLayout;
        this.count = textView;
        this.flBottomNavigation = frameLayout2;
        this.flContent = frameLayout3;
        this.tvCompile = textView2;
        this.viewPager = hackyViewPager;
    }

    @NonNull
    public static ActivitySendImagePreviewBinding bind(@NonNull View view) {
        int i9 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i9 = R.id.fl_bottom_navigation;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_bottom_navigation);
            if (frameLayout != null) {
                FrameLayout frameLayout2 = (FrameLayout) view;
                i9 = R.id.tv_compile;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_compile);
                if (textView2 != null) {
                    i9 = R.id.view_pager;
                    HackyViewPager hackyViewPager = (HackyViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                    if (hackyViewPager != null) {
                        return new ActivitySendImagePreviewBinding(frameLayout2, textView, frameLayout, frameLayout2, textView2, hackyViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySendImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySendImagePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_send_image_preview, viewGroup, false);
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
