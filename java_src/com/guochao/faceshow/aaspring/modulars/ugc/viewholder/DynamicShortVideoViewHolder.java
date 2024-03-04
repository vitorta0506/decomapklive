package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.videomatch.VideoMatchHolder;
import com.guochao.faceshow.aaspring.modulars.videomatch.VideoModel;
import com.guochao.faceshow.aaspring.utils.DanmuHelper;
import com.guochao.faceshow.aaspring.utils.DynamicVideoPlayer;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Tools;
import com.tencent.rtmp.TXVodPlayer;
/* loaded from: classes3.dex */
public class DynamicShortVideoViewHolder extends ShortVideoViewHolder {
    public VideoMatchHolder J;
    private boolean K;

    public DynamicShortVideoViewHolder(Context context, BaseShortVideoFragment baseShortVideoFragment, View view, boolean z10) {
        super(context, baseShortVideoFragment, view, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    protected void C() {
        if (BaseConfig.isChinese()) {
            return;
        }
        Tools.playLog((Activity) this.f20829e, this.f20837m.getVideoId(), "3");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    public void E(boolean z10) {
        TXVodPlayer tXVodPlayer = this.f20830f;
        if (tXVodPlayer != null) {
            tXVodPlayer.setAutoPlay(false);
            this.f20830f.setLoop(false);
            this.f20830f.pause();
            this.f20827c = z10;
            if (z10) {
                this.f20839o.setVisibility(0);
            } else {
                this.f20839o.setVisibility(4);
                ((ImageView) getView(R.id.video_cover)).setVisibility(4);
                this.f20832h.setBackground(null);
            }
            DanmuHelper danmuHelper = this.f20828d;
            if (danmuHelper != null) {
                danmuHelper.pause();
            }
            this.C = true;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    public void G(boolean z10) {
        super.G(z10);
        if (BaseConfig.isChinese()) {
            return;
        }
        this.f20832h.setBackgroundResource(R.mipmap.default_short_bg);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    public void P(VideoItem videoItem, int i9, float f10) {
        super.P(videoItem, i9, f10);
        L(videoItem);
        if (f10 > 0.0f) {
            this.K = true;
        }
        TXVodPlayer tXVodPlayer = this.f20830f;
        ShortVideoViewHolder.v vVar = new ShortVideoViewHolder.v();
        this.f20833i = vVar;
        tXVodPlayer.setVodListener(vVar);
        DynamicVideoPlayer.getInstance().getPlayer(this.f20837m.getVideoUrl()).start();
        C();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    public void destroy() {
        super.destroy();
        F();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    public void n(VideoItem videoItem, int i9) {
        if (this.f20830f == null) {
            this.f20837m = videoItem;
            this.f20830f = u();
        }
        super.n(videoItem, i9);
        if (BaseConfig.isChinese()) {
            VideoMatchHolder videoMatchHolder = new VideoMatchHolder(this.itemView, 0, (FragmentActivity) this.f20829e, false, true);
            this.J = videoMatchHolder;
            videoMatchHolder.setUgcId(videoItem.getUgcId());
            this.J.bind(new VideoModel(videoItem.getVideoUrl(), videoItem.getUserId(), videoItem.getVideoId()));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder
    public TXVodPlayer u() {
        return DynamicVideoPlayer.getInstance().createPlayer(this.f20829e);
    }
}
