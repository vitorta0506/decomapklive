package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ObservableHorizontalScrollView;
/* loaded from: classes2.dex */
public final class LiveActivityBannerLayoutBinding implements ViewBinding {
    @NonNull
    public final ImageView ivActivity;
    @NonNull
    public final ObservableHorizontalScrollView liveScrollLayout;
    @NonNull
    public final TextView liveTopRankTips;
    @NonNull
    private final FrameLayout rootView;

    private LiveActivityBannerLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ObservableHorizontalScrollView observableHorizontalScrollView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.ivActivity = imageView;
        this.liveScrollLayout = observableHorizontalScrollView;
        this.liveTopRankTips = textView;
    }

    @NonNull
    public static LiveActivityBannerLayoutBinding bind(@NonNull View view) {
        int i9 = R.id.iv_activity;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_activity);
        if (imageView != null) {
            i9 = R.id.live_scroll_layout;
            ObservableHorizontalScrollView observableHorizontalScrollView = (ObservableHorizontalScrollView) ViewBindings.findChildViewById(view, R.id.live_scroll_layout);
            if (observableHorizontalScrollView != null) {
                i9 = R.id.live_top_rank_tips;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.live_top_rank_tips);
                if (textView != null) {
                    return new LiveActivityBannerLayoutBinding((FrameLayout) view, imageView, observableHorizontalScrollView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveActivityBannerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveActivityBannerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_activity_banner_layout, viewGroup, false);
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
