.class final synthetic Lcom/tencent/liteav/videoconsumer/consumer/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/consumer/j;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/j;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/x;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/x;->b:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/consumer/j;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/x;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/x;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/x;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/x;->b:Z

    .line 1
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    const-string v3, "Stop"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/consumer/j$a;->a:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    if-eq v2, v3, :cond_3

    .line 3
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->b:Lcom/tencent/liteav/base/util/j;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/tencent/liteav/base/util/j;->a(I)V

    .line 4
    iput-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->n:Z

    .line 6
    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->o:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    .line 7
    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->v:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 8
    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->f:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g()V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v4, v1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->stop(Z)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->x:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/j;->b()V

    .line 13
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->w:Lcom/tencent/liteav/videoconsumer/renderer/o;

    .line 14
    iput-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/renderer/o;->f:Z

    .line 15
    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/renderer/o;->b:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    .line 16
    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/i;->T:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 17
    iget-object v1, v1, Lcom/tencent/liteav/videoconsumer/renderer/o;->a:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->W:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->u:Ljava/lang/Object;

    .line 19
    iput v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->r:I

    .line 20
    iput v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->s:I

    :cond_3
    return-void
.end method
