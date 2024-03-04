package com.guochao.faceshow.aaspring.modulars.live.viewholder.common;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class MainBroadCasterHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MainBroadCasterHolder f19924b;

    @UiThread
    public MainBroadCasterHolder_ViewBinding(MainBroadCasterHolder mainBroadCasterHolder, View view) {
        this.f19924b = mainBroadCasterHolder;
        mainBroadCasterHolder.mTXCloudVideoView = (FrameLayout) c.d(view, R.id.preview, "field 'mTXCloudVideoView'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainBroadCasterHolder mainBroadCasterHolder = this.f19924b;
        if (mainBroadCasterHolder != null) {
            this.f19924b = null;
            mainBroadCasterHolder.mTXCloudVideoView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
