package com.guochao.faceshow.activity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class PushVideoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PushVideoActivity f24798c;

    @UiThread
    public PushVideoActivity_ViewBinding(PushVideoActivity pushVideoActivity, View view) {
        super(pushVideoActivity, view);
        this.f24798c = pushVideoActivity;
        pushVideoActivity.mImageViewSyncToDynamic = (ImageView) butterknife.internal.c.d(view, R.id.sync_to_dynamic, "field 'mImageViewSyncToDynamic'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PushVideoActivity pushVideoActivity = this.f24798c;
        if (pushVideoActivity != null) {
            this.f24798c = null;
            pushVideoActivity.mImageViewSyncToDynamic = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
