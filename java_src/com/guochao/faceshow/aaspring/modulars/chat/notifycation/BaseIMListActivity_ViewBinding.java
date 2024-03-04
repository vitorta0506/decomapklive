package com.guochao.faceshow.aaspring.modulars.chat.notifycation;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class BaseIMListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BaseIMListActivity f17059c;

    @UiThread
    public BaseIMListActivity_ViewBinding(BaseIMListActivity baseIMListActivity, View view) {
        super(baseIMListActivity, view);
        this.f17059c = baseIMListActivity;
        baseIMListActivity.recyclerContentArea = c.c(view, R.id.recycler_content_area, "field 'recyclerContentArea'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BaseIMListActivity baseIMListActivity = this.f17059c;
        if (baseIMListActivity != null) {
            this.f17059c = null;
            baseIMListActivity.recyclerContentArea = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
