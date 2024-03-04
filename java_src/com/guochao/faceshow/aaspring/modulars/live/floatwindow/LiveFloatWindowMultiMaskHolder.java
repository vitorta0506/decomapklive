package com.guochao.faceshow.aaspring.modulars.live.floatwindow;

import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LiveFloatWindowMultiMaskHolder extends BaseLiveRoomHolder {

    /* renamed from: f  reason: collision with root package name */
    protected long f19145f;

    /* renamed from: g  reason: collision with root package name */
    Runnable f19146g;
    @BindView
    ImageView mImageViewAvatar;
    @BindView
    ImageView mImageViewCover;
    @BindView
    SVGAImageView mSVGAImageView;

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView = LiveFloatWindowMultiMaskHolder.this.mSVGAImageView;
            if (sVGAImageView != null) {
                sVGAImageView.setVideoItem(sVGAVideoEntity);
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
            LogUtils.i("LiveFloatWindow", "onError: ");
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveFloatWindowMultiMaskHolder.this.mSVGAImageView.stopAnimation();
            LiveFloatWindowMultiMaskHolder.this.mSVGAImageView.setVisibility(4);
        }
    }

    public LiveFloatWindowMultiMaskHolder(View view) {
        super(null, view);
        this.f19146g = new b();
        this.mSVGAImageView.setClearsAfterDetached(false);
        this.mSVGAImageView.setVisibility(4);
        SvgaImageViewUtils.getParser().decodeFromInputStream(view.getResources().openRawResource(R.raw.live_voice_indicator), "live_voice_small", new a(), true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void e(LiveRoomModel liveRoomModel, long j10) {
        super.e(liveRoomModel, j10);
        LiveInfoMatchBean liveInfoMatchBean = (LiveInfoMatchBean) liveRoomModel;
        if ("2".equals(liveInfoMatchBean.getMatchType())) {
            this.itemView.setVisibility(4);
        } else {
            this.itemView.setVisibility(0);
        }
        if ("2".equalsIgnoreCase(liveRoomModel.getVoiceStatus())) {
            this.mSVGAImageView.setVisibility(8);
        } else if ("1".equalsIgnoreCase(liveRoomModel.getVoiceStatus())) {
            this.mSVGAImageView.setVisibility(0);
        } else {
            this.mSVGAImageView.setVisibility(8);
        }
        ic.a.b(BaseApplication.getInstance()).r(liveInfoMatchBean.getAvatarUrl()).g1(ic.a.b(BaseApplication.getInstance()).p(Integer.valueOf((int) R.mipmap.live_loading_bj)).q0(new jc.a(25, 3))).q0(new jc.a(25, 3)).Q0(this.mImageViewCover);
        hc.a.d(this.mImageViewAvatar, liveRoomModel.getAvatarUrl());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void n(VolumeMessage volumeMessage) {
        super.n(volumeMessage);
        if (volumeMessage == null || volumeMessage.getSendTime() < this.f19145f) {
            return;
        }
        this.mSVGAImageView.setVisibility(0);
        if (this.mSVGAImageView.isAnimating()) {
            return;
        }
        this.mSVGAImageView.startAnimation();
        this.mSVGAImageView.setVisibility(0);
        HandlerGetter.getMainHandler().removeCallbacks(this.f19146g);
        HandlerGetter.getMainHandler().postDelayed(this.f19146g, 2000L);
    }
}
