package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class FragmentUgcGroundBinding implements ViewBinding {
    @NonNull
    public final AppBarLayout appbarLayout;
    @NonNull
    public final ImageView backButton;
    @NonNull
    public final ImageView genderSelector;
    @NonNull
    public final SearchTvViewBinding ilSearch;
    @NonNull
    public final LinearLayout laySendDynamic;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView scan;
    @NonNull
    public final ImageView sendDynamic;
    @NonNull
    public final TextView sendTip;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final LinearLayout ugcModuleTopLL;
    @NonNull
    public final SwipeBackViewPager viewPager;

    private FragmentUgcGroundBinding(@NonNull LinearLayout linearLayout, @NonNull AppBarLayout appBarLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SearchTvViewBinding searchTvViewBinding, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull TabLayout tabLayout, @NonNull LinearLayout linearLayout3, @NonNull SwipeBackViewPager swipeBackViewPager) {
        this.rootView = linearLayout;
        this.appbarLayout = appBarLayout;
        this.backButton = imageView;
        this.genderSelector = imageView2;
        this.ilSearch = searchTvViewBinding;
        this.laySendDynamic = linearLayout2;
        this.scan = imageView3;
        this.sendDynamic = imageView4;
        this.sendTip = textView;
        this.tabs = tabLayout;
        this.ugcModuleTopLL = linearLayout3;
        this.viewPager = swipeBackViewPager;
    }

    @NonNull
    public static FragmentUgcGroundBinding bind(@NonNull View view) {
        int i9 = R.id.appbar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar_layout);
        if (appBarLayout != null) {
            i9 = R.id.back_button;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_button);
            if (imageView != null) {
                i9 = R.id.gender_selector;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gender_selector);
                if (imageView2 != null) {
                    i9 = R.id.il_search;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.il_search);
                    if (findChildViewById != null) {
                        SearchTvViewBinding bind = SearchTvViewBinding.bind(findChildViewById);
                        i9 = R.id.lay_sendDynamic;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_sendDynamic);
                        if (linearLayout != null) {
                            i9 = R.id.scan;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.scan);
                            if (imageView3 != null) {
                                i9 = R.id.sendDynamic;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.sendDynamic);
                                if (imageView4 != null) {
                                    i9 = R.id.sendTip;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.sendTip);
                                    if (textView != null) {
                                        i9 = R.id.tabs;
                                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                                        if (tabLayout != null) {
                                            i9 = R.id.ugcModuleTopLL;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ugcModuleTopLL);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.view_pager;
                                                SwipeBackViewPager swipeBackViewPager = (SwipeBackViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                if (swipeBackViewPager != null) {
                                                    return new FragmentUgcGroundBinding((LinearLayout) view, appBarLayout, imageView, imageView2, bind, linearLayout, imageView3, imageView4, textView, tabLayout, linearLayout2, swipeBackViewPager);
                                                }
                                            }
                                        }
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
    public static FragmentUgcGroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentUgcGroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_ugc_ground, viewGroup, false);
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
