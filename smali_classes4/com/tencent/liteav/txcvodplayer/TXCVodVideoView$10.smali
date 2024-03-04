.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;


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

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v1, 0x7d6

    const-string v2, "Playback completed"

    const-string v3, "play end"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
