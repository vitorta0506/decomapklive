package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes2.dex */
public final class FragmentImemojiViewPagerBinding implements ViewBinding {
    @NonNull
    public final PageIndicatorView indicator;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ViewPager2 viewPager;
    @NonNull
    public final ViewStub viewStub;

    private FragmentImemojiViewPagerBinding(@NonNull FrameLayout frameLayout, @NonNull PageIndicatorView pageIndicatorView, @NonNull ViewPager2 viewPager2, @NonNull ViewStub viewStub) {
        this.rootView = frameLayout;
        this.indicator = pageIndicatorView;
        this.viewPager = viewPager2;
        this.viewStub = viewStub;
    }

    @NonNull
    public static FragmentImemojiViewPagerBinding bind(@NonNull View view) {
        int i9 = R.id.indicator;
        PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.indicator);
        if (pageIndicatorView != null) {
            i9 = R.id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (viewPager2 != null) {
                i9 = R.id.view_stub;
                ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.view_stub);
                if (viewStub != null) {
                    return new FragmentImemojiViewPagerBinding((FrameLayout) view, pageIndicatorView, viewPager2, viewStub);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentImemojiViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentImemojiViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_imemoji_view_pager, viewGroup, false);
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
