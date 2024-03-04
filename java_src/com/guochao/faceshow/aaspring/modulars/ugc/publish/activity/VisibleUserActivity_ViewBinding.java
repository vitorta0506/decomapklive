package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class VisibleUserActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private VisibleUserActivity f22999c;

    @UiThread
    public VisibleUserActivity_ViewBinding(VisibleUserActivity visibleUserActivity, View view) {
        super(visibleUserActivity, view);
        this.f22999c = visibleUserActivity;
        visibleUserActivity.recyclerContent = (ViewGroup) c.d(view, R.id.recycler_content_area, "field 'recyclerContent'", ViewGroup.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VisibleUserActivity visibleUserActivity = this.f22999c;
        if (visibleUserActivity != null) {
            this.f22999c = null;
            visibleUserActivity.recyclerContent = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
