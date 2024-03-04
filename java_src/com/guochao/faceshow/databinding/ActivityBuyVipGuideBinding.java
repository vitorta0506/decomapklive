package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
/* loaded from: classes2.dex */
public final class ActivityBuyVipGuideBinding implements ViewBinding {
    @NonNull
    public final RatioFrameLayout bgTitleLay;
    @NonNull
    public final FragmentContainerView buyVipView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final VipSwitcherView vipSwicher;

    private ActivityBuyVipGuideBinding(@NonNull FrameLayout frameLayout, @NonNull RatioFrameLayout ratioFrameLayout, @NonNull FragmentContainerView fragmentContainerView, @NonNull VipSwitcherView vipSwitcherView) {
        this.rootView = frameLayout;
        this.bgTitleLay = ratioFrameLayout;
        this.buyVipView = fragmentContainerView;
        this.vipSwicher = vipSwitcherView;
    }

    @NonNull
    public static ActivityBuyVipGuideBinding bind(@NonNull View view) {
        int i9 = R.id.bg_title_lay;
        RatioFrameLayout ratioFrameLayout = (RatioFrameLayout) ViewBindings.findChildViewById(view, R.id.bg_title_lay);
        if (ratioFrameLayout != null) {
            i9 = R.id.buy_vip_view;
            FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.buy_vip_view);
            if (fragmentContainerView != null) {
                i9 = R.id.vip_swicher;
                VipSwitcherView vipSwitcherView = (VipSwitcherView) ViewBindings.findChildViewById(view, R.id.vip_swicher);
                if (vipSwitcherView != null) {
                    return new ActivityBuyVipGuideBinding((FrameLayout) view, ratioFrameLayout, fragmentContainerView, vipSwitcherView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityBuyVipGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityBuyVipGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_buy_vip_guide, viewGroup, false);
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
