package com.guochao.faceshow.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
/* loaded from: classes3.dex */
public class VideoPlayActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private VideoPlayActivity f24923c;

    @UiThread
    public VideoPlayActivity_ViewBinding(VideoPlayActivity videoPlayActivity, View view) {
        super(videoPlayActivity, view);
        this.f24923c = videoPlayActivity;
        videoPlayActivity.mTitleLy = (TitleBackgroundView) butterknife.internal.c.d(view, R.id.float_title_back, "field 'mTitleLy'", TitleBackgroundView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoPlayActivity videoPlayActivity = this.f24923c;
        if (videoPlayActivity != null) {
            this.f24923c = null;
            videoPlayActivity.mTitleLy = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
