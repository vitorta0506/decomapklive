package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TouchDownsView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentShortVideo2Binding implements ViewBinding {
    @NonNull
    public final FrameLayout emptyView;
    @NonNull
    public final LinearLayout firstUse;
    @NonNull
    public final ImageView ivVideoBg;
    @NonNull
    public final TextView publish;
    @NonNull
    public final ViewPager2 recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final TouchDownsView rootView;
    @NonNull
    public final TouchDownsView tochdow;

    private FragmentShortVideo2Binding(@NonNull TouchDownsView touchDownsView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ViewPager2 viewPager2, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull TouchDownsView touchDownsView2) {
        this.rootView = touchDownsView;
        this.emptyView = frameLayout;
        this.firstUse = linearLayout;
        this.ivVideoBg = imageView;
        this.publish = textView;
        this.recyclerView = viewPager2;
        this.refreshLayout = smartRefreshLayout;
        this.tochdow = touchDownsView2;
    }

    @NonNull
    public static FragmentShortVideo2Binding bind(@NonNull View view) {
        int i9 = R.id.empty_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.empty_view);
        if (frameLayout != null) {
            i9 = R.id.first_use;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_use);
            if (linearLayout != null) {
                i9 = R.id.iv_video_bg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_video_bg);
                if (imageView != null) {
                    i9 = R.id.publish;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.publish);
                    if (textView != null) {
                        i9 = R.id.recycler_view;
                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.recycler_view);
                        if (viewPager2 != null) {
                            i9 = R.id.refresh_layout;
                            SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                            if (smartRefreshLayout != null) {
                                TouchDownsView touchDownsView = (TouchDownsView) view;
                                return new FragmentShortVideo2Binding(touchDownsView, frameLayout, linearLayout, imageView, textView, viewPager2, smartRefreshLayout, touchDownsView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentShortVideo2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentShortVideo2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_short_video2, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TouchDownsView getRoot() {
        return this.rootView;
    }
}
