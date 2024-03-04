package com.guochao.faceshow.aaspring.modulars.trtc.call;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes3.dex */
public class CallingActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private CallingActivity f21895c;

    /* renamed from: d  reason: collision with root package name */
    private View f21896d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CallingActivity f21897a;

        a(CallingActivity callingActivity) {
            this.f21897a = callingActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21897a.onViewClicked(view);
        }
    }

    @UiThread
    public CallingActivity_ViewBinding(CallingActivity callingActivity, View view) {
        super(callingActivity, view);
        this.f21895c = callingActivity;
        callingActivity.bigVideoView = (TXCloudVideoView) c.d(view, R.id.big_video_view, "field 'bigVideoView'", TXCloudVideoView.class);
        callingActivity.smallVideoView = (TXCloudVideoView) c.d(view, R.id.small_video_view, "field 'smallVideoView'", TXCloudVideoView.class);
        callingActivity.bigVideoViewImg = (ImageView) c.d(view, R.id.big_video_view_img, "field 'bigVideoViewImg'", ImageView.class);
        callingActivity.smallVideoViewImg = (ImageView) c.d(view, R.id.small_video_view_img, "field 'smallVideoViewImg'", ImageView.class);
        callingActivity.rootView = (ViewGroup) c.d(view, R.id.root_view, "field 'rootView'", ViewGroup.class);
        View c10 = c.c(view, R.id.small_video_view_preview, "field 'smallBg' and method 'onViewClicked'");
        callingActivity.smallBg = c10;
        this.f21896d = c10;
        c10.setOnClickListener(new a(callingActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        CallingActivity callingActivity = this.f21895c;
        if (callingActivity != null) {
            this.f21895c = null;
            callingActivity.bigVideoView = null;
            callingActivity.smallVideoView = null;
            callingActivity.bigVideoViewImg = null;
            callingActivity.smallVideoViewImg = null;
            callingActivity.rootView = null;
            callingActivity.smallBg = null;
            this.f21896d.setOnClickListener(null);
            this.f21896d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
