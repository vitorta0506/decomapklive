package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.UgcFooter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentLayoutShortVideoViewpager2Binding implements ViewBinding {
    @NonNull
    public final FrameLayout recyclerContentArea;
    @NonNull
    public final ViewPager2 recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final UgcFooter ugcFooter;

    private FragmentLayoutShortVideoViewpager2Binding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ViewPager2 viewPager2, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull UgcFooter ugcFooter) {
        this.rootView = frameLayout;
        this.recyclerContentArea = frameLayout2;
        this.recyclerView = viewPager2;
        this.refreshLayout = smartRefreshLayout;
        this.ugcFooter = ugcFooter;
    }

    @NonNull
    public static FragmentLayoutShortVideoViewpager2Binding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.recycler_view;
        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (viewPager2 != null) {
            i9 = R.id.refresh_layout;
            SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
            if (smartRefreshLayout != null) {
                i9 = R.id.ugc_footer;
                UgcFooter ugcFooter = (UgcFooter) ViewBindings.findChildViewById(view, R.id.ugc_footer);
                if (ugcFooter != null) {
                    return new FragmentLayoutShortVideoViewpager2Binding(frameLayout, frameLayout, viewPager2, smartRefreshLayout, ugcFooter);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLayoutShortVideoViewpager2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLayoutShortVideoViewpager2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_layout_short_video_viewpager2, viewGroup, false);
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
