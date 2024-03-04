package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.GifImageView;
/* loaded from: classes3.dex */
public class ImagePreviewFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ImagePreviewFragment f17014b;

    @UiThread
    public ImagePreviewFragment_ViewBinding(ImagePreviewFragment imagePreviewFragment, View view) {
        this.f17014b = imagePreviewFragment;
        imagePreviewFragment.mPhotoView = (GifImageView) butterknife.internal.c.d(view, R.id.photo_view, "field 'mPhotoView'", GifImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ImagePreviewFragment imagePreviewFragment = this.f17014b;
        if (imagePreviewFragment != null) {
            this.f17014b = null;
            imagePreviewFragment.mPhotoView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
