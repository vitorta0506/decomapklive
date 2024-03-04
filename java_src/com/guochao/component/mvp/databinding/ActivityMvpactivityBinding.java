package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
import com.guochao.component.mvp.view.MVPInfoView;
import com.guochao.component.mvp.view.TitleView;
import com.guochao.component.mvp.view.WrapViewPager;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public final class ActivityMvpactivityBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView badgeIV;
    @NonNull
    public final TextView contactTV;
    @NonNull
    public final TextView getAllTV;
    @NonNull
    public final TextView getMVPTitle;
    @NonNull
    public final ImageView giftIV;
    @NonNull
    public final ImageView mvpBgIV;
    @NonNull
    public final MVPInfoView mvpInfoView;
    @NonNull
    public final ImageView mvpLevelIV;
    @NonNull
    public final TextView nickNameTV;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final NestedScrollView scrollView;
    @NonNull
    public final TabLayout tablayout;
    @NonNull
    public final TextView titleTV;
    @NonNull
    public final TitleView titleView;
    @NonNull
    public final ImageView top;
    @NonNull
    public final WrapViewPager viewpager;

    private ActivityMvpactivityBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull MVPInfoView mVPInfoView, @NonNull ImageView imageView4, @NonNull TextView textView4, @NonNull NestedScrollView nestedScrollView, @NonNull TabLayout tabLayout, @NonNull TextView textView5, @NonNull TitleView titleView, @NonNull ImageView imageView5, @NonNull WrapViewPager wrapViewPager) {
        this.rootView = relativeLayout;
        this.avatarView = headPortraitView;
        this.badgeIV = imageView;
        this.contactTV = textView;
        this.getAllTV = textView2;
        this.getMVPTitle = textView3;
        this.giftIV = imageView2;
        this.mvpBgIV = imageView3;
        this.mvpInfoView = mVPInfoView;
        this.mvpLevelIV = imageView4;
        this.nickNameTV = textView4;
        this.scrollView = nestedScrollView;
        this.tablayout = tabLayout;
        this.titleTV = textView5;
        this.titleView = titleView;
        this.top = imageView5;
        this.viewpager = wrapViewPager;
    }

    @NonNull
    public static ActivityMvpactivityBinding bind(@NonNull View view) {
        int i9 = R$id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, i9);
        if (headPortraitView != null) {
            i9 = R$id.badgeIV;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.contactTV;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    i9 = R$id.getAllTV;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.getMVPTitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView3 != null) {
                            i9 = R$id.giftIV;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                            if (imageView2 != null) {
                                i9 = R$id.mvpBgIV;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                if (imageView3 != null) {
                                    i9 = R$id.mvpInfoView;
                                    MVPInfoView mVPInfoView = (MVPInfoView) ViewBindings.findChildViewById(view, i9);
                                    if (mVPInfoView != null) {
                                        i9 = R$id.mvpLevelIV;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                        if (imageView4 != null) {
                                            i9 = R$id.nickNameTV;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                            if (textView4 != null) {
                                                i9 = R$id.scrollView;
                                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i9);
                                                if (nestedScrollView != null) {
                                                    i9 = R$id.tablayout;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i9);
                                                    if (tabLayout != null) {
                                                        i9 = R$id.titleTV;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                        if (textView5 != null) {
                                                            i9 = R$id.titleView;
                                                            TitleView titleView = (TitleView) ViewBindings.findChildViewById(view, i9);
                                                            if (titleView != null) {
                                                                i9 = R$id.top;
                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                                if (imageView5 != null) {
                                                                    i9 = R$id.viewpager;
                                                                    WrapViewPager wrapViewPager = (WrapViewPager) ViewBindings.findChildViewById(view, i9);
                                                                    if (wrapViewPager != null) {
                                                                        return new ActivityMvpactivityBinding((RelativeLayout) view, headPortraitView, imageView, textView, textView2, textView3, imageView2, imageView3, mVPInfoView, imageView4, textView4, nestedScrollView, tabLayout, textView5, titleView, imageView5, wrapViewPager);
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
    public static ActivityMvpactivityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMvpactivityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_mvpactivity, viewGroup, false);
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
