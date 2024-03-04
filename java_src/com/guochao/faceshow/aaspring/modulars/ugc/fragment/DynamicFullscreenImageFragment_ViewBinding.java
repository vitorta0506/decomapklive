package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
import com.guochao.faceshow.aaspring.views.GifImageView;
/* loaded from: classes3.dex */
public class DynamicFullscreenImageFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DynamicFullscreenImageFragment f22725b;

    @UiThread
    public DynamicFullscreenImageFragment_ViewBinding(DynamicFullscreenImageFragment dynamicFullscreenImageFragment, View view) {
        this.f22725b = dynamicFullscreenImageFragment;
        dynamicFullscreenImageFragment.mImageView = (GifImageView) butterknife.internal.c.d(view, R.id.photo_view, "field 'mImageView'", GifImageView.class);
        dynamicFullscreenImageFragment.mProgressView = butterknife.internal.c.c(view, R.id.progress, "field 'mProgressView'");
        dynamicFullscreenImageFragment.mDownloadDialogProgressView = (DownloadDialogProgressView) butterknife.internal.c.d(view, R.id.progress_img, "field 'mDownloadDialogProgressView'", DownloadDialogProgressView.class);
        dynamicFullscreenImageFragment.mTextViewProgress = (TextView) butterknife.internal.c.d(view, R.id.progress_percent, "field 'mTextViewProgress'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DynamicFullscreenImageFragment dynamicFullscreenImageFragment = this.f22725b;
        if (dynamicFullscreenImageFragment != null) {
            this.f22725b = null;
            dynamicFullscreenImageFragment.mImageView = null;
            dynamicFullscreenImageFragment.mProgressView = null;
            dynamicFullscreenImageFragment.mDownloadDialogProgressView = null;
            dynamicFullscreenImageFragment.mTextViewProgress = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
