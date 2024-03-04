package com.guochao.faceshow.aaspring.modulars.live.viewholder.broadcaster;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import butterknife.BindView;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.player.GCLivePlayer;
import hc.a;
/* loaded from: classes3.dex */
public class PkSubViewHolder extends BaseLiveRoomHolder {

    /* renamed from: f  reason: collision with root package name */
    GCLivePlayer f19913f;

    /* renamed from: g  reason: collision with root package name */
    String f19914g;
    @BindView
    protected ImageView mImageView;
    @BindView
    FrameLayout mTXCloudVideoView;

    public PkSubViewHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view) {
        super(baseLiveRoomFragment, view);
        this.mImageView.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public void create() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void d(LiveRoomModel liveRoomModel) {
        super.d(liveRoomModel);
        if (this.f19913f != null) {
            return;
        }
        GCLivePlayer gCLivePlayer = x.n().f19113d;
        this.f19913f = gCLivePlayer;
        if (gCLivePlayer == null) {
            return;
        }
        if (x.n().m() != null) {
            this.f19920e = x.n().m().getRightAnchorMsg().getJsUrl();
            this.f19914g = x.n().m().getRightAnchorMsg().getStreamId();
        }
        this.f19913f.setMute(false, this.f19914g);
        this.f19913f.startPlayAcc(this.f19920e, this.f19914g, this.mTXCloudVideoView);
        a.t(this.mImageView, liveRoomModel.getAvatarUrl(), -1);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void destroy() {
        f(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void f(boolean z10) {
        if (this.f19913f != null) {
            BaseLiveActivity.u0("PkSubViewHolder.destroy()", false);
            this.f19913f.stopPlay(false, false);
        }
        this.f19914g = null;
        this.f19920e = null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void g() {
        super.g();
        if (this.f19913f != null && this.f19914g != null) {
            BaseLiveActivity.u0("PkSubViewHolder.recycle()", false);
            this.f19913f.stopPlay(this.f19914g);
        }
        FrameLayout frameLayout = this.mTXCloudVideoView;
        if (frameLayout != null) {
            ((ViewGroup) this.itemView).removeView(frameLayout);
        }
        this.f19913f = null;
        this.f19920e = null;
        this.f19914g = null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void pause() {
        String str;
        GCLivePlayer gCLivePlayer = this.f19913f;
        if (gCLivePlayer == null || (str = this.f19914g) == null) {
            return;
        }
        gCLivePlayer.pause(str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void resume() {
        String str;
        GCLivePlayer gCLivePlayer = this.f19913f;
        if (gCLivePlayer == null || (str = this.f19914g) == null) {
            return;
        }
        gCLivePlayer.resume(str);
    }
}
