package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityLiveContributionListBinding implements ViewBinding {
    @NonNull
    public final ImageView backIV;
    @NonNull
    public final LinearLayout floatTitleBack;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TabLayout tablayout;
    @NonNull
    public final TextView title;
    @NonNull
    public final ImageView titleHelp;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final RtlViewPager viewpager;

    private ActivityLiveContributionListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TabLayout tabLayout, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull Toolbar toolbar, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = constraintLayout;
        this.backIV = imageView;
        this.floatTitleBack = linearLayout;
        this.tablayout = tabLayout;
        this.title = textView;
        this.titleHelp = imageView2;
        this.toolbar = toolbar;
        this.viewpager = rtlViewPager;
    }

    @NonNull
    public static ActivityLiveContributionListBinding bind(@NonNull View view) {
        int i9 = R.id.backIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backIV);
        if (imageView != null) {
            i9 = R.id.float_title_back;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
            if (linearLayout != null) {
                i9 = R.id.tablayout;
                TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tablayout);
                if (tabLayout != null) {
                    i9 = 16908310;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908310);
                    if (textView != null) {
                        i9 = R.id.title_help;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.title_help);
                        if (imageView2 != null) {
                            i9 = R.id.toolbar;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (toolbar != null) {
                                i9 = R.id.viewpager;
                                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
                                if (rtlViewPager != null) {
                                    return new ActivityLiveContributionListBinding((ConstraintLayout) view, imageView, linearLayout, tabLayout, textView, imageView2, toolbar, rtlViewPager);
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
    public static ActivityLiveContributionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLiveContributionListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_live_contribution_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
