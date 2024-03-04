package com.tencent.thumbplayer.api;
/* loaded from: classes4.dex */
public class ITPPlayerListener {

    /* loaded from: classes4.dex */
    public interface IOnAudioFrameOutputListener {
        void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface IOnAudioProcessFrameOutputListener {
        TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface IOnCompletionListener {
        void onCompletion(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes4.dex */
    public interface IOnDemuxerListener {
        TPRemoteSdpInfo onSdpExchange(ITPPlayer iTPPlayer, String str, int i9);
    }

    /* loaded from: classes4.dex */
    public interface IOnDetailInfoListener {
        void onDetailInfo(ITPPlayer iTPPlayer, TPPlayerDetailInfo tPPlayerDetailInfo);
    }

    /* loaded from: classes4.dex */
    public interface IOnErrorListener {
        void onError(ITPPlayer iTPPlayer, int i9, int i10, long j10, long j11);
    }

    /* loaded from: classes4.dex */
    public interface IOnInfoListener {
        void onInfo(ITPPlayer iTPPlayer, int i9, long j10, long j11, Object obj);
    }

    /* loaded from: classes4.dex */
    public interface IOnPreparedListener {
        void onPrepared(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes4.dex */
    public interface IOnSeekCompleteListener {
        void onSeekComplete(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes4.dex */
    public interface IOnStateChangeListener {
        void onStateChange(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface IOnStopAsyncCompleteListener {
        void onStopAsyncComplete(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes4.dex */
    public interface IOnSubtitleDataListener {
        void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData);
    }

    /* loaded from: classes4.dex */
    public interface IOnSubtitleFrameOutListener {
        void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface IOnVideoFrameOutListener {
        void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface IOnVideoProcessFrameOutputListener {
        TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface IOnVideoSizeChangedListener {
        void onVideoSizeChanged(ITPPlayer iTPPlayer, long j10, long j11);
    }
}
