package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.google.android.exoplayer2.ui.PlayerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes3.dex */
public class FeedbackVideoPreviewActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FeedbackVideoPreviewActivity f17441c;

    /* renamed from: d  reason: collision with root package name */
    private View f17442d;

    /* renamed from: e  reason: collision with root package name */
    private View f17443e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackVideoPreviewActivity f17444a;

        a(FeedbackVideoPreviewActivity feedbackVideoPreviewActivity) {
            this.f17444a = feedbackVideoPreviewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17444a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackVideoPreviewActivity f17446a;

        b(FeedbackVideoPreviewActivity feedbackVideoPreviewActivity) {
            this.f17446a = feedbackVideoPreviewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17446a.clickView(view);
        }
    }

    @UiThread
    public FeedbackVideoPreviewActivity_ViewBinding(FeedbackVideoPreviewActivity feedbackVideoPreviewActivity, View view) {
        super(feedbackVideoPreviewActivity, view);
        this.f17441c = feedbackVideoPreviewActivity;
        feedbackVideoPreviewActivity.mSimpleExoPlayerView = (PlayerView) c.d(view, R.id.video_view, "field 'mSimpleExoPlayerView'", PlayerView.class);
        feedbackVideoPreviewActivity.mTextViewDuration = (TextView) c.d(view, R.id.duration, "field 'mTextViewDuration'", TextView.class);
        feedbackVideoPreviewActivity.mTextViewCurrent = (TextView) c.d(view, R.id.current, "field 'mTextViewCurrent'", TextView.class);
        feedbackVideoPreviewActivity.mSeekBar = (SeekBar) c.d(view, R.id.seek_bar, "field 'mSeekBar'", SeekBar.class);
        View c10 = c.c(view, R.id.play, "field 'mImageViewPlayBtn' and method 'click'");
        feedbackVideoPreviewActivity.mImageViewPlayBtn = (ImageView) c.a(c10, R.id.play, "field 'mImageViewPlayBtn'", ImageView.class);
        this.f17442d = c10;
        c10.setOnClickListener(new a(feedbackVideoPreviewActivity));
        View c11 = c.c(view, R.id.play_center, "field 'mImageViewPlayCenter' and method 'clickView'");
        feedbackVideoPreviewActivity.mImageViewPlayCenter = (ImageView) c.a(c11, R.id.play_center, "field 'mImageViewPlayCenter'", ImageView.class);
        this.f17443e = c11;
        c11.setOnClickListener(new b(feedbackVideoPreviewActivity));
        feedbackVideoPreviewActivity.mTXCloudVideoView = (TXCloudVideoView) c.d(view, R.id.txCloudVideoView, "field 'mTXCloudVideoView'", TXCloudVideoView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FeedbackVideoPreviewActivity feedbackVideoPreviewActivity = this.f17441c;
        if (feedbackVideoPreviewActivity != null) {
            this.f17441c = null;
            feedbackVideoPreviewActivity.mSimpleExoPlayerView = null;
            feedbackVideoPreviewActivity.mTextViewDuration = null;
            feedbackVideoPreviewActivity.mTextViewCurrent = null;
            feedbackVideoPreviewActivity.mSeekBar = null;
            feedbackVideoPreviewActivity.mImageViewPlayBtn = null;
            feedbackVideoPreviewActivity.mImageViewPlayCenter = null;
            feedbackVideoPreviewActivity.mTXCloudVideoView = null;
            this.f17442d.setOnClickListener(null);
            this.f17442d = null;
            this.f17443e.setOnClickListener(null);
            this.f17443e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
