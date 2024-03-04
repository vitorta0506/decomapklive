package com.guochao.faceshow.aaspring.base.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class BaseViewPagerFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseViewPagerFragment f16137b;

    @UiThread
    public BaseViewPagerFragment_ViewBinding(BaseViewPagerFragment baseViewPagerFragment, View view) {
        this.f16137b = baseViewPagerFragment;
        baseViewPagerFragment.mViewPager = (ViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'mViewPager'", ViewPager.class);
        baseViewPagerFragment.mTabLayout = (TabLayout) butterknife.internal.c.b(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseViewPagerFragment baseViewPagerFragment = this.f16137b;
        if (baseViewPagerFragment != null) {
            this.f16137b = null;
            baseViewPagerFragment.mViewPager = null;
            baseViewPagerFragment.mTabLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
