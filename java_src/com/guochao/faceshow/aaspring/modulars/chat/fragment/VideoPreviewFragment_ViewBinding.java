package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.myPlayView.widget.TextureVideoView;
/* loaded from: classes3.dex */
public class VideoPreviewFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VideoPreviewFragment f17018b;

    /* renamed from: c  reason: collision with root package name */
    private View f17019c;

    /* renamed from: d  reason: collision with root package name */
    private View f17020d;

    /* renamed from: e  reason: collision with root package name */
    private View f17021e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoPreviewFragment f17022a;

        a(VideoPreviewFragment videoPreviewFragment) {
            this.f17022a = videoPreviewFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17022a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoPreviewFragment f17024a;

        b(VideoPreviewFragment videoPreviewFragment) {
            this.f17024a = videoPreviewFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17024a.play(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoPreviewFragment f17026a;

        c(VideoPreviewFragment videoPreviewFragment) {
            this.f17026a = videoPreviewFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17026a.onViewClicked(view);
        }
    }

    @UiThread
    public VideoPreviewFragment_ViewBinding(VideoPreviewFragment videoPreviewFragment, View view) {
        this.f17018b = videoPreviewFragment;
        View c10 = butterknife.internal.c.c(view, R.id.video_view, "field 'mTextureVideoView' and method 'onViewClicked'");
        videoPreviewFragment.mTextureVideoView = (TextureVideoView) butterknife.internal.c.a(c10, R.id.video_view, "field 'mTextureVideoView'", TextureVideoView.class);
        this.f17019c = c10;
        c10.setOnClickListener(new a(videoPreviewFragment));
        View c11 = butterknife.internal.c.c(view, R.id.play, "field 'mPlay' and method 'play'");
        videoPreviewFragment.mPlay = c11;
        this.f17020d = c11;
        c11.setOnClickListener(new b(videoPreviewFragment));
        View c12 = butterknife.internal.c.c(view, R.id.img, "field 'mImagePreview' and method 'onViewClicked'");
        videoPreviewFragment.mImagePreview = (ImageView) butterknife.internal.c.a(c12, R.id.img, "field 'mImagePreview'", ImageView.class);
        this.f17021e = c12;
        c12.setOnClickListener(new c(videoPreviewFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VideoPreviewFragment videoPreviewFragment = this.f17018b;
        if (videoPreviewFragment != null) {
            this.f17018b = null;
            videoPreviewFragment.mTextureVideoView = null;
            videoPreviewFragment.mPlay = null;
            videoPreviewFragment.mImagePreview = null;
            this.f17019c.setOnClickListener(null);
            this.f17019c = null;
            this.f17020d.setOnClickListener(null);
            this.f17020d = null;
            this.f17021e.setOnClickListener(null);
            this.f17021e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
