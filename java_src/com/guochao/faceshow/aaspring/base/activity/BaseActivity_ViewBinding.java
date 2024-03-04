package com.guochao.faceshow.aaspring.base.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseActivity_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseActivity f16065b;

    @UiThread
    public BaseActivity_ViewBinding(BaseActivity baseActivity, View view) {
        this.f16065b = baseActivity;
        baseActivity.mToolbar = (Toolbar) c.b(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseActivity baseActivity = this.f16065b;
        if (baseActivity != null) {
            this.f16065b = null;
            baseActivity.mToolbar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
