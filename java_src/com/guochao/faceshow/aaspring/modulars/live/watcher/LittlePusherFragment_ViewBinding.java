package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding;
/* loaded from: classes3.dex */
public class LittlePusherFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LittlePusherFragment f19981d;

    @UiThread
    public LittlePusherFragment_ViewBinding(LittlePusherFragment littlePusherFragment, View view) {
        super(littlePusherFragment, view);
        this.f19981d = littlePusherFragment;
        littlePusherFragment.mTXCloudVideoView = (FrameLayout) c.d(view, R.id.txCloudVideoView, "field 'mTXCloudVideoView'", FrameLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LittlePusherFragment littlePusherFragment = this.f19981d;
        if (littlePusherFragment != null) {
            this.f19981d = null;
            littlePusherFragment.mTXCloudVideoView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
