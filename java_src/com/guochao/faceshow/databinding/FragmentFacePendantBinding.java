package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class FragmentFacePendantBinding implements ViewBinding {
    @NonNull
    public final LinearLayout content;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout tabLay;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final RtlViewPager vpContent;

    private FragmentFacePendantBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = frameLayout;
        this.content = linearLayout;
        this.tabLay = linearLayout2;
        this.tabs = tabLayout;
        this.vpContent = rtlViewPager;
    }

    @NonNull
    public static FragmentFacePendantBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content);
        if (linearLayout != null) {
            i9 = R.id.tab_lay;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tab_lay);
            if (linearLayout2 != null) {
                i9 = R.id.tabs;
                TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                if (tabLayout != null) {
                    i9 = R.id.vp_content;
                    RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.vp_content);
                    if (rtlViewPager != null) {
                        return new FragmentFacePendantBinding((FrameLayout) view, linearLayout, linearLayout2, tabLayout, rtlViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFacePendantBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFacePendantBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_face_pendant, viewGroup, false);
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
