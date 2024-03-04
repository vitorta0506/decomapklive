package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityVideoBinding implements ViewBinding {
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TabLayout tablayout;
    @NonNull
    public final RtlViewPager viewpager;

    private ActivityVideoBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = linearLayout;
        this.mainLayout = linearLayout2;
        this.tablayout = tabLayout;
        this.viewpager = rtlViewPager;
    }

    @NonNull
    public static ActivityVideoBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.tablayout;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tablayout);
        if (tabLayout != null) {
            i9 = R.id.viewpager;
            RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
            if (rtlViewPager != null) {
                return new ActivityVideoBinding(linearLayout, linearLayout, tabLayout, rtlViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_video, viewGroup, false);
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
