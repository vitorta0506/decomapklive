.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/renderer/a$a;


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

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V
    .locals 3

    .line 11
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->a()Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object v1

    const-string v2, "TXCVodVideoView"

    if-eq v0, v1, :cond_0

    const-string p1, "onSurfaceCreated: unmatched render callback\n"

    .line 12
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "onSurfaceCreated"

    .line 13
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;II)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->a()Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    if-eq p1, v0, :cond_0

    const-string p1, "onSurfaceChanged: unmatched render callback\n"

    .line 2
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onSurfaceChanged"

    .line 3
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v3

    if-ne v3, p2, :cond_2

    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a()V

    :cond_4
    return-void
.end method

.method public final b(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->a()Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    if-eq p1, v0, :cond_0

    const-string p1, "onSurfaceDestroyed: unmatched render callback\n"

    .line 2
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onSurfaceDestroyed"

    .line 3
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setSurface(Landroid/view/Surface;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 9
    iget-object p1, p1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-void
.end method
