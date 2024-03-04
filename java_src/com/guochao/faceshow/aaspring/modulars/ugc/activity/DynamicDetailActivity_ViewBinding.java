package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class DynamicDetailActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DynamicDetailActivity f22192c;

    @UiThread
    public DynamicDetailActivity_ViewBinding(DynamicDetailActivity dynamicDetailActivity, View view) {
        super(dynamicDetailActivity, view);
        this.f22192c = dynamicDetailActivity;
        dynamicDetailActivity.mViewGroup = (ViewGroup) butterknife.internal.c.d(view, R.id.content, "field 'mViewGroup'", ViewGroup.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DynamicDetailActivity dynamicDetailActivity = this.f22192c;
        if (dynamicDetailActivity != null) {
            this.f22192c = null;
            dynamicDetailActivity.mViewGroup = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
