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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityRankListBinding implements ViewBinding {
    @NonNull
    public final ImageView backIV;
    @NonNull
    public final LinearLayout floatTitleBack;
    @NonNull
    public final LinearLayout llRg;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final StatusBarPlaceHolderView statusBarHolder;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final TextView tvDay;
    @NonNull
    public final TextView tvSub;
    @NonNull
    public final TextView tvWeek;
    @NonNull
    public final RtlViewPager viewPager;

    private ActivityRankListBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView, @NonNull TabLayout tabLayout, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = linearLayout;
        this.backIV = imageView;
        this.floatTitleBack = linearLayout2;
        this.llRg = linearLayout3;
        this.statusBarHolder = statusBarPlaceHolderView;
        this.tabs = tabLayout;
        this.toolbar = toolbar;
        this.tvDay = textView;
        this.tvSub = textView2;
        this.tvWeek = textView3;
        this.viewPager = rtlViewPager;
    }

    @NonNull
    public static ActivityRankListBinding bind(@NonNull View view) {
        int i9 = R.id.backIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backIV);
        if (imageView != null) {
            i9 = R.id.float_title_back;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
            if (linearLayout != null) {
                i9 = R.id.ll_rg;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_rg);
                if (linearLayout2 != null) {
                    i9 = R.id.status_bar_holder;
                    StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, R.id.status_bar_holder);
                    if (statusBarPlaceHolderView != null) {
                        i9 = R.id.tabs;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                        if (tabLayout != null) {
                            i9 = R.id.toolbar;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (toolbar != null) {
                                i9 = R.id.tv_day;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_day);
                                if (textView != null) {
                                    i9 = R.id.tv_sub;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub);
                                    if (textView2 != null) {
                                        i9 = R.id.tv_week;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_week);
                                        if (textView3 != null) {
                                            i9 = R.id.view_pager;
                                            RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                            if (rtlViewPager != null) {
                                                return new ActivityRankListBinding((LinearLayout) view, imageView, linearLayout, linearLayout2, statusBarPlaceHolderView, tabLayout, toolbar, textView, textView2, textView3, rtlViewPager);
                                            }
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
    public static ActivityRankListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityRankListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_rank_list, viewGroup, false);
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
