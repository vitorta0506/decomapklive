package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityMyWalletBinding implements ViewBinding {
    @NonNull
    public final FrameLayout floatTitleBack;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TabLayout tablayout;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final RtlViewPager viewpager;

    private ActivityMyWalletBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TabLayout tabLayout, @NonNull Toolbar toolbar, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = frameLayout;
        this.floatTitleBack = frameLayout2;
        this.tablayout = tabLayout;
        this.toolbar = toolbar;
        this.viewpager = rtlViewPager;
    }

    @NonNull
    public static ActivityMyWalletBinding bind(@NonNull View view) {
        int i9 = R.id.float_title_back;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
        if (frameLayout != null) {
            i9 = R.id.tablayout;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tablayout);
            if (tabLayout != null) {
                i9 = R.id.toolbar;
                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                if (toolbar != null) {
                    i9 = R.id.viewpager;
                    RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
                    if (rtlViewPager != null) {
                        return new ActivityMyWalletBinding((FrameLayout) view, frameLayout, tabLayout, toolbar, rtlViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMyWalletBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMyWalletBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_my_wallet, viewGroup, false);
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
