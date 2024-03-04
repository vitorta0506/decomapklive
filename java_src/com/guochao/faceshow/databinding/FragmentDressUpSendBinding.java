package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class FragmentDressUpSendBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView dressTag;
    @NonNull
    public final TextView name;
    @NonNull
    private final CoordinatorLayout rootView;
    @NonNull
    public final DisTouchRecyclerView specContent;
    @NonNull
    public final TabLayout tablayout;
    @NonNull
    public final ImageView thumb;
    @NonNull
    public final RtlViewPager viewPager;

    private FragmentDressUpSendBinding(@NonNull CoordinatorLayout coordinatorLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull DisTouchRecyclerView disTouchRecyclerView, @NonNull TabLayout tabLayout, @NonNull ImageView imageView2, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = coordinatorLayout;
        this.avatarView = headPortraitView;
        this.dressTag = imageView;
        this.name = textView;
        this.specContent = disTouchRecyclerView;
        this.tablayout = tabLayout;
        this.thumb = imageView2;
        this.viewPager = rtlViewPager;
    }

    @NonNull
    public static FragmentDressUpSendBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.dress_tag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dress_tag);
            if (imageView != null) {
                i9 = R.id.name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView != null) {
                    i9 = R.id.spec_content;
                    DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.spec_content);
                    if (disTouchRecyclerView != null) {
                        i9 = R.id.tablayout;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tablayout);
                        if (tabLayout != null) {
                            i9 = R.id.thumb;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.thumb);
                            if (imageView2 != null) {
                                i9 = R.id.view_pager;
                                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                if (rtlViewPager != null) {
                                    return new FragmentDressUpSendBinding((CoordinatorLayout) view, headPortraitView, imageView, textView, disTouchRecyclerView, tabLayout, imageView2, rtlViewPager);
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
    public static FragmentDressUpSendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDressUpSendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_dress_up_send, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }
}
