package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
/* loaded from: classes3.dex */
public abstract class BaseVipGuideParentFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    int f23343a = 2;

    /* renamed from: b  reason: collision with root package name */
    int f23344b = 2;

    /* renamed from: c  reason: collision with root package name */
    public VipSwitcherView f23345c;
    @BindView
    public ViewPager mViewPager2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
            VipSwitcherView vipSwitcherView = BaseVipGuideParentFragment.this.f23345c;
            if (vipSwitcherView != null) {
                vipSwitcherView.b(i9, f10, i10);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            VipSwitcherView vipSwitcherView = BaseVipGuideParentFragment.this.f23345c;
            if (vipSwitcherView != null) {
                vipSwitcherView.setStyle(i9);
            }
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(EventTrackingV2Utils.vip_permiss_switch, String.valueOf(i9));
            eventTrackingV2Utils.track(EventTrackingV2Utils.vip_switch_tab);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private int f23347a;

        /* renamed from: b  reason: collision with root package name */
        private int f23348b;

        public b(@NonNull FragmentManager fragmentManager, int i9, int i10) {
            super(fragmentManager);
            this.f23347a = i9;
            this.f23348b = i10;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return BuyVipFragment.b2(i9 == 0 ? 1 : 2, this.f23347a, this.f23348b, i9);
        }
    }

    private void P1() {
        this.mViewPager2.setAdapter(new b(getChildFragmentManager(), this.f23343a, this.f23344b));
        int i9 = this.f23344b;
        if (i9 == 3) {
            this.mViewPager2.setCurrentItem(1);
        } else if (i9 == 4) {
            this.mViewPager2.setCurrentItem(0);
        }
        this.mViewPager2.addOnPageChangeListener(new a());
    }

    public void Q1(VipSwitcherView vipSwitcherView) {
        this.f23345c = vipSwitcherView;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_buy_vip_guide_view;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        P1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f23343a = getArguments().getInt("mode");
            this.f23344b = getArguments().getInt("from");
        }
    }
}
