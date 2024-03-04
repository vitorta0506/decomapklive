package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutBuyVipLiveBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottomTip;
    @NonNull
    public final HeadPortraitView headImg;
    @NonNull
    public final TextView nickname1;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tips1;
    @NonNull
    public final TextView tips2;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LayoutBuyVipLiveBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = relativeLayout;
        this.bottomTip = linearLayout;
        this.headImg = headPortraitView;
        this.nickname1 = textView;
        this.tips1 = textView2;
        this.tips2 = textView3;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LayoutBuyVipLiveBinding bind(@NonNull View view) {
        int i9 = R.id.bottom_tip;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_tip);
        if (linearLayout != null) {
            i9 = R.id.head_img;
            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head_img);
            if (headPortraitView != null) {
                i9 = R.id.nickname_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname_1);
                if (textView != null) {
                    i9 = R.id.tips1;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tips1);
                    if (textView2 != null) {
                        i9 = R.id.tips2;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tips2);
                        if (textView3 != null) {
                            i9 = R.id.vip_indicator_view;
                            VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                            if (vipIndicatorView != null) {
                                return new LayoutBuyVipLiveBinding((RelativeLayout) view, linearLayout, headPortraitView, textView, textView2, textView3, vipIndicatorView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBuyVipLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBuyVipLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_buy_vip_live, viewGroup, false);
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
