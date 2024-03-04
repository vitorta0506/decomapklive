package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ObservableScrollView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentRechargeBinding implements ViewBinding {
    @NonNull
    public final FragmentContainerView fragmentContainer;
    @NonNull
    public final View gameCoinIndicator;
    @NonNull
    public final ImageView ivTitleBar;
    @NonNull
    public final View normalIconIndicator;
    @NonNull
    public final HeaderRechargeBinding rechargeHeader;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ObservableScrollView scrollView;
    @NonNull
    public final TextView tvGameCoin;
    @NonNull
    public final TextView tvNormalCoin;

    private FragmentRechargeBinding(@NonNull FrameLayout frameLayout, @NonNull FragmentContainerView fragmentContainerView, @NonNull View view, @NonNull ImageView imageView, @NonNull View view2, @NonNull HeaderRechargeBinding headerRechargeBinding, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull ObservableScrollView observableScrollView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.fragmentContainer = fragmentContainerView;
        this.gameCoinIndicator = view;
        this.ivTitleBar = imageView;
        this.normalIconIndicator = view2;
        this.rechargeHeader = headerRechargeBinding;
        this.refreshLayout = smartRefreshLayout;
        this.scrollView = observableScrollView;
        this.tvGameCoin = textView;
        this.tvNormalCoin = textView2;
    }

    @NonNull
    public static FragmentRechargeBinding bind(@NonNull View view) {
        int i9 = R.id.fragment_container;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container);
        if (fragmentContainerView != null) {
            i9 = R.id.game_coin_indicator;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.game_coin_indicator);
            if (findChildViewById != null) {
                i9 = R.id.iv_title_bar;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_title_bar);
                if (imageView != null) {
                    i9 = R.id.normal_icon_indicator;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.normal_icon_indicator);
                    if (findChildViewById2 != null) {
                        i9 = R.id.recharge_header;
                        View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.recharge_header);
                        if (findChildViewById3 != null) {
                            HeaderRechargeBinding bind = HeaderRechargeBinding.bind(findChildViewById3);
                            i9 = R.id.refresh_layout;
                            SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                            if (smartRefreshLayout != null) {
                                i9 = R.id.scroll_view;
                                ObservableScrollView observableScrollView = (ObservableScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                                if (observableScrollView != null) {
                                    i9 = R.id.tv_game_coin;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_coin);
                                    if (textView != null) {
                                        i9 = R.id.tv_normal_coin;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_normal_coin);
                                        if (textView2 != null) {
                                            return new FragmentRechargeBinding((FrameLayout) view, fragmentContainerView, findChildViewById, imageView, findChildViewById2, bind, smartRefreshLayout, observableScrollView, textView, textView2);
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
    public static FragmentRechargeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRechargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_recharge, viewGroup, false);
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
