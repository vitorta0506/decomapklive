package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseVipGuideParentFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseVipGuideParentFragment f23349b;

    @UiThread
    public BaseVipGuideParentFragment_ViewBinding(BaseVipGuideParentFragment baseVipGuideParentFragment, View view) {
        this.f23349b = baseVipGuideParentFragment;
        baseVipGuideParentFragment.mViewPager2 = (ViewPager) c.d(view, R.id.viewpager2, "field 'mViewPager2'", ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseVipGuideParentFragment baseVipGuideParentFragment = this.f23349b;
        if (baseVipGuideParentFragment != null) {
            this.f23349b = null;
            baseVipGuideParentFragment.mViewPager2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
