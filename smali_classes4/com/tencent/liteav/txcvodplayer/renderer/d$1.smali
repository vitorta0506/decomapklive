.class public final Lcom/tencent/liteav/txcvodplayer/renderer/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/renderer/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/renderer/d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/renderer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "VodRenderer"

    const-string/jumbo v1, "uninitialize VodRenderer"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->d(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/p;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->e(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a()V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d$1;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
