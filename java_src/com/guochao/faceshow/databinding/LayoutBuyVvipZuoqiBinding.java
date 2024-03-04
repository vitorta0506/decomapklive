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
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutBuyVvipZuoqiBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottomTip;
    @NonNull
    public final ImageView car;
    @NonNull
    public final TextView nickname2;
    @NonNull
    public final LinearLayout nicknameArea;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tips1;
    @NonNull
    public final TextView tips2;
    @NonNull
    public final VipIndicatorView vipIndicatorView;
    @NonNull
    public final RelativeLayout zuoqiArea;

    private LayoutBuyVvipZuoqiBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull VipIndicatorView vipIndicatorView, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.bottomTip = linearLayout;
        this.car = imageView;
        this.nickname2 = textView;
        this.nicknameArea = linearLayout2;
        this.tips1 = textView2;
        this.tips2 = textView3;
        this.vipIndicatorView = vipIndicatorView;
        this.zuoqiArea = relativeLayout2;
    }

    @NonNull
    public static LayoutBuyVvipZuoqiBinding bind(@NonNull View view) {
        int i9 = R.id.bottom_tip;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_tip);
        if (linearLayout != null) {
            i9 = R.id.car;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.car);
            if (imageView != null) {
                i9 = R.id.nickname_2;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname_2);
                if (textView != null) {
                    i9 = R.id.nickname_area;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nickname_area);
                    if (linearLayout2 != null) {
                        i9 = R.id.tips1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tips1);
                        if (textView2 != null) {
                            i9 = R.id.tips2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tips2);
                            if (textView3 != null) {
                                i9 = R.id.vip_indicator_view;
                                VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                                if (vipIndicatorView != null) {
                                    i9 = R.id.zuoqi_area;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.zuoqi_area);
                                    if (relativeLayout != null) {
                                        return new LayoutBuyVvipZuoqiBinding((RelativeLayout) view, linearLayout, imageView, textView, linearLayout2, textView2, textView3, vipIndicatorView, relativeLayout);
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
    public static LayoutBuyVvipZuoqiBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBuyVvipZuoqiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_buy_vvip_zuoqi, viewGroup, false);
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
