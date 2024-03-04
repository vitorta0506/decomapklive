.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "TXCVodVideoView"

    const-string v1, "onHLSKeyError"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v2, -0x901

    const-string v3, "HLS decypt key get failed"

    const-string v4, "hls key error"

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHLSKeyError stop Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->release()V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    return-void
.end method
