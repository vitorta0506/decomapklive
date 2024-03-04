.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;


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

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "TXCVodVideoView"

    const-string v1, "onVideoDecoderError"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v1, 0x83a

    const-string v2, "VOD decoding failed"

    const-string v3, "decode fail"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/tencent/liteav/txcplayer/e;->d:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x438

    if-lt v0, v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    .line 8
    iget-boolean v0, v0, Lcom/tencent/liteav/txcplayer/e;->d:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/tencent/liteav/txcplayer/e;->d:Z

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    :cond_2
    return-void
.end method
