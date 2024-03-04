package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class DialogLiveSignCenterBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final ImageView ivBack;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final RtlViewPager viewpager;
    @NonNull
    public final RtlViewPager viewpagerSingle;

    private DialogLiveSignCenterBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager, @NonNull RtlViewPager rtlViewPager2) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.ivBack = imageView;
        this.tabs = tabLayout;
        this.viewpager = rtlViewPager;
        this.viewpagerSingle = rtlViewPager2;
    }

    @NonNull
    public static DialogLiveSignCenterBinding bind(@NonNull View view) {
        int i9 = R$id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, i9);
        if (findChildViewById != null) {
            i9 = R$id.iv_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.tabs;
                TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i9);
                if (tabLayout != null) {
                    i9 = R$id.viewpager;
                    RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, i9);
                    if (rtlViewPager != null) {
                        i9 = R$id.viewpager_single;
                        RtlViewPager rtlViewPager2 = (RtlViewPager) ViewBindings.findChildViewById(view, i9);
                        if (rtlViewPager2 != null) {
                            return new DialogLiveSignCenterBinding((FrameLayout) view, findChildViewById, imageView, tabLayout, rtlViewPager, rtlViewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLiveSignCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLiveSignCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.dialog_live_sign_center, viewGroup, false);
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
