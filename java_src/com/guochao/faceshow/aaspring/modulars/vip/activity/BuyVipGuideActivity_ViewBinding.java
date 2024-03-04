package com.guochao.faceshow.aaspring.modulars.vip.activity;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
/* loaded from: classes3.dex */
public class BuyVipGuideActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BuyVipGuideActivity f23306c;

    @UiThread
    public BuyVipGuideActivity_ViewBinding(BuyVipGuideActivity buyVipGuideActivity, View view) {
        super(buyVipGuideActivity, view);
        this.f23306c = buyVipGuideActivity;
        buyVipGuideActivity.mVipSwitcherView = (VipSwitcherView) c.d(view, R.id.vip_swicher, "field 'mVipSwitcherView'", VipSwitcherView.class);
        buyVipGuideActivity.bgTitleLay = c.c(view, R.id.bg_title_lay, "field 'bgTitleLay'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BuyVipGuideActivity buyVipGuideActivity = this.f23306c;
        if (buyVipGuideActivity != null) {
            this.f23306c = null;
            buyVipGuideActivity.mVipSwitcherView = null;
            buyVipGuideActivity.bgTitleLay = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
