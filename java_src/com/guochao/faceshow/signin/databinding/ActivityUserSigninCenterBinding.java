package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class ActivityUserSigninCenterBinding implements ViewBinding {
    @NonNull
    public final ImageView ivLeftBack;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView showDialogToggle;
    @NonNull
    public final ImageView signinRules;
    @NonNull
    public final Space statusBarSpace;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final FrameLayout titleBar;
    @NonNull
    public final TextView tvSignedCount;
    @NonNull
    public final TextView tvTitle;
    @NonNull
    public final RtlViewPager viewpager;
    @NonNull
    public final RtlViewPager viewpagerSingle;

    private ActivityUserSigninCenterBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull Space space, @NonNull TabLayout tabLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RtlViewPager rtlViewPager, @NonNull RtlViewPager rtlViewPager2) {
        this.rootView = frameLayout;
        this.ivLeftBack = imageView;
        this.recyclerView = recyclerView;
        this.showDialogToggle = imageView2;
        this.signinRules = imageView3;
        this.statusBarSpace = space;
        this.tabs = tabLayout;
        this.titleBar = frameLayout2;
        this.tvSignedCount = textView;
        this.tvTitle = textView2;
        this.viewpager = rtlViewPager;
        this.viewpagerSingle = rtlViewPager2;
    }

    @NonNull
    public static ActivityUserSigninCenterBinding bind(@NonNull View view) {
        int i9 = R$id.iv_left_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
            if (recyclerView != null) {
                i9 = R$id.show_dialog_toggle;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView2 != null) {
                    i9 = R$id.signin_rules;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView3 != null) {
                        i9 = R$id.status_bar_space;
                        Space space = (Space) ViewBindings.findChildViewById(view, i9);
                        if (space != null) {
                            i9 = R$id.tabs;
                            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i9);
                            if (tabLayout != null) {
                                i9 = R$id.title_bar;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                if (frameLayout != null) {
                                    i9 = R$id.tv_signed_count;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView != null) {
                                        i9 = R$id.tv_title;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                        if (textView2 != null) {
                                            i9 = R$id.viewpager;
                                            RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, i9);
                                            if (rtlViewPager != null) {
                                                i9 = R$id.viewpager_single;
                                                RtlViewPager rtlViewPager2 = (RtlViewPager) ViewBindings.findChildViewById(view, i9);
                                                if (rtlViewPager2 != null) {
                                                    return new ActivityUserSigninCenterBinding((FrameLayout) view, imageView, recyclerView, imageView2, imageView3, space, tabLayout, frameLayout, textView, textView2, rtlViewPager, rtlViewPager2);
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
    public static ActivityUserSigninCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserSigninCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_user_signin_center, viewGroup, false);
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
