package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HalfHeightViewPager;
import com.guochao.faceshow.views.GCIndicatorView;
/* loaded from: classes2.dex */
public final class FragmentGiftViewPagerBinding implements ViewBinding {
    @NonNull
    public final GCIndicatorView indicator;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final HalfHeightViewPager viewPager;

    private FragmentGiftViewPagerBinding(@NonNull LinearLayout linearLayout, @NonNull GCIndicatorView gCIndicatorView, @NonNull HalfHeightViewPager halfHeightViewPager) {
        this.rootView = linearLayout;
        this.indicator = gCIndicatorView;
        this.viewPager = halfHeightViewPager;
    }

    @NonNull
    public static FragmentGiftViewPagerBinding bind(@NonNull View view) {
        int i9 = R.id.indicator;
        GCIndicatorView gCIndicatorView = (GCIndicatorView) ViewBindings.findChildViewById(view, R.id.indicator);
        if (gCIndicatorView != null) {
            i9 = R.id.view_pager;
            HalfHeightViewPager halfHeightViewPager = (HalfHeightViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (halfHeightViewPager != null) {
                return new FragmentGiftViewPagerBinding((LinearLayout) view, gCIndicatorView, halfHeightViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentGiftViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentGiftViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_gift_view_pager, viewGroup, false);
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
