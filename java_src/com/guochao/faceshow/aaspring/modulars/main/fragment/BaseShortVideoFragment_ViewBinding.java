package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseShortVideoFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseShortVideoFragment f20702b;

    @UiThread
    public BaseShortVideoFragment_ViewBinding(BaseShortVideoFragment baseShortVideoFragment, View view) {
        this.f20702b = baseShortVideoFragment;
        baseShortVideoFragment.mViewPager2 = (ViewPager2) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mViewPager2'", ViewPager2.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseShortVideoFragment baseShortVideoFragment = this.f20702b;
        if (baseShortVideoFragment != null) {
            this.f20702b = null;
            baseShortVideoFragment.mViewPager2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
