package com.guochao.faceshow.aaspring.modulars.onevone.pendant.face;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class FacePendantFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FacePendantFragment f21030b;

    @UiThread
    public FacePendantFragment_ViewBinding(FacePendantFragment facePendantFragment, View view) {
        this.f21030b = facePendantFragment;
        facePendantFragment.tabs = (TabLayout) c.d(view, R.id.tabs, "field 'tabs'", TabLayout.class);
        facePendantFragment.vpContent = (RtlViewPager) c.d(view, R.id.vp_content, "field 'vpContent'", RtlViewPager.class);
        facePendantFragment.tabLay = (ViewGroup) c.d(view, R.id.tab_lay, "field 'tabLay'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FacePendantFragment facePendantFragment = this.f21030b;
        if (facePendantFragment != null) {
            this.f21030b = null;
            facePendantFragment.tabs = null;
            facePendantFragment.vpContent = null;
            facePendantFragment.tabLay = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
