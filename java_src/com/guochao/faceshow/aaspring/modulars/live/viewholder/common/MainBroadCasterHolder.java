package com.guochao.faceshow.aaspring.modulars.live.viewholder.common;

import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import butterknife.BindView;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.pusher.GCLivePusher;
/* loaded from: classes3.dex */
public class MainBroadCasterHolder extends BaseLiveRoomHolder implements Foreground.OnForegroundStateChangedListener {

    /* renamed from: f  reason: collision with root package name */
    protected final GCLivePusher f19921f;

    /* renamed from: g  reason: collision with root package name */
    long f19922g;

    /* renamed from: h  reason: collision with root package name */
    long f19923h;
    @BindView
    protected FrameLayout mTXCloudVideoView;

    public MainBroadCasterHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view, GCLivePusher gCLivePusher) {
        super(baseLiveRoomFragment, view);
        this.f19921f = gCLivePusher;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public void create() {
        FrameLayout frameLayout;
        GCLivePusher gCLivePusher = this.f19921f;
        if (gCLivePusher == null || (frameLayout = this.mTXCloudVideoView) == null) {
            return;
        }
        gCLivePusher.startPreview(frameLayout);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void k(boolean z10, long j10, boolean z11) {
        super.k(z10, j10, z11);
        if (this.f19922g > j10) {
            return;
        }
        this.f19922g = j10;
        GCLivePusher gCLivePusher = this.f19921f;
        if (gCLivePusher != null) {
            gCLivePusher.enableAudio(!z10);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void m(boolean z10, long j10, boolean z11) {
        super.m(z10, j10, z11);
        if (this.f19923h > j10) {
            return;
        }
        this.f19923h = j10;
        GCLivePusher gCLivePusher = this.f19921f;
        if (gCLivePusher != null) {
            gCLivePusher.enableCamera(z10);
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
        GCLivePusher gCLivePusher = this.f19921f;
        if (gCLivePusher != null) {
            gCLivePusher.onPause();
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
        GCLivePusher gCLivePusher;
        if (this.f19916a.I || (gCLivePusher = this.f19921f) == null) {
            return;
        }
        gCLivePusher.onResume();
    }
}
