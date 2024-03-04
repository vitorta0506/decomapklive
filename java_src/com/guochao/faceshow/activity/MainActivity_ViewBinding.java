package com.guochao.faceshow.activity;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class MainActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MainActivity f24571c;

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        super(mainActivity, view);
        this.f24571c = mainActivity;
        mainActivity.mTabs = (ViewGroup) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabs'", ViewGroup.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MainActivity mainActivity = this.f24571c;
        if (mainActivity != null) {
            this.f24571c = null;
            mainActivity.mTabs = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
