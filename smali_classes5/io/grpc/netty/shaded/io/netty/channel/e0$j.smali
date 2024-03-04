.class final Lio/grpc/netty/shaded/io/netty/channel/e0$j;
.super Lio/grpc/netty/shaded/io/netty/channel/e0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "j"
.end annotation


# instance fields
.field final synthetic c:Lio/grpc/netty/shaded/io/netty/channel/e0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$j;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    .line 2
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0$i;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$j;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->n(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 7
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v0, "Can\'t invoke handlerRemoved() as the EventExecutor {} rejected it, removing handler {}."

    .line 8
    invoke-interface {v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->o1()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$j;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->n(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-void
.end method
