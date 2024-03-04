package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class PhotoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PhotoActivity f22353c;

    @UiThread
    public PhotoActivity_ViewBinding(PhotoActivity photoActivity, View view) {
        super(photoActivity, view);
        this.f22353c = photoActivity;
        photoActivity.rcvPhoto = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_photo, "field 'rcvPhoto'", RecyclerView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PhotoActivity photoActivity = this.f22353c;
        if (photoActivity != null) {
            this.f22353c = null;
            photoActivity.rcvPhoto = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
