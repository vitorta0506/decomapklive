package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
/* loaded from: classes2.dex */
public final class FragmentBuyVipContainerBinding implements ViewBinding {
    @NonNull
    public final RatioFrameLayout bgTitleLay;
    @NonNull
    public final FragmentContainerView buyVipView;
    @NonNull
    public final ImageView close;
    @NonNull
    public final FrameLayout dialogVipTitle;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView to1v1;
    @NonNull
    public final VipSwitcherView vipSwicher;

    private FragmentBuyVipContainerBinding(@NonNull FrameLayout frameLayout, @NonNull RatioFrameLayout ratioFrameLayout, @NonNull FragmentContainerView fragmentContainerView, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull VipSwitcherView vipSwitcherView) {
        this.rootView = frameLayout;
        this.bgTitleLay = ratioFrameLayout;
        this.buyVipView = fragmentContainerView;
        this.close = imageView;
        this.dialogVipTitle = frameLayout2;
        this.to1v1 = imageView2;
        this.vipSwicher = vipSwitcherView;
    }

    @NonNull
    public static FragmentBuyVipContainerBinding bind(@NonNull View view) {
        int i9 = R.id.bg_title_lay;
        RatioFrameLayout ratioFrameLayout = (RatioFrameLayout) ViewBindings.findChildViewById(view, R.id.bg_title_lay);
        if (ratioFrameLayout != null) {
            i9 = R.id.buy_vip_view;
            FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.buy_vip_view);
            if (fragmentContainerView != null) {
                i9 = R.id.close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                if (imageView != null) {
                    i9 = R.id.dialog_vip_title;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.dialog_vip_title);
                    if (frameLayout != null) {
                        i9 = R.id.to_1v1;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.to_1v1);
                        if (imageView2 != null) {
                            i9 = R.id.vip_swicher;
                            VipSwitcherView vipSwitcherView = (VipSwitcherView) ViewBindings.findChildViewById(view, R.id.vip_swicher);
                            if (vipSwitcherView != null) {
                                return new FragmentBuyVipContainerBinding((FrameLayout) view, ratioFrameLayout, fragmentContainerView, imageView, frameLayout, imageView2, vipSwitcherView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentBuyVipContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentBuyVipContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_buy_vip_container, viewGroup, false);
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
