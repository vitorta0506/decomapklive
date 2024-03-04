package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutBuyVipGuideViewBinding implements ViewBinding {
    @NonNull
    private final RtlViewPager rootView;
    @NonNull
    public final RtlViewPager viewpager2;

    private LayoutBuyVipGuideViewBinding(@NonNull RtlViewPager rtlViewPager, @NonNull RtlViewPager rtlViewPager2) {
        this.rootView = rtlViewPager;
        this.viewpager2 = rtlViewPager2;
    }

    @NonNull
    public static LayoutBuyVipGuideViewBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        RtlViewPager rtlViewPager = (RtlViewPager) view;
        return new LayoutBuyVipGuideViewBinding(rtlViewPager, rtlViewPager);
    }

    @NonNull
    public static LayoutBuyVipGuideViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBuyVipGuideViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_buy_vip_guide_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RtlViewPager getRoot() {
        return this.rootView;
    }
}
