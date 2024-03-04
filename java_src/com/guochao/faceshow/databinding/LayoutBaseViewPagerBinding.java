package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class LayoutBaseViewPagerBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final ViewPager viewPager;

    private LayoutBaseViewPagerBinding(@NonNull LinearLayout linearLayout, @NonNull TabLayout tabLayout, @NonNull ViewPager viewPager) {
        this.rootView = linearLayout;
        this.tabs = tabLayout;
        this.viewPager = viewPager;
    }

    @NonNull
    public static LayoutBaseViewPagerBinding bind(@NonNull View view) {
        int i9 = R.id.tabs;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
        if (tabLayout != null) {
            i9 = R.id.view_pager;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (viewPager != null) {
                return new LayoutBaseViewPagerBinding((LinearLayout) view, tabLayout, viewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBaseViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBaseViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_base_view_pager, viewGroup, false);
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
