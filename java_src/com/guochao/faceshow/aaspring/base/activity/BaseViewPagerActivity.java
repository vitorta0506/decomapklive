package com.guochao.faceshow.aaspring.base.activity;

import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public abstract class BaseViewPagerActivity extends BaseActivity {
    @Nullable
    @BindView
    public TabLayout mTabLayout;
    @Nullable
    @BindView
    public ViewPager mViewPager;

    public abstract PagerAdapter b0();

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            viewPager.setAdapter(b0());
        }
        TabLayout tabLayout = this.mTabLayout;
        if (tabLayout != null) {
            tabLayout.setupWithViewPager(this.mViewPager);
        }
    }
}
