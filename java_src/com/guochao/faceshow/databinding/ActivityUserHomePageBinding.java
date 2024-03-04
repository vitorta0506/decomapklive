package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class ActivityUserHomePageBinding implements ViewBinding {
    @NonNull
    public final AppBarLayout appbarLayout;
    @NonNull
    public final ImageView backButton;
    @NonNull
    public final FrameLayout bgHeaderLay;
    @NonNull
    public final LinearLayout bottomLay;
    @NonNull
    public final CoordinatorLayout contentArea;
    @NonNull
    public final View devView;
    @NonNull
    public final ImageView editUserInfo;
    @NonNull
    public final FrameLayout emptyContent;
    @NonNull
    public final FrameLayout freezeUser;
    @NonNull
    public final TextView frozeType;
    @NonNull
    public final LinearLayout headerLay;
    @NonNull
    public final ImageView ivMore;
    @NonNull
    public final ImageView leftBack;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView svga;
    @NonNull
    public final FrameLayout tabLay;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final TextView tvChat;
    @NonNull
    public final TextView tvFocus;
    @NonNull
    public final SwipeBackViewPager viewPager;

    private ActivityUserHomePageBinding(@NonNull FrameLayout frameLayout, @NonNull AppBarLayout appBarLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull SVGAImageView sVGAImageView, @NonNull FrameLayout frameLayout5, @NonNull TabLayout tabLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SwipeBackViewPager swipeBackViewPager) {
        this.rootView = frameLayout;
        this.appbarLayout = appBarLayout;
        this.backButton = imageView;
        this.bgHeaderLay = frameLayout2;
        this.bottomLay = linearLayout;
        this.contentArea = coordinatorLayout;
        this.devView = view;
        this.editUserInfo = imageView2;
        this.emptyContent = frameLayout3;
        this.freezeUser = frameLayout4;
        this.frozeType = textView;
        this.headerLay = linearLayout2;
        this.ivMore = imageView3;
        this.leftBack = imageView4;
        this.svga = sVGAImageView;
        this.tabLay = frameLayout5;
        this.tabs = tabLayout;
        this.tvChat = textView2;
        this.tvFocus = textView3;
        this.viewPager = swipeBackViewPager;
    }

    @NonNull
    public static ActivityUserHomePageBinding bind(@NonNull View view) {
        int i9 = R.id.appbar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar_layout);
        if (appBarLayout != null) {
            i9 = R.id.back_button;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_button);
            if (imageView != null) {
                i9 = R.id.bg_header_lay;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.bg_header_lay);
                if (frameLayout != null) {
                    i9 = R.id.bottom_lay;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_lay);
                    if (linearLayout != null) {
                        i9 = R.id.content_area;
                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.content_area);
                        if (coordinatorLayout != null) {
                            i9 = R.id.devView;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.devView);
                            if (findChildViewById != null) {
                                i9 = R.id.edit_user_info;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_user_info);
                                if (imageView2 != null) {
                                    i9 = R.id.empty_content;
                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.empty_content);
                                    if (frameLayout2 != null) {
                                        i9 = R.id.freeze_user;
                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.freeze_user);
                                        if (frameLayout3 != null) {
                                            i9 = R.id.froze_type;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.froze_type);
                                            if (textView != null) {
                                                i9 = R.id.header_lay;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.header_lay);
                                                if (linearLayout2 != null) {
                                                    i9 = R.id.iv_more;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
                                                    if (imageView3 != null) {
                                                        i9 = R.id.left_back;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.left_back);
                                                        if (imageView4 != null) {
                                                            i9 = R.id.svga;
                                                            SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga);
                                                            if (sVGAImageView != null) {
                                                                i9 = R.id.tab_lay;
                                                                FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.tab_lay);
                                                                if (frameLayout4 != null) {
                                                                    i9 = R.id.tabs;
                                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                                                                    if (tabLayout != null) {
                                                                        i9 = R.id.tv_chat;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_chat);
                                                                        if (textView2 != null) {
                                                                            i9 = R.id.tv_focus;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_focus);
                                                                            if (textView3 != null) {
                                                                                i9 = R.id.view_pager;
                                                                                SwipeBackViewPager swipeBackViewPager = (SwipeBackViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                                                if (swipeBackViewPager != null) {
                                                                                    return new ActivityUserHomePageBinding((FrameLayout) view, appBarLayout, imageView, frameLayout, linearLayout, coordinatorLayout, findChildViewById, imageView2, frameLayout2, frameLayout3, textView, linearLayout2, imageView3, imageView4, sVGAImageView, frameLayout4, tabLayout, textView2, textView3, swipeBackViewPager);
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
    public static ActivityUserHomePageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserHomePageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_home_page, viewGroup, false);
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
