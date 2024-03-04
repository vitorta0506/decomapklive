package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.google.android.exoplayer2.ui.PlayerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
/* loaded from: classes3.dex */
public class IMVideoPreviewFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private IMVideoPreviewFragment f17004b;

    /* renamed from: c  reason: collision with root package name */
    private View f17005c;

    /* renamed from: d  reason: collision with root package name */
    private View f17006d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IMVideoPreviewFragment f17007a;

        a(IMVideoPreviewFragment iMVideoPreviewFragment) {
            this.f17007a = iMVideoPreviewFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17007a.play(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IMVideoPreviewFragment f17009a;

        b(IMVideoPreviewFragment iMVideoPreviewFragment) {
            this.f17009a = iMVideoPreviewFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17009a.content(view);
        }
    }

    @UiThread
    public IMVideoPreviewFragment_ViewBinding(IMVideoPreviewFragment iMVideoPreviewFragment, View view) {
        this.f17004b = iMVideoPreviewFragment;
        iMVideoPreviewFragment.mPlayerView = (PlayerView) butterknife.internal.c.d(view, R.id.play_bt, "field 'mPlayerView'", PlayerView.class);
        View c10 = butterknife.internal.c.c(view, R.id.play, "field 'mImageView' and method 'play'");
        iMVideoPreviewFragment.mImageView = (ImageView) butterknife.internal.c.a(c10, R.id.play, "field 'mImageView'", ImageView.class);
        this.f17005c = c10;
        c10.setOnClickListener(new a(iMVideoPreviewFragment));
        iMVideoPreviewFragment.mImageViewThumb = (ImageView) butterknife.internal.c.d(view, R.id.image_thumb, "field 'mImageViewThumb'", ImageView.class);
        iMVideoPreviewFragment.mProgressTv = (TextView) butterknife.internal.c.d(view, R.id.progress_tv, "field 'mProgressTv'", TextView.class);
        iMVideoPreviewFragment.mProgressViewArea = butterknife.internal.c.c(view, R.id.progress_area, "field 'mProgressViewArea'");
        iMVideoPreviewFragment.mDownloadDialogProgressView = (DownloadDialogProgressView) butterknife.internal.c.d(view, R.id.progress, "field 'mDownloadDialogProgressView'", DownloadDialogProgressView.class);
        View c11 = butterknife.internal.c.c(view, R.id.content, "method 'content'");
        this.f17006d = c11;
        c11.setOnClickListener(new b(iMVideoPreviewFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        IMVideoPreviewFragment iMVideoPreviewFragment = this.f17004b;
        if (iMVideoPreviewFragment != null) {
            this.f17004b = null;
            iMVideoPreviewFragment.mPlayerView = null;
            iMVideoPreviewFragment.mImageView = null;
            iMVideoPreviewFragment.mImageViewThumb = null;
            iMVideoPreviewFragment.mProgressTv = null;
            iMVideoPreviewFragment.mProgressViewArea = null;
            iMVideoPreviewFragment.mDownloadDialogProgressView = null;
            this.f17005c.setOnClickListener(null);
            this.f17005c = null;
            this.f17006d.setOnClickListener(null);
            this.f17006d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
