package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityMarketDressUpBinding implements ViewBinding {
    @NonNull
    public final FragmentContainerView marqueeText;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final RtlViewPager vpContent;

    private ActivityMarketDressUpBinding(@NonNull LinearLayout linearLayout, @NonNull FragmentContainerView fragmentContainerView, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = linearLayout;
        this.marqueeText = fragmentContainerView;
        this.tabs = tabLayout;
        this.vpContent = rtlViewPager;
    }

    @NonNull
    public static ActivityMarketDressUpBinding bind(@NonNull View view) {
        int i9 = R.id.marquee_text;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.marquee_text);
        if (fragmentContainerView != null) {
            i9 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
            if (tabLayout != null) {
                i9 = R.id.vp_content;
                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.vp_content);
                if (rtlViewPager != null) {
                    return new ActivityMarketDressUpBinding((LinearLayout) view, fragmentContainerView, tabLayout, rtlViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMarketDressUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMarketDressUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_market_dress_up, viewGroup, false);
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
