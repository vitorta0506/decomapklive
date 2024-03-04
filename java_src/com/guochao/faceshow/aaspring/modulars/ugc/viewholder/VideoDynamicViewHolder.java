package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import aa.e;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.DynamicVideoPlayer;
import com.guochao.faceshow.aaspring.utils.VideoPlayer;
import com.guochao.faceshow.aaspring.views.h;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import m0.d;
/* loaded from: classes3.dex */
public class VideoDynamicViewHolder extends BaseDynamicViewHolder implements ITXVodPlayListener {
    @BindView
    View bgFL;
    @BindView
    ImageView bgIV;
    @BindView
    ImageView mImageView;
    @BindView
    ImageView mImageViewPlayIcon;
    @BindView
    TXCloudVideoView mTXCloudVideoView;
    @BindView
    View mVideoContentView;

    /* renamed from: r  reason: collision with root package name */
    public TXVodPlayer f23053r;

    /* renamed from: s  reason: collision with root package name */
    VideoPlayer f23054s;

    /* renamed from: t  reason: collision with root package name */
    int f23055t;

    /* renamed from: u  reason: collision with root package name */
    private int f23056u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f23057v;

    /* renamed from: w  reason: collision with root package name */
    public boolean f23058w;

    /* loaded from: classes3.dex */
    class a implements h.b {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            VideoDynamicViewHolder videoDynamicViewHolder = VideoDynamicViewHolder.this;
            if (videoDynamicViewHolder.f23053r == null) {
                videoDynamicViewHolder.Z(((BaseDynamicViewHolder) videoDynamicViewHolder).f22551a);
            }
            VideoDynamicViewHolder videoDynamicViewHolder2 = VideoDynamicViewHolder.this;
            if (videoDynamicViewHolder2.f23058w) {
                videoDynamicViewHolder2.f23053r.pause();
            } else {
                videoDynamicViewHolder2.f23053r.startVodPlay(((BaseDynamicViewHolder) videoDynamicViewHolder2).f22557g.getUrl());
                VideoDynamicViewHolder.this.f23053r.setAutoPlay(true);
                VideoDynamicViewHolder videoDynamicViewHolder3 = VideoDynamicViewHolder.this;
                videoDynamicViewHolder3.f23058w = true;
                videoDynamicViewHolder3.f23057v = false;
            }
            DynamicVideoPlayer.getInstance().setCurrentPlayer(VideoDynamicViewHolder.this.f23053r);
            VideoPlayer.setMute(VideoDynamicViewHolder.this.f23053r, false);
            VideoDynamicViewHolder.this.f23054s.setVodListener(null);
            if (((BaseDynamicViewHolder) VideoDynamicViewHolder.this).f22552b != null) {
                e eVar = ((BaseDynamicViewHolder) VideoDynamicViewHolder.this).f22552b;
                VideoDynamicViewHolder videoDynamicViewHolder4 = VideoDynamicViewHolder.this;
                eVar.onVideoClick(videoDynamicViewHolder4, ((BaseDynamicViewHolder) videoDynamicViewHolder4).f22557g);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            VideoDynamicViewHolder.this.q();
        }
    }

    public VideoDynamicViewHolder(Context context, View view) {
        super(context, view);
        this.f23057v = false;
        this.f23058w = false;
        this.f23055t = context.getResources().getDisplayMetrics().widthPixels;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(Context context) {
        VideoPlayer player = DynamicVideoPlayer.getInstance().getPlayer(this.f22557g.getUrl());
        this.f23054s = player;
        this.f23053r = player.getTXVodPlayer();
        TXVodPlayer createPlayer = DynamicVideoPlayer.getInstance().createPlayer(context);
        this.f23053r = createPlayer;
        createPlayer.setVodListener(this);
        this.f23053r.setPlayerView(this.mTXCloudVideoView);
        this.f23054s.setVodListener(this);
    }

    private String a0() {
        return this.f22557g.getUrl();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder
    public void G(DynamicBean dynamicBean) {
        super.G(dynamicBean);
        this.f23058w = false;
        int width = dynamicBean.getWidth();
        int height = dynamicBean.getHeight();
        ViewGroup.LayoutParams layoutParams = this.mVideoContentView.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = this.bgFL.getLayoutParams();
        int i9 = this.f23055t;
        layoutParams2.width = i9;
        int i10 = (i9 * 480) / 375;
        layoutParams2.height = i10;
        if (width == 0 || height == 0) {
            layoutParams.width = (int) (((i10 * 9.0f) / 16.0f) + 0.5d);
            layoutParams.height = i10;
        } else if (width > height) {
            layoutParams.width = i9;
            layoutParams.height = (int) (((i9 * 9.0f) / 16.0f) + 0.5d);
        } else if (width == height) {
            layoutParams.width = i9;
            layoutParams.height = i9;
        } else {
            layoutParams.width = (int) (((i10 * 9.0f) / 16.0f) + 0.5d);
            layoutParams.height = i10;
        }
        this.mImageView.setVisibility(0);
        ic.a.c(this.mImageView).f(this.mImageView);
        ic.a.c(this.mImageView).r(dynamicBean.getImg()).a0(layoutParams.width, layoutParams.height).h1(d.i()).Q0(this.mImageView);
        hc.a.o(this.bgIV, dynamicBean.getImg(), 15, 4);
    }

    public boolean b0(Activity activity, View view) {
        if (activity == null || view == null) {
            return false;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        this.mTXCloudVideoView.getLocationInWindow(iArr);
        view.getLocationInWindow(iArr2);
        return iArr[1] > iArr2[1] && iArr[1] + this.mTXCloudVideoView.getHeight() <= activity.getResources().getDisplayMetrics().heightPixels;
    }

    public boolean c0() {
        return this.f23058w;
    }

    public void d0() {
        Z(this.f22551a);
        this.f23054s.start();
        String a02 = a0();
        this.f23053r.setAutoPlay(true);
        this.f23053r.startVodPlay(a02);
        this.f23056u = 1000;
        this.f23057v = false;
        this.mImageViewPlayIcon.setVisibility(8);
        this.mTXCloudVideoView.setVisibility(0);
        VideoPlayer.setMute(this.f23053r, true);
        this.f23058w = true;
    }

    public void e0() {
        this.mTXCloudVideoView.setVisibility(8);
        this.mImageView.setVisibility(0);
        this.mImageViewPlayIcon.setVisibility(0);
        this.f23056u = 1005;
        this.f23057v = true;
        TXVodPlayer tXVodPlayer = this.f23053r;
        if (tXVodPlayer != null) {
            tXVodPlayer.stopPlay(false);
            this.f23053r = null;
        }
        this.f23058w = false;
        DynamicVideoPlayer.getInstance().stop(this.f22557g.getUrl());
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle) {
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onPlayEvent(TXVodPlayer tXVodPlayer, int i9, Bundle bundle) {
        if (i9 == 2004 || i9 == 2005) {
            if (this.f23057v) {
                this.mImageViewPlayIcon.setVisibility(0);
                this.mTXCloudVideoView.setVisibility(8);
                this.mImageView.setVisibility(0);
                this.f23058w = false;
            } else {
                this.mImageViewPlayIcon.setVisibility(8);
                this.mTXCloudVideoView.setVisibility(0);
                this.f23058w = true;
            }
            VideoPlayer.setMute(tXVodPlayer, true);
        }
    }

    @OnClick
    public void onVideoClick(View view) {
        h.c(view, new a());
    }
}
