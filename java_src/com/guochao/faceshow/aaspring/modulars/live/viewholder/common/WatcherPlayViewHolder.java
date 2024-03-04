package com.guochao.faceshow.aaspring.modulars.live.viewholder.common;

import android.view.View;
import android.view.ViewGroup;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.player.GCLivePlayer;
/* loaded from: classes3.dex */
public class WatcherPlayViewHolder extends BaseLiveRoomHolder {

    /* renamed from: f  reason: collision with root package name */
    private GCLivePlayer f19932f;

    public WatcherPlayViewHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view, GCLivePlayer gCLivePlayer) {
        super(baseLiveRoomFragment, view);
        this.f19932f = gCLivePlayer;
        if (gCLivePlayer != null) {
            gCLivePlayer.setMute(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void create() {
        super.create();
        GCLivePlayer gCLivePlayer = this.f19932f;
        if (gCLivePlayer != null) {
            gCLivePlayer.setPlayerView((ViewGroup) this.itemView);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void f(boolean z10) {
        super.f(z10);
        GCLivePlayer gCLivePlayer = this.f19932f;
        if (gCLivePlayer == null || !gCLivePlayer.isPlaying() || z10 || this.f19918c.isLaunchFromFloatWindow()) {
            return;
        }
        BaseLiveActivity.u0("WatcherPlayViewHolder.destroy()", false);
        this.f19932f.stopPlay(false, false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void g() {
        super.g();
        GCLivePlayer gCLivePlayer = this.f19932f;
        if (gCLivePlayer == null || !gCLivePlayer.isPlaying()) {
            return;
        }
        BaseLiveActivity.u0("WatcherPlayViewHolder.recycle()", false);
        this.f19932f.stopPlay(false, false);
    }
}
