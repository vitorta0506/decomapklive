package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ItemContributionListBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView civHeader;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvNo;
    @NonNull
    public final TextView tvPriceCount;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ItemContributionListBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.civHeader = headPortraitView;
        this.tvNickName = textView;
        this.tvNo = textView2;
        this.tvPriceCount = textView3;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ItemContributionListBinding bind(@NonNull View view) {
        int i9 = R.id.civHeader;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.civHeader);
        if (headPortraitView != null) {
            i9 = R.id.tvNickName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvNickName);
            if (textView != null) {
                i9 = R.id.tvNo;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNo);
                if (textView2 != null) {
                    i9 = R.id.tvPriceCount;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPriceCount);
                    if (textView3 != null) {
                        i9 = R.id.vip_indicator;
                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                        if (vipIndicatorView != null) {
                            return new ItemContributionListBinding((LinearLayout) view, headPortraitView, textView, textView2, textView3, vipIndicatorView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemContributionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemContributionListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_contribution_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
