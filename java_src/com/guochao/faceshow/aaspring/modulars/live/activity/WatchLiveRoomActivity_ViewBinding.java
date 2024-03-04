package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.LiveRoomView;
/* loaded from: classes3.dex */
public class WatchLiveRoomActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WatchLiveRoomActivity f18105c;

    @UiThread
    public WatchLiveRoomActivity_ViewBinding(WatchLiveRoomActivity watchLiveRoomActivity, View view) {
        super(watchLiveRoomActivity, view);
        this.f18105c = watchLiveRoomActivity;
        watchLiveRoomActivity.mViewPager2 = (LiveRoomView) c.d(view, R.id.content, "field 'mViewPager2'", LiveRoomView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WatchLiveRoomActivity watchLiveRoomActivity = this.f18105c;
        if (watchLiveRoomActivity != null) {
            this.f18105c = null;
            watchLiveRoomActivity.mViewPager2 = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
