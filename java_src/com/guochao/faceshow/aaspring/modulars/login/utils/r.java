package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
/* loaded from: classes3.dex */
public class r extends l {

    /* renamed from: e  reason: collision with root package name */
    BaseActivity f20594e;

    public r(Context context) {
        super(context);
        DelayIniter.initWeiBo();
        this.f20594e = (BaseActivity) context;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
    }
}
