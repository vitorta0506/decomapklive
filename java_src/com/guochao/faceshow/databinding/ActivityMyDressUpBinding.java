package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class ActivityMyDressUpBinding implements ViewBinding {
    @NonNull
    public final BaseTitleBinding floatTitleBack;
    @NonNull
    public final RelativeLayout layContent;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final RtlViewPager vpContent;

    private ActivityMyDressUpBinding(@NonNull RelativeLayout relativeLayout, @NonNull BaseTitleBinding baseTitleBinding, @NonNull RelativeLayout relativeLayout2, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = relativeLayout;
        this.floatTitleBack = baseTitleBinding;
        this.layContent = relativeLayout2;
        this.tabs = tabLayout;
        this.vpContent = rtlViewPager;
    }

    @NonNull
    public static ActivityMyDressUpBinding bind(@NonNull View view) {
        int i9 = R.id.float_title_back;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.float_title_back);
        if (findChildViewById != null) {
            BaseTitleBinding bind = BaseTitleBinding.bind(findChildViewById);
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i9 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
            if (tabLayout != null) {
                i9 = R.id.vp_content;
                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.vp_content);
                if (rtlViewPager != null) {
                    return new ActivityMyDressUpBinding(relativeLayout, bind, relativeLayout, tabLayout, rtlViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMyDressUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMyDressUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_my_dress_up, viewGroup, false);
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
