package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.view.ViewStub;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes3.dex */
public class IMFaceViewPagerFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private IMFaceViewPagerFragment f16969b;

    @UiThread
    public IMFaceViewPagerFragment_ViewBinding(IMFaceViewPagerFragment iMFaceViewPagerFragment, View view) {
        this.f16969b = iMFaceViewPagerFragment;
        iMFaceViewPagerFragment.mViewPager = (ViewPager2) butterknife.internal.c.d(view, R.id.view_pager, "field 'mViewPager'", ViewPager2.class);
        iMFaceViewPagerFragment.mPageIndicatorView = (PageIndicatorView) butterknife.internal.c.d(view, R.id.indicator, "field 'mPageIndicatorView'", PageIndicatorView.class);
        iMFaceViewPagerFragment.mViewStub = (ViewStub) butterknife.internal.c.b(view, R.id.view_stub, "field 'mViewStub'", ViewStub.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        IMFaceViewPagerFragment iMFaceViewPagerFragment = this.f16969b;
        if (iMFaceViewPagerFragment != null) {
            this.f16969b = null;
            iMFaceViewPagerFragment.mViewPager = null;
            iMFaceViewPagerFragment.mPageIndicatorView = null;
            iMFaceViewPagerFragment.mViewStub = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
