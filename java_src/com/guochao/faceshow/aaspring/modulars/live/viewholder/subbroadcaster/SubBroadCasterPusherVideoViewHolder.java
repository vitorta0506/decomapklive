package com.guochao.faceshow.aaspring.modulars.live.viewholder.subbroadcaster;

import android.view.View;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.MainBroadCasterHolder;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.pusher.GCLivePusher;
/* loaded from: classes3.dex */
public class SubBroadCasterPusherVideoViewHolder extends MainBroadCasterHolder {

    /* renamed from: i  reason: collision with root package name */
    boolean f19933i;

    /* renamed from: j  reason: collision with root package name */
    Runnable f19934j;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((MainBroadCasterHolder) SubBroadCasterPusherVideoViewHolder.this).f19921f != null) {
                ((MainBroadCasterHolder) SubBroadCasterPusherVideoViewHolder.this).f19921f.stopAll();
                ((MainBroadCasterHolder) SubBroadCasterPusherVideoViewHolder.this).f19921f.setMute(true);
                SubBroadCasterPusherVideoViewHolder subBroadCasterPusherVideoViewHolder = SubBroadCasterPusherVideoViewHolder.this;
                subBroadCasterPusherVideoViewHolder.f19920e = null;
                if (subBroadCasterPusherVideoViewHolder.f19918c != null) {
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().t(SubBroadCasterPusherVideoViewHolder.this.f19918c.getCurrentUserId());
                }
            }
            LogUtils.i("SubBroadCasterPusher", "recycle:");
            SubBroadCasterPusherVideoViewHolder.this.f19933i = true;
        }
    }

    public SubBroadCasterPusherVideoViewHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view, GCLivePusher gCLivePusher) {
        super(baseLiveRoomFragment, view, gCLivePusher);
        this.f19933i = false;
        this.f19934j = new a();
    }

    private void r(boolean z10) {
        LogUtils.i("SubBroadCasterPusher", "recycle:" + z10);
        if (z10) {
            this.f19934j.run();
        } else {
            HandlerGetter.getMainHandler().postDelayed(this.f19934j, 1000L);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.MainBroadCasterHolder, com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void create() {
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
        GCLivePusher gCLivePusher = this.f19921f;
        if (gCLivePusher != null) {
            gCLivePusher.enableThirdBeauty(true);
            this.f19921f.getBeautyManager().reInit();
            this.f19921f.startPreview(this.mTXCloudVideoView);
            this.f19921f.setMirror(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void d(LiveRoomModel liveRoomModel) {
        super.d(liveRoomModel);
        LogUtils.i("SubBroadCasterPusher", "bind: remove");
        HandlerGetter.getMainHandler().removeCallbacks(this.f19934j);
        if (this.f19933i) {
            this.f19933i = false;
            GCLivePusher gCLivePusher = this.f19921f;
            if (gCLivePusher != null) {
                gCLivePusher.setMute(false);
                this.f19921f.startPreview(this.mTXCloudVideoView);
                this.f19921f.setMirror(true);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void f(boolean z10) {
        super.f(z10);
        r(true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void g() {
        super.g();
        this.f19933i = true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void i(LiveInfoMatchBean liveInfoMatchBean) {
        super.i(liveInfoMatchBean);
        LogUtils.i("SubBroadCasterPusher", "bind: remove");
        HandlerGetter.getMainHandler().removeCallbacks(this.f19934j);
        if (this.f19933i) {
            this.f19933i = false;
            GCLivePusher gCLivePusher = this.f19921f;
            if (gCLivePusher != null) {
                gCLivePusher.setMute(false);
                this.f19921f.startPreview(this.mTXCloudVideoView);
                this.f19921f.setMirror(true);
            }
        }
    }
}
