package com.guochao.faceshow.mine.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes4.dex */
public class MyWalletActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MyWalletActivity f25646c;

    @UiThread
    public MyWalletActivity_ViewBinding(MyWalletActivity myWalletActivity, View view) {
        super(myWalletActivity, view);
        this.f25646c = myWalletActivity;
        myWalletActivity.floatTitleLay = (ViewGroup) c.d(view, R.id.float_title_back, "field 'floatTitleLay'", ViewGroup.class);
        myWalletActivity.tablayout = (TabLayout) c.d(view, R.id.tablayout, "field 'tablayout'", TabLayout.class);
        myWalletActivity.viewpager = (RtlViewPager) c.d(view, R.id.viewpager, "field 'viewpager'", RtlViewPager.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MyWalletActivity myWalletActivity = this.f25646c;
        if (myWalletActivity != null) {
            this.f25646c = null;
            myWalletActivity.floatTitleLay = null;
            myWalletActivity.tablayout = null;
            myWalletActivity.viewpager = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
