.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p2, 0x1f4

    .line 2
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->b:I

    const-string p2, "TXCVodeVideoView_Eventhandler"

    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->c:Ljava/lang/String;

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V
    .locals 11

    if-eqz p1, :cond_4

    .line 1
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBufferDuration()J

    move-result-wide v3

    .line 5
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v5

    int-to-long v5, v5

    if-eqz p2, :cond_1

    move-wide v0, v5

    :cond_1
    const-wide/16 v7, 0x3e8

    .line 6
    div-long v9, v0, v7

    long-to-int v10, v9

    const-string v9, "EVT_PLAY_PROGRESS"

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    div-long v9, v5, v7

    long-to-int v10, v9

    const-string v9, "EVT_PLAY_DURATION"

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    div-long v7, v3, v7

    long-to-int v8, v7

    const-string v7, "EVT_PLAYABLE_DURATION"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v1, v0

    const-string v0, "EVT_PLAY_PROGRESS_MS"

    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v0, v5

    const-string v1, "EVT_PLAY_DURATION_MS"

    .line 10
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v0, v3

    const-string v1, "EVT_PLAYABLE_DURATION_MS"

    .line 11
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getRate()F

    move-result v0

    const-string v1, "EVT_PLAYABLE_RATE"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    :cond_2
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/txcplayer/d;->a(ILandroid/os/Bundle;)V

    .line 15
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    .line 17
    iget v0, v0, Lcom/tencent/liteav/txcplayer/e;->l:I

    if-gtz v0, :cond_3

    .line 18
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    const/16 v1, 0x1f4

    .line 19
    iput v1, v0, Lcom/tencent/liteav/txcplayer/e;->l:I

    :cond_3
    const/16 v0, 0x67

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p2, :cond_4

    .line 21
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object p1

    .line 22
    iget p1, p1, Lcom/tencent/liteav/txcplayer/e;->l:I

    int-to-long p1, p1

    .line 23
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "TXCVodeVideoView_Eventhandler"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    const/16 p1, 0x837

    const-string v1, "VOD network reconnected"

    const-string v2, "reconnect"

    .line 6
    invoke-static {v0, p1, v1, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x7d6

    if-eq v1, v3, :cond_2

    const/16 v3, 0x7dd

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "TXCVodVideoView handleMessage:MSG_PLAY_EVENT:EVT_VOD_PLAY_PREPARED"

    .line 8
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, v0, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/txcplayer/d;->a(ILandroid/os/Bundle;)V

    return-void

    :pswitch_3
    const/4 p1, 0x0

    .line 11
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 12
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    const/16 v3, 0xce

    invoke-interface {v1, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v3

    long-to-float v1, v3

    .line 13
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 14
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v5

    const/16 v6, 0xd0

    invoke-interface {v5, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_4

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 15
    div-long/2addr v5, v3

    long-to-float p1, v5

    .line 16
    :cond_4
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v3

    const/16 v4, 0x12e

    invoke-interface {v3, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v3

    .line 17
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v5

    const/16 v6, 0x12d

    invoke-interface {v5, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v5

    .line 18
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v7

    const/16 v8, 0x12f

    invoke-interface {v7, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v7

    .line 19
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "fps"

    .line 20
    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "dps"

    .line 21
    invoke-virtual {v9, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "cachedBytes"

    .line 22
    invoke-virtual {v9, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "bitRate"

    .line 23
    invoke-virtual {v9, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "tcpSpeed"

    .line 24
    invoke-virtual {v9, p1, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    move-result-object p1

    invoke-interface {p1, v9}, Lcom/tencent/liteav/txcplayer/d;->a(Landroid/os/Bundle;)V

    const/16 p1, 0x64

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x1f4

    .line 27
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSG_UPDATE_NET_STATUS exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
