package com.guochao.faceshow.aaspring.base.fragment;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public abstract class BaseViewPagerFragment extends BaseFragment implements ViewPager.OnPageChangeListener {
    @Nullable
    @BindView
    protected TabLayout mTabLayout;
    @BindView
    ViewPager mViewPager;

    public abstract PagerAdapter P1(ViewPager viewPager);

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_base_view_pager;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        ViewPager viewPager = this.mViewPager;
        viewPager.setAdapter(P1(viewPager));
        this.mViewPager.addOnPageChangeListener(this);
        TabLayout tabLayout = this.mTabLayout;
        if (tabLayout != null) {
            tabLayout.setupWithViewPager(this.mViewPager);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
    }
}
