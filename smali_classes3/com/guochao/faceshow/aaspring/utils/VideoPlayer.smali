.class public Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/rtmp/ITXVodPlayListener;


# instance fields
.field mCaching:Z

.field private mListener:Lcom/tencent/rtmp/ITXVodPlayListener;

.field mPlaying:Z

.field mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

.field mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/TXVodPlayer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mVideoUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p0}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    return-void
.end method

.method public static setMute(Lcom/tencent/rtmp/TXVodPlayer;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setMute(Z)V

    return-void
.end method


# virtual methods
.method public cache()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mCaching:Z

    return-void
.end method

.method public getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCaching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mCaching:Z

    return v0
.end method

.method public onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXVodPlayListener;->onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/rtmp/ITXVodPlayListener;->onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V

    :cond_0
    const/16 p1, 0x7d5

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getPlayableDuration()F

    move-result p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p2}, Lcom/tencent/rtmp/TXVodPlayer;->getDuration()F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mPlaying:Z

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->stop(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCaching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mCaching:Z

    return-void
.end method

.method public setTXVodPlayer(Lcom/tencent/rtmp/TXVodPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mTXVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mPlaying:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->mPlaying:Z

    return-void
.end method
