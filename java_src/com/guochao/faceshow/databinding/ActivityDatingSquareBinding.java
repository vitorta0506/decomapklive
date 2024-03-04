package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class ActivityDatingSquareBinding implements ViewBinding {
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final ImageView genderSelector;
    @NonNull
    public final ImageView ivImage;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView svImage;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final SwipeBackViewPager viewPager;

    private ActivityDatingSquareBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SVGAImageView sVGAImageView, @NonNull TabLayout tabLayout, @NonNull TextView textView2, @NonNull Toolbar toolbar, @NonNull SwipeBackViewPager swipeBackViewPager) {
        this.rootView = frameLayout;
        this.content = frameLayout2;
        this.floatTitle = textView;
        this.genderSelector = imageView;
        this.ivImage = imageView2;
        this.svImage = sVGAImageView;
        this.tabs = tabLayout;
        this.title = textView2;
        this.toolbar = toolbar;
        this.viewPager = swipeBackViewPager;
    }

    @NonNull
    public static ActivityDatingSquareBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.float_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
        if (textView != null) {
            i9 = R.id.gender_selector;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gender_selector);
            if (imageView != null) {
                i9 = R.id.iv_image;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
                if (imageView2 != null) {
                    i9 = R.id.sv_image;
                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.sv_image);
                    if (sVGAImageView != null) {
                        i9 = R.id.tabs;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                        if (tabLayout != null) {
                            i9 = 16908310;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908310);
                            if (textView2 != null) {
                                i9 = R.id.toolbar;
                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                if (toolbar != null) {
                                    i9 = R.id.view_pager;
                                    SwipeBackViewPager swipeBackViewPager = (SwipeBackViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                    if (swipeBackViewPager != null) {
                                        return new ActivityDatingSquareBinding(frameLayout, frameLayout, textView, imageView, imageView2, sVGAImageView, tabLayout, textView2, toolbar, swipeBackViewPager);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityDatingSquareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityDatingSquareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_dating_square, viewGroup, false);
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
