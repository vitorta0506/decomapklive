package com.guochao.faceshow.aaspring.modulars.main;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public final class SystemNotificationListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SystemNotificationListActivity f20645c;

    @UiThread
    public SystemNotificationListActivity_ViewBinding(SystemNotificationListActivity systemNotificationListActivity, View view) {
        super(systemNotificationListActivity, view);
        this.f20645c = systemNotificationListActivity;
        systemNotificationListActivity.recyclerView = (RecyclerView) c.d(view, R.id.recyclerView, "field 'recyclerView'", RecyclerView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SystemNotificationListActivity systemNotificationListActivity = this.f20645c;
        if (systemNotificationListActivity != null) {
            this.f20645c = null;
            systemNotificationListActivity.recyclerView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
