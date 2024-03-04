package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.login.utils.q;
/* loaded from: classes3.dex */
public abstract class BaseCountDownActivity extends BaseLoginActivity implements q.b {

    /* renamed from: i  reason: collision with root package name */
    q f20175i;

    public abstract int m0();

    protected abstract void n0(boolean z10);

    public void o0() {
        this.f20175i.g(m0());
        n0(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        q d10 = q.d();
        this.f20175i = d10;
        d10.setOnCountDownListener(this);
        if (this.f20175i.f(m0())) {
            this.f20175i.g(m0());
        }
        n0(this.f20175i.f(m0()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f20175i.setOnCountDownListener(null);
        this.f20175i.h();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.q.b
    public void onFinish() {
        n0(false);
    }
}
