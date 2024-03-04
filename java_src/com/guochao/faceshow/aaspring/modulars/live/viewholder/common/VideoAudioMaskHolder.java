package com.guochao.faceshow.aaspring.modulars.live.viewholder.common;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class VideoAudioMaskHolder extends BaseLiveRoomHolder {
    @BindView
    NormalCircleImageView avatarView;

    /* renamed from: f  reason: collision with root package name */
    protected long f19925f;

    /* renamed from: g  reason: collision with root package name */
    long f19926g;

    /* renamed from: h  reason: collision with root package name */
    long f19927h;

    /* renamed from: i  reason: collision with root package name */
    Runnable f19928i;
    @BindView
    View mAvatarViewArea;
    @BindView
    SVGAImageView mImageViewAudioIndicator;
    @BindView
    ImageView mImageViewBigAvatar;
    @BindView
    ImageView mImageViewVoiceIcon;

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView = VideoAudioMaskHolder.this.mImageViewAudioIndicator;
            if (sVGAImageView != null) {
                sVGAImageView.setVideoItem(sVGAVideoEntity);
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoAudioMaskHolder.this.mImageViewAudioIndicator.stopAnimation();
            VideoAudioMaskHolder.this.mImageViewAudioIndicator.setVisibility(4);
        }
    }

    public VideoAudioMaskHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view) {
        super(baseLiveRoomFragment, view);
        this.f19928i = new b();
        SVGAImageView sVGAImageView = this.mImageViewAudioIndicator;
        if (sVGAImageView != null) {
            sVGAImageView.setClearsAfterDetached(false);
            this.mImageViewAudioIndicator.setVisibility(8);
        }
        SvgaImageViewUtils.getParser().decodeFromInputStream(baseLiveRoomFragment.getResources().openRawResource(R.raw.live_voice_indicator), "live_voice", new a(), true);
    }

    private void o() {
        ic.a.c(this.mImageViewBigAvatar).r(this.f19918c.getAvatarUrl()).b0(R.mipmap.live_loading_bj).g1(ic.a.c(this.mImageViewBigAvatar).p(Integer.valueOf((int) R.mipmap.live_loading_bj)).q0(new jc.a(25, 3))).q0(new jc.a(25, 3)).Q0(this.mImageViewBigAvatar);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void d(LiveRoomModel liveRoomModel) {
        super.d(liveRoomModel);
        hc.a.h(this.avatarView, liveRoomModel.getAvatarUrl(), R.mipmap.default_head);
        boolean z10 = liveRoomModel instanceof RoomItemData;
        if (z10) {
            return;
        }
        if ("2".equalsIgnoreCase(liveRoomModel.getMatchType())) {
            this.mImageViewBigAvatar.setVisibility(4);
            this.mAvatarViewArea.setVisibility(8);
        } else if ("1".equalsIgnoreCase(liveRoomModel.getMatchType())) {
            this.mImageViewBigAvatar.setVisibility(0);
            this.mAvatarViewArea.setVisibility(0);
            if (this.f19918c != null) {
                o();
                hc.a.h(this.avatarView, this.f19918c.getAvatarUrl(), R.mipmap.default_head);
            }
        } else {
            this.mImageViewBigAvatar.setVisibility(4);
            this.mAvatarViewArea.setVisibility(8);
        }
        if ("2".equalsIgnoreCase(liveRoomModel.getVoiceStatus())) {
            this.mImageViewVoiceIcon.setVisibility(0);
        } else if ("1".equalsIgnoreCase(liveRoomModel.getVoiceStatus())) {
            this.mImageViewVoiceIcon.setVisibility(8);
        } else {
            this.mImageViewVoiceIcon.setVisibility(8);
        }
        if ("2".equalsIgnoreCase(liveRoomModel.getMatchType())) {
            this.mImageViewBigAvatar.setVisibility(4);
            this.mAvatarViewArea.setVisibility(8);
        }
        if ((liveRoomModel instanceof LiveInfoMatchBean) || z10 || (liveRoomModel instanceof BroadCasterLiveModel)) {
            k("2".equalsIgnoreCase(liveRoomModel.getVoiceStatus()), -1L, false);
            m("2".equalsIgnoreCase(liveRoomModel.getMatchType()), -1L, false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void e(LiveRoomModel liveRoomModel, long j10) {
        super.e(liveRoomModel, j10);
        if ((this.itemView.getContext() instanceof Activity) && (((Activity) this.itemView.getContext()).isDestroyed() || ((Activity) this.itemView.getContext()).isFinishing())) {
            return;
        }
        if ((liveRoomModel instanceof LiveInfoMatchBean) || (liveRoomModel instanceof RoomItemData) || (liveRoomModel instanceof BroadCasterLiveModel)) {
            k("2".equalsIgnoreCase(liveRoomModel.getVoiceStatus()), j10, false);
            m("2".equalsIgnoreCase(liveRoomModel.getMatchType()), j10, false);
        }
        if (liveRoomModel instanceof RoomItemData) {
            return;
        }
        if ("2".equalsIgnoreCase(liveRoomModel.getMatchType())) {
            this.mImageViewBigAvatar.setVisibility(4);
            this.mAvatarViewArea.setVisibility(8);
        } else if ("1".equalsIgnoreCase(liveRoomModel.getMatchType())) {
            this.mImageViewBigAvatar.setVisibility(0);
            this.mAvatarViewArea.setVisibility(0);
            if (this.f19918c != null) {
                o();
                hc.a.h(this.avatarView, this.f19918c.getAvatarUrl(), R.mipmap.default_head);
            }
        } else {
            this.mImageViewBigAvatar.setVisibility(4);
            this.mAvatarViewArea.setVisibility(8);
        }
        if ("2".equalsIgnoreCase(liveRoomModel.getVoiceStatus())) {
            this.mImageViewVoiceIcon.setVisibility(0);
        } else if ("1".equalsIgnoreCase(liveRoomModel.getVoiceStatus())) {
            this.mImageViewVoiceIcon.setVisibility(8);
        } else {
            this.mImageViewVoiceIcon.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void f(boolean z10) {
        super.f(z10);
        c.u(BaseApplication.getInstance()).f(this.mImageViewBigAvatar);
        this.mImageViewBigAvatar.setImageBitmap(null);
        c.u(BaseApplication.getInstance()).f(this.avatarView);
        this.avatarView.setImageBitmap(null);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void k(boolean z10, long j10, boolean z11) {
        super.k(z10, j10, z11);
        if (this.f19926g > j10) {
            return;
        }
        this.f19926g = j10;
        if (!z10) {
            this.mImageViewVoiceIcon.setVisibility(8);
            this.f19918c.setAnchorForceVoiceStatus(false);
            return;
        }
        if (z11) {
            this.f19918c.setAnchorForceVoiceStatus(true);
        }
        this.mImageViewVoiceIcon.setVisibility(0);
        this.mImageViewAudioIndicator.setVisibility(4);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void m(boolean z10, long j10, boolean z11) {
        super.m(z10, j10, z11);
        if (this.f19927h > j10) {
            return;
        }
        this.f19927h = j10;
        if (z10) {
            this.mImageViewBigAvatar.setVisibility(4);
            this.mAvatarViewArea.setVisibility(8);
            this.f19918c.setAnchorForceMatchType(false);
            return;
        }
        if (z11) {
            this.f19918c.setAnchorForceMatchType(true);
        }
        this.mImageViewBigAvatar.setVisibility(0);
        this.mAvatarViewArea.setVisibility(0);
        if (this.f19918c != null) {
            o();
            hc.a.h(this.avatarView, this.f19918c.getAvatarUrl(), R.mipmap.default_head);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void n(VolumeMessage volumeMessage) {
        super.n(volumeMessage);
        if (volumeMessage == null || volumeMessage.getSendTime() < this.f19925f || this.mImageViewAudioIndicator.isAnimating()) {
            return;
        }
        this.mImageViewAudioIndicator.startAnimation();
        this.mImageViewAudioIndicator.setVisibility(0);
        HandlerGetter.getMainHandler().removeCallbacks(this.f19928i);
        HandlerGetter.getMainHandler().postDelayed(this.f19928i, 2000L);
    }
}
