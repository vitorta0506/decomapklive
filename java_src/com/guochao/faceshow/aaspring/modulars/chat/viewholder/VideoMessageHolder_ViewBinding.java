package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class VideoMessageHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VideoMessageHolder f17348b;

    @UiThread
    public VideoMessageHolder_ViewBinding(VideoMessageHolder videoMessageHolder, View view) {
        this.f17348b = videoMessageHolder;
        videoMessageHolder.mProgress = (TextView) c.d(view, R.id.progress, "field 'mProgress'", TextView.class);
        videoMessageHolder.mProgressIv = (ImageView) c.d(view, R.id.progress_iv, "field 'mProgressIv'", ImageView.class);
        videoMessageHolder.mDurationText = (TextView) c.d(view, R.id.duration, "field 'mDurationText'", TextView.class);
        videoMessageHolder.mImageViewPlay = (ImageView) c.d(view, R.id.play, "field 'mImageViewPlay'", ImageView.class);
        videoMessageHolder.mImageViewThumb = (ImageView) c.d(view, R.id.iv_thumb, "field 'mImageViewThumb'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VideoMessageHolder videoMessageHolder = this.f17348b;
        if (videoMessageHolder != null) {
            this.f17348b = null;
            videoMessageHolder.mProgress = null;
            videoMessageHolder.mProgressIv = null;
            videoMessageHolder.mDurationText = null;
            videoMessageHolder.mImageViewPlay = null;
            videoMessageHolder.mImageViewThumb = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
