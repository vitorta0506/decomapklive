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
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class LayoutBuyVvipCustomerServiceBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottomTip;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tips1;
    @NonNull
    public final TextView tips2;
    @NonNull
    public final SvgaImageViewV2 vvCustomerServiceSIV;

    private LayoutBuyVvipCustomerServiceBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = relativeLayout;
        this.bottomTip = linearLayout;
        this.tips1 = textView;
        this.tips2 = textView2;
        this.vvCustomerServiceSIV = svgaImageViewV2;
    }

    @NonNull
    public static LayoutBuyVvipCustomerServiceBinding bind(@NonNull View view) {
        int i9 = R.id.bottom_tip;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_tip);
        if (linearLayout != null) {
            i9 = R.id.tips1;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tips1);
            if (textView != null) {
                i9 = R.id.tips2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tips2);
                if (textView2 != null) {
                    i9 = R.id.vvCustomerServiceSIV;
                    SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.vvCustomerServiceSIV);
                    if (svgaImageViewV2 != null) {
                        return new LayoutBuyVvipCustomerServiceBinding((RelativeLayout) view, linearLayout, textView, textView2, svgaImageViewV2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBuyVvipCustomerServiceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBuyVvipCustomerServiceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_buy_vvip_customer_service, viewGroup, false);
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