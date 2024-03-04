package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class IMImagePreviewFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private IMImagePreviewFragment f16985b;

    @UiThread
    public IMImagePreviewFragment_ViewBinding(IMImagePreviewFragment iMImagePreviewFragment, View view) {
        this.f16985b = iMImagePreviewFragment;
        iMImagePreviewFragment.mImageView = (PhotoView) butterknife.internal.c.d(view, R.id.img, "field 'mImageView'", PhotoView.class);
        iMImagePreviewFragment.mErrorImageView = (ImageView) butterknife.internal.c.d(view, R.id.error, "field 'mErrorImageView'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        IMImagePreviewFragment iMImagePreviewFragment = this.f16985b;
        if (iMImagePreviewFragment != null) {
            this.f16985b = null;
            iMImagePreviewFragment.mImageView = null;
            iMImagePreviewFragment.mErrorImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
