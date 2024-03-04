package com.guochao.faceshow.aaspring.modulars.dressmarket;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class DressUpMarketActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DressUpMarketActivity f17623c;

    @UiThread
    public DressUpMarketActivity_ViewBinding(DressUpMarketActivity dressUpMarketActivity, View view) {
        super(dressUpMarketActivity, view);
        this.f17623c = dressUpMarketActivity;
        dressUpMarketActivity.tabs = (TabLayout) c.d(view, R.id.tabs, "field 'tabs'", TabLayout.class);
        dressUpMarketActivity.vpContent = (RtlViewPager) c.d(view, R.id.vp_content, "field 'vpContent'", RtlViewPager.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DressUpMarketActivity dressUpMarketActivity = this.f17623c;
        if (dressUpMarketActivity != null) {
            this.f17623c = null;
            dressUpMarketActivity.tabs = null;
            dressUpMarketActivity.vpContent = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
