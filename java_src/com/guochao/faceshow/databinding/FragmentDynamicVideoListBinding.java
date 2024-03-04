package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TouchDownsView;
import com.guochao.faceshow.aaspring.views.UgcFooter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentDynamicVideoListBinding implements ViewBinding {
    @NonNull
    public final LinearLayout firstUse;
    @NonNull
    public final ViewPager2 recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final TouchDownsView rootView;
    @NonNull
    public final TouchDownsView tochdow;
    @NonNull
    public final UgcFooter ugcFooter;

    private FragmentDynamicVideoListBinding(@NonNull TouchDownsView touchDownsView, @NonNull LinearLayout linearLayout, @NonNull ViewPager2 viewPager2, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull TouchDownsView touchDownsView2, @NonNull UgcFooter ugcFooter) {
        this.rootView = touchDownsView;
        this.firstUse = linearLayout;
        this.recyclerView = viewPager2;
        this.refreshLayout = smartRefreshLayout;
        this.tochdow = touchDownsView2;
        this.ugcFooter = ugcFooter;
    }

    @NonNull
    public static FragmentDynamicVideoListBinding bind(@NonNull View view) {
        int i9 = R.id.first_use;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_use);
        if (linearLayout != null) {
            i9 = R.id.recycler_view;
            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (viewPager2 != null) {
                i9 = R.id.refresh_layout;
                SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                if (smartRefreshLayout != null) {
                    TouchDownsView touchDownsView = (TouchDownsView) view;
                    i9 = R.id.ugc_footer;
                    UgcFooter ugcFooter = (UgcFooter) ViewBindings.findChildViewById(view, R.id.ugc_footer);
                    if (ugcFooter != null) {
                        return new FragmentDynamicVideoListBinding(touchDownsView, linearLayout, viewPager2, smartRefreshLayout, touchDownsView, ugcFooter);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentDynamicVideoListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDynamicVideoListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_dynamic_video_list, viewGroup, false);
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
