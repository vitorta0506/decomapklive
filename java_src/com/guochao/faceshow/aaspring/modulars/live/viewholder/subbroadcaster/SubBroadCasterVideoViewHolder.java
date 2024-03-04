package com.guochao.faceshow.aaspring.modulars.live.viewholder.subbroadcaster;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import butterknife.BindView;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.a;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.player.GCLivePlayer;
/* loaded from: classes3.dex */
public class SubBroadCasterVideoViewHolder extends BaseLiveRoomHolder {

    /* renamed from: f  reason: collision with root package name */
    GCLivePlayer f19936f;
    @BindView
    protected ImageView mImageView;
    @BindView
    protected ViewGroup mPlayerView;

    public SubBroadCasterVideoViewHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view) {
        super(baseLiveRoomFragment, view);
        this.f19936f = LivePlayerProvider.player();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public void create() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void d(LiveRoomModel liveRoomModel) {
        super.d(liveRoomModel);
        LiveInfoMatchBean j10 = a.m().j(liveRoomModel.getCurrentUserId());
        this.mImageView.setVisibility(0);
        hc.a.t(this.mImageView, liveRoomModel.getAvatarUrl(), -1);
        if (j10 != null) {
            i(j10);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void destroy() {
        f(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void f(boolean z10) {
        if (this.f19936f != null && this.f19920e != null) {
            BaseLiveActivity.u0("SubBroadCasterVideoViewHolder.destroy()", false);
            this.f19936f.stopPlay(this.f19920e);
        }
        this.f19920e = null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void g() {
        GCLivePlayer gCLivePlayer;
        super.g();
        String str = this.f19920e;
        if (str != null && (gCLivePlayer = this.f19936f) != null) {
            gCLivePlayer.stopPlay(str);
        }
        this.f19920e = null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void i(LiveInfoMatchBean liveInfoMatchBean) {
        super.i(liveInfoMatchBean);
        if (this.f19936f == null) {
            return;
        }
        this.f19920e = liveInfoMatchBean.getStreamId();
        this.f19936f.startPlayAcc(liveInfoMatchBean.getJsUrl(), liveInfoMatchBean.getStreamId(), this.mPlayerView);
        this.f19936f.setMute(false, liveInfoMatchBean.getStreamId());
        this.f19918c = liveInfoMatchBean;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void pause() {
        String str;
        GCLivePlayer gCLivePlayer = this.f19936f;
        if (gCLivePlayer == null || (str = this.f19920e) == null) {
            return;
        }
        gCLivePlayer.pause(str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void resume() {
        String str;
        GCLivePlayer gCLivePlayer = this.f19936f;
        if (gCLivePlayer == null || (str = this.f19920e) == null) {
            return;
        }
        gCLivePlayer.resume(str);
    }
}
