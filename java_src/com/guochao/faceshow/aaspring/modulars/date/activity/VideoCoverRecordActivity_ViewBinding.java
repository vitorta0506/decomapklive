package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.VideoCoverCircleProgressView;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes3.dex */
public class VideoCoverRecordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private VideoCoverRecordActivity f17566c;

    /* renamed from: d  reason: collision with root package name */
    private View f17567d;

    /* renamed from: e  reason: collision with root package name */
    private View f17568e;

    /* renamed from: f  reason: collision with root package name */
    private View f17569f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCoverRecordActivity f17570a;

        a(VideoCoverRecordActivity videoCoverRecordActivity) {
            this.f17570a = videoCoverRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17570a.startRecord(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCoverRecordActivity f17572a;

        b(VideoCoverRecordActivity videoCoverRecordActivity) {
            this.f17572a = videoCoverRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17572a.showEffect(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCoverRecordActivity f17574a;

        c(VideoCoverRecordActivity videoCoverRecordActivity) {
            this.f17574a = videoCoverRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17574a.cancel(view);
        }
    }

    @UiThread
    public VideoCoverRecordActivity_ViewBinding(VideoCoverRecordActivity videoCoverRecordActivity, View view) {
        super(videoCoverRecordActivity, view);
        this.f17566c = videoCoverRecordActivity;
        videoCoverRecordActivity.mTXCloudVideoView = (TXCloudVideoView) butterknife.internal.c.d(view, R.id.txCloudVideoView, "field 'mTXCloudVideoView'", TXCloudVideoView.class);
        View c10 = butterknife.internal.c.c(view, R.id.record, "field 'mProgressBar' and method 'startRecord'");
        videoCoverRecordActivity.mProgressBar = (VideoCoverCircleProgressView) butterknife.internal.c.a(c10, R.id.record, "field 'mProgressBar'", VideoCoverCircleProgressView.class);
        this.f17567d = c10;
        c10.setOnClickListener(new a(videoCoverRecordActivity));
        videoCoverRecordActivity.mTouchView = butterknife.internal.c.c(view, R.id.touch_view, "field 'mTouchView'");
        View c11 = butterknife.internal.c.c(view, R.id.effect, "field 'mEffectView' and method 'showEffect'");
        videoCoverRecordActivity.mEffectView = c11;
        this.f17568e = c11;
        c11.setOnClickListener(new b(videoCoverRecordActivity));
        View c12 = butterknife.internal.c.c(view, R.id.cancel, "method 'cancel'");
        this.f17569f = c12;
        c12.setOnClickListener(new c(videoCoverRecordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoCoverRecordActivity videoCoverRecordActivity = this.f17566c;
        if (videoCoverRecordActivity != null) {
            this.f17566c = null;
            videoCoverRecordActivity.mTXCloudVideoView = null;
            videoCoverRecordActivity.mProgressBar = null;
            videoCoverRecordActivity.mTouchView = null;
            videoCoverRecordActivity.mEffectView = null;
            this.f17567d.setOnClickListener(null);
            this.f17567d = null;
            this.f17568e.setOnClickListener(null);
            this.f17568e = null;
            this.f17569f.setOnClickListener(null);
            this.f17569f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
