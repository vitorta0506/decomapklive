package com.guochao.faceshow.aaspring.modulars.customerservice.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FeedbackImagePreviewFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FeedbackImagePreviewFragment f17453b;

    @UiThread
    public FeedbackImagePreviewFragment_ViewBinding(FeedbackImagePreviewFragment feedbackImagePreviewFragment, View view) {
        this.f17453b = feedbackImagePreviewFragment;
        feedbackImagePreviewFragment.mPhotoView = (PhotoView) c.d(view, R.id.image, "field 'mPhotoView'", PhotoView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FeedbackImagePreviewFragment feedbackImagePreviewFragment = this.f17453b;
        if (feedbackImagePreviewFragment != null) {
            this.f17453b = null;
            feedbackImagePreviewFragment.mPhotoView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
