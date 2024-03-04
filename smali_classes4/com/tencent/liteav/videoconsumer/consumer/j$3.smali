.class final Lcom/tencent/liteav/videoconsumer/consumer/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/consumer/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/consumer/j;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$3;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$3;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->x:Lcom/tencent/liteav/videobase/utils/j;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/j;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$3;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    .line 6
    iget v4, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->r:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_0

    iget v4, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->s:I

    if-eq v4, v3, :cond_2

    .line 7
    :cond_0
    iget-object v4, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    if-eqz v4, :cond_1

    .line 8
    sget-object v6, Lcom/tencent/liteav/videobase/videobase/i;->N:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 9
    iget-object v4, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/i;->O:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 10
    :cond_1
    iput v2, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->r:I

    .line 11
    iput v3, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->s:I

    .line 12
    iget-object v4, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/h$b;->h:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "resolution change to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v3, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 16
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->w:Lcom/tencent/liteav/videoconsumer/renderer/o;

    .line 17
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v7

    .line 18
    iget-object v8, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->b:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/utils/f;->a()V

    .line 19
    iget v8, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->c:I

    if-ne v6, v8, :cond_5

    iget v8, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->d:I

    if-eq v7, v8, :cond_6

    .line 20
    :cond_5
    iput v6, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->c:I

    .line 21
    iput v7, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->d:I

    .line 22
    iget-object v8, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v9, Lcom/tencent/liteav/videobase/videobase/i;->U:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 23
    iget-object v6, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v8, Lcom/tencent/liteav/videobase/videobase/i;->V:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 24
    :cond_6
    iget-boolean v6, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->f:Z

    if-nez v6, :cond_7

    const-string v6, "VideoRenderStatistic"

    const-string v7, "rendered first frame!"

    .line 25
    invoke-static {v6, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v6, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v7, Lcom/tencent/liteav/videobase/videobase/h$b;->f:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "rendered first frame"

    invoke-interface {v6, v7, v9, v8}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    .line 27
    iput-boolean v6, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->f:Z

    .line 28
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 29
    iget-object v8, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v9, Lcom/tencent/liteav/videobase/videobase/i;->T:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v9, v5}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 30
    iget-object v5, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v8, Lcom/tencent/liteav/videobase/videobase/i;->w:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v8, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 31
    iget-object v2, v2, Lcom/tencent/liteav/videoconsumer/renderer/o;->e:Lcom/tencent/liteav/videoconsumer/renderer/a;

    invoke-virtual {v2, v6, v7}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(J)V

    .line 32
    iget-object v1, v1, Lcom/tencent/liteav/videoconsumer/consumer/j;->g:Lcom/tencent/liteav/videoconsumer/consumer/j$b;

    if-eqz v1, :cond_8

    .line 33
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    .line 34
    :cond_8
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_9
    return-void
.end method
