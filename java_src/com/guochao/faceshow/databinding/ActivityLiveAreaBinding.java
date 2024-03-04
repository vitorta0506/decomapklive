package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NoScrollViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityLiveAreaBinding implements ViewBinding {
    @NonNull
    public final ImageView arrowMoreCountry;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final NoScrollViewPager viewPager;

    private ActivityLiveAreaBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TabLayout tabLayout, @NonNull NoScrollViewPager noScrollViewPager) {
        this.rootView = linearLayout;
        this.arrowMoreCountry = imageView;
        this.tabs = tabLayout;
        this.viewPager = noScrollViewPager;
    }

    @NonNull
    public static ActivityLiveAreaBinding bind(@NonNull View view) {
        int i9 = R.id.arrow_more_country;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow_more_country);
        if (imageView != null) {
            i9 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
            if (tabLayout != null) {
                i9 = R.id.view_pager;
                NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                if (noScrollViewPager != null) {
                    return new ActivityLiveAreaBinding((LinearLayout) view, imageView, tabLayout, noScrollViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityLiveAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLiveAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_live_area, viewGroup, false);
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
