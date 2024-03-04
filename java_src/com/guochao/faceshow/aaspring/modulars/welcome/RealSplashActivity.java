package com.guochao.faceshow.aaspring.modulars.welcome;

import android.graphics.Color;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
/* loaded from: classes3.dex */
public class RealSplashActivity extends SplashActivity {
    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(getActivity()).b(true).f(getResources().getColor(17170445)).a();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_activity_with_fragment;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        BaseApplication.getInstance().updateLocale();
        getWindow().setNavigationBarColor(Color.parseColor("#00000000"));
        super.initView();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
