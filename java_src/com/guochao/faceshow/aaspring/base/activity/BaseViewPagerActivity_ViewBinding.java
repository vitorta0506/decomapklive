package com.guochao.faceshow.aaspring.base.activity;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class BaseViewPagerActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BaseViewPagerActivity f16070c;

    @UiThread
    public BaseViewPagerActivity_ViewBinding(BaseViewPagerActivity baseViewPagerActivity, View view) {
        super(baseViewPagerActivity, view);
        this.f16070c = baseViewPagerActivity;
        baseViewPagerActivity.mViewPager = (ViewPager) c.b(view, R.id.view_pager, "field 'mViewPager'", ViewPager.class);
        baseViewPagerActivity.mTabLayout = (TabLayout) c.b(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BaseViewPagerActivity baseViewPagerActivity = this.f16070c;
        if (baseViewPagerActivity != null) {
            this.f16070c = null;
            baseViewPagerActivity.mViewPager = null;
            baseViewPagerActivity.mTabLayout = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
