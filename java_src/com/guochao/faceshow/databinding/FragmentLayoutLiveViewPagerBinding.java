package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NoScrollViewPager;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentLayoutLiveViewPagerBinding implements ViewBinding {
    @NonNull
    public final SvgaImageViewV2 firstRecharge;
    @NonNull
    public final LinearLayout myRooms;
    @NonNull
    public final RelativeLayout rlContent;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final StatusBarPlaceHolderView stbpView;
    @NonNull
    public final SvgaImageViewV2 svga;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final ViewStub userGuide;
    @NonNull
    public final TextView userGuideMyRoom;
    @NonNull
    public final NoScrollViewPager viewPager;

    private FragmentLayoutLiveViewPagerBinding(@NonNull RelativeLayout relativeLayout, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView, @NonNull SvgaImageViewV2 svgaImageViewV22, @NonNull TabLayout tabLayout, @NonNull ViewStub viewStub, @NonNull TextView textView, @NonNull NoScrollViewPager noScrollViewPager) {
        this.rootView = relativeLayout;
        this.firstRecharge = svgaImageViewV2;
        this.myRooms = linearLayout;
        this.rlContent = relativeLayout2;
        this.stbpView = statusBarPlaceHolderView;
        this.svga = svgaImageViewV22;
        this.tabs = tabLayout;
        this.userGuide = viewStub;
        this.userGuideMyRoom = textView;
        this.viewPager = noScrollViewPager;
    }

    @NonNull
    public static FragmentLayoutLiveViewPagerBinding bind(@NonNull View view) {
        int i9 = R.id.first_recharge;
        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.first_recharge);
        if (svgaImageViewV2 != null) {
            i9 = R.id.my_rooms;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.my_rooms);
            if (linearLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i9 = R.id.stbp_view;
                StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, R.id.stbp_view);
                if (statusBarPlaceHolderView != null) {
                    i9 = R.id.svga;
                    SvgaImageViewV2 svgaImageViewV22 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.svga);
                    if (svgaImageViewV22 != null) {
                        i9 = R.id.tabs;
                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                        if (tabLayout != null) {
                            i9 = R.id.user_guide;
                            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.user_guide);
                            if (viewStub != null) {
                                i9 = R.id.user_guide_my_room;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_guide_my_room);
                                if (textView != null) {
                                    i9 = R.id.view_pager;
                                    NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                    if (noScrollViewPager != null) {
                                        return new FragmentLayoutLiveViewPagerBinding(relativeLayout, svgaImageViewV2, linearLayout, relativeLayout, statusBarPlaceHolderView, svgaImageViewV22, tabLayout, viewStub, textView, noScrollViewPager);
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
    public static FragmentLayoutLiveViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLayoutLiveViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_layout_live_view_pager, viewGroup, false);
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
