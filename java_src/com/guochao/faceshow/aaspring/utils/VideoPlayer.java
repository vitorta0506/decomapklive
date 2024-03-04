package com.guochao.faceshow.aaspring.utils;

import android.os.Bundle;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXVodPlayer;
/* loaded from: classes3.dex */
public class VideoPlayer implements ITXVodPlayListener {
    boolean mCaching;
    private ITXVodPlayListener mListener;
    boolean mPlaying;
    TXVodPlayer mTXVodPlayer;
    String mVideoUrl;

    public VideoPlayer(TXVodPlayer tXVodPlayer, String str) {
        this.mTXVodPlayer = tXVodPlayer;
        this.mVideoUrl = str;
        tXVodPlayer.setVodListener(this);
    }

    public static void setMute(TXVodPlayer tXVodPlayer, boolean z10) {
        tXVodPlayer.setMute(z10);
    }

    public void cache() {
        this.mTXVodPlayer.setAutoPlay(false);
        this.mTXVodPlayer.startVodPlay(this.mVideoUrl);
        this.mCaching = true;
    }

    public TXVodPlayer getTXVodPlayer() {
        return this.mTXVodPlayer;
    }

    public String getVideoUrl() {
        return this.mVideoUrl;
    }

    public boolean isCaching() {
        return this.mCaching;
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle) {
        ITXVodPlayListener iTXVodPlayListener = this.mListener;
        if (iTXVodPlayListener != null) {
            iTXVodPlayListener.onNetStatus(tXVodPlayer, bundle);
        }
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onPlayEvent(TXVodPlayer tXVodPlayer, int i9, Bundle bundle) {
        ITXVodPlayListener iTXVodPlayListener = this.mListener;
        if (iTXVodPlayListener != null) {
            iTXVodPlayListener.onPlayEvent(tXVodPlayer, i9, bundle);
        }
        if (i9 == 2005 && this.mTXVodPlayer.getPlayableDuration() >= this.mTXVodPlayer.getDuration() && !this.mPlaying) {
            DynamicVideoPlayer.getInstance().stop(this.mVideoUrl);
        }
    }

    public void setCaching(boolean z10) {
        this.mCaching = z10;
    }

    public void setTXVodPlayer(TXVodPlayer tXVodPlayer) {
        this.mTXVodPlayer = tXVodPlayer;
    }

    public void setVideoUrl(String str) {
        this.mVideoUrl = str;
    }

    public void setVodListener(ITXVodPlayListener iTXVodPlayListener) {
        this.mListener = iTXVodPlayListener;
    }

    public void start() {
        this.mPlaying = true;
    }

    public void stop() {
        this.mPlaying = false;
    }
}
