package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class FragmentMessageAndFriendBinding implements ViewBinding {
    @NonNull
    public final TextView groupTips;
    @NonNull
    public final ImageView menu1;
    @NonNull
    public final ImageView menuSearch;
    @NonNull
    public final LinearLayout menus;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final LinearLayout toolbar;
    @NonNull
    public final StatusBarPlaceHolderView toolbarView;
    @NonNull
    public final ViewPager viewPager;

    private FragmentMessageAndFriendBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TabLayout tabLayout, @NonNull LinearLayout linearLayout2, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView, @NonNull ViewPager viewPager) {
        this.rootView = relativeLayout;
        this.groupTips = textView;
        this.menu1 = imageView;
        this.menuSearch = imageView2;
        this.menus = linearLayout;
        this.tabs = tabLayout;
        this.toolbar = linearLayout2;
        this.toolbarView = statusBarPlaceHolderView;
        this.viewPager = viewPager;
    }

    @NonNull
    public static FragmentMessageAndFriendBinding bind(@NonNull View view) {
        int i9 = R.id.group_tips;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.group_tips);
        if (textView != null) {
            i9 = R.id.menu_1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.menu_1);
            if (imageView != null) {
                i9 = R.id.menu_search;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.menu_search);
                if (imageView2 != null) {
                    i9 = R.id.menus;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.menus);
                    if (linearLayout != null) {
                        i9 = R.id.tabs;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                        if (tabLayout != null) {
                            i9 = R.id.toolbar;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (linearLayout2 != null) {
                                i9 = R.id.toolbar_view;
                                StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, R.id.toolbar_view);
                                if (statusBarPlaceHolderView != null) {
                                    i9 = R.id.view_pager;
                                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                    if (viewPager != null) {
                                        return new FragmentMessageAndFriendBinding((RelativeLayout) view, textView, imageView, imageView2, linearLayout, tabLayout, linearLayout2, statusBarPlaceHolderView, viewPager);
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
    public static FragmentMessageAndFriendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMessageAndFriendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_message_and_friend, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
