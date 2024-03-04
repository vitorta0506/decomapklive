package com.guochao.faceshow.aaspring.modulars.vip.activity;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.ImageCropView;
/* loaded from: classes3.dex */
public class ImageCropActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ImageCropActivity f23317c;

    @UiThread
    public ImageCropActivity_ViewBinding(ImageCropActivity imageCropActivity, View view) {
        super(imageCropActivity, view);
        this.f23317c = imageCropActivity;
        imageCropActivity.mPhotoView = (ImageCropView) c.d(view, R.id.photo_view, "field 'mPhotoView'", ImageCropView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ImageCropActivity imageCropActivity = this.f23317c;
        if (imageCropActivity != null) {
            this.f23317c = null;
            imageCropActivity.mPhotoView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
