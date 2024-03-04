.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnCompletionListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnErrorListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnInfoListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnPreparedListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSeekCompleteListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStateChangeListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStopAsyncCompleteListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleDataListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleFrameOutListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoFrameOutListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoSizeChangedListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mThumbMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private transferError(II)I
    .locals 2

    const/16 v0, 0x3e9

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x44c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x44e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4ba

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4bb

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4c4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4c5

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4ce

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4cf

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->transferSystemPlayerError(I)I

    move-result v1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "h265"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/a;->notifyHevcVideoDecoderError()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/a;->notifyVideoDecoderError()V

    :cond_4
    :goto_0
    const/16 v1, -0x3f2

    goto :goto_1

    :cond_5
    const/16 v1, -0x3ef

    goto :goto_1

    :cond_6
    const p1, 0xa8ea30

    if-lt p2, p1, :cond_8

    const p1, 0xa91140

    if-ge p2, p1, :cond_8

    const/16 v1, -0x17d5

    goto :goto_1

    .line 8
    :cond_7
    invoke-direct {p0, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->transferGeneralError(I)I

    move-result v1

    :cond_8
    :goto_1
    return v1
.end method

.method private transferGeneralError(I)I
    .locals 4

    const/16 v0, -0x3ef

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, -0x3f2

    goto :goto_1

    .line 1
    :sswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hevc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h265"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/a;->notifyHLSKeyError()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    :sswitch_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa80035 -> :sswitch_2
        0xa80037 -> :sswitch_2
        0xa80038 -> :sswitch_1
        0xa80099 -> :sswitch_0
        0xa8009a -> :sswitch_0
        0xa80161 -> :sswitch_0
        0xa80162 -> :sswitch_0
    .end sparse-switch
.end method

.method private transferInfo(I)I
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x3ee

    if-eq p1, v0, :cond_6

    const/16 v0, 0x68

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_7

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7de

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d7

    goto :goto_1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_ALL_DOWNLOAD_FINISH"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->updateTcpSpeed(J)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->onReceiveFirstVideoRenderEvent()V

    :cond_4
    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x7d8

    goto :goto_1

    :cond_6
    const/16 v1, 0x7e4

    :cond_7
    :goto_1
    return v1
.end method

.method private transferSystemPlayerError(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x1

    goto :goto_0

    :sswitch_0
    const/16 p1, -0x3f2

    goto :goto_0

    :sswitch_1
    const/16 p1, -0x3ef

    goto :goto_0

    :sswitch_2
    const/16 p1, -0x3ec

    goto :goto_0

    :sswitch_3
    const/16 p1, 0xc8

    :goto_0
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x989748 -> :sswitch_3
        0x989a6c -> :sswitch_2
        0x989a6f -> :sswitch_1
        0x989a72 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method attachToPlayer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnPreparedListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnPreparedListener;)V

    .line 4
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnCompletionListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnCompletionListener;)V

    .line 5
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnInfoListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnInfoListener;)V

    .line 6
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnErrorListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnErrorListener;)V

    .line 7
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnSeekCompleteListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSeekCompleteListener;)V

    .line 8
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnVideoSizeChangedListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoSizeChangedListener;)V

    .line 9
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnSubtitleDataListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleDataListener;)V

    .line 10
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnSubtitleFrameOutListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleFrameOutListener;)V

    .line 11
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnVideoFrameOutListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoFrameOutListener;)V

    .line 12
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnAudioFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V

    .line 13
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnVideoProcessFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;)V

    .line 14
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnAudioProcessFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;)V

    .line 15
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnPlayerStateChangeListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStateChangeListener;)V

    .line 16
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnStopAsyncCompleteListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStopAsyncCompleteListener;)V

    :cond_0
    return-void
.end method

.method public onAudioFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "ThumbMediaPlayerListener onAudioFrameOut"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioProcessFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;
    .locals 0

    return-object p2
.end method

.method public onCompletion(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/a;->notifyOnCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/thumbplayer/api/ITPPlayer;IIJJ)V
    .locals 0

    const/16 p1, 0x3e8

    if-eq p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "onError type: "

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " code: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p1, p6}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->transferError(II)I

    move-result p2

    const/16 p6, -0x17d5

    if-ne p2, p6, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/txcplayer/a;->notifyOnError(II)Z

    return-void

    :cond_0
    long-to-int p3, p4

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/txcplayer/a;->notifyOnError(II)Z

    :cond_1
    return-void
.end method

.method public onInfo(Lcom/tencent/thumbplayer/api/ITPPlayer;IJJLjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_5

    .line 2
    invoke-direct {p0, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->transferInfo(I)I

    move-result p2

    long-to-int p4, p3

    if-eqz p7, :cond_0

    .line 3
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;

    if-eqz p3, :cond_0

    .line 4
    move-object p3, p7

    check-cast p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInfo TPCDNURLInfo:cdnIp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->cdnIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":uIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->uIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":errorStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->errorStr:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p7, :cond_3

    .line 6
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    if-eqz p3, :cond_3

    .line 7
    move-object p3, p7

    check-cast p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    .line 8
    iget-wide v0, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->totalFileSize:J

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->updateBitrate(J)V

    .line 10
    iget v0, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->downloadSpeedKBps:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 11
    iget-object p3, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    if-eqz p3, :cond_2

    const-string v2, ","

    .line 12
    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 13
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    if-eqz v4, :cond_1

    const-string v5, "httpAvgSpeedKB"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p3, ":"

    .line 15
    invoke-virtual {v4, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->updateTcpSpeed(J)V

    .line 17
    :cond_3
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;

    if-eqz p3, :cond_4

    .line 18
    move-object p3, p7

    check-cast p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInfo TPVideoCropInfo:cropBottom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":cropLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": cropRight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":cropTop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->width:I

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    long-to-int p3, p5

    .line 20
    invoke-virtual {p1, p2, p4, p3, p7}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public onPrepared(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onPrepared"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/a;->notifyOnPrepared()V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onSeekComplete"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/a;->notifyOnSeekComplete()V

    :cond_0
    return-void
.end method

.method public onStateChange(II)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThumbMediaPlayerListener onStateChange:preState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": curState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopAsyncComplete(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onStopAsyncComplete"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubtitleData(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPSubtitleData;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThumbMediaPlayerListener onSubtitleData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/thumbplayer/api/TPSubtitleData;->subtitleData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tencent/liteav/txcplayer/model/d;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/api/TPSubtitleData;->subtitleData:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/tencent/liteav/txcplayer/model/d;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcplayer/a;->notifyOnTimedText(Lcom/tencent/liteav/txcplayer/model/d;)V

    :cond_0
    return-void
.end method

.method public onSubtitleFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPSubtitleFrameBuffer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onSubtitleFrameOut"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/txcplayer/a;->notifySubtitleFrameData(Lcom/tencent/thumbplayer/api/TPSubtitleFrameBuffer;)V

    :cond_0
    return-void
.end method

.method public onVideoFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPVideoFrameBuffer;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "ThumbMediaPlayerListener onVideoFrameOut"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoProcessFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onVideoProcessFrameOut"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onVideoSizeChanged(Lcom/tencent/thumbplayer/api/ITPPlayer;JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThumbMediaPlayerListener on:videoSizeChanged:width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v1, p2

    long-to-int v2, p4

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getVideoSarNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getVideoSarDen()I

    move-result v4

    const/4 v5, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/txcplayer/a;->notifyOnVideoSizeChanged(IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
