.class Lio/grpc/internal/z1$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1$w;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/z1$w;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1$w;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v0, v0, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v1

    iget v1, v1, Lio/grpc/internal/z1$z;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/internal/z1;->S(Lio/grpc/internal/z1;IZ)Lio/grpc/internal/z1$b0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v1, v1, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->a:Lio/grpc/internal/z1$u;

    invoke-virtual {v3}, Lio/grpc/internal/z1$u;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v3}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/grpc/internal/z1$z;->a(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v5

    invoke-static {v3, v5}, Lio/grpc/internal/z1;->R(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Lio/grpc/internal/z1$z;

    .line 5
    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v3}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v5

    invoke-static {v3, v5}, Lio/grpc/internal/z1;->U(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    .line 6
    invoke-static {v3}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v3}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/z1$c0;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    new-instance v4, Lio/grpc/internal/z1$u;

    invoke-static {v3}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/internal/z1$u;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lio/grpc/internal/z1;->W(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)Lio/grpc/internal/z1$u;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v3}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/internal/z1$z;->d()Lio/grpc/internal/z1$z;

    move-result-object v5

    invoke-static {v3, v5}, Lio/grpc/internal/z1;->R(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Lio/grpc/internal/z1$z;

    .line 9
    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v3, v4}, Lio/grpc/internal/z1;->W(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)Lio/grpc/internal/z1$u;

    .line 10
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 11
    iget-object v0, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    sget-object v1, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v2, "Unneeded hedging"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v1, v1, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    .line 13
    invoke-static {v1}, Lio/grpc/internal/z1;->r(Lio/grpc/internal/z1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/z1$w;

    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/z1$w;-><init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)V

    iget-object v3, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v3, v3, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    .line 14
    invoke-static {v3}, Lio/grpc/internal/z1;->X(Lio/grpc/internal/z1;)Lio/grpc/internal/t0;

    move-result-object v3

    iget-wide v5, v3, Lio/grpc/internal/t0;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-interface {v1, v2, v5, v6, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 16
    invoke-virtual {v4, v1}, Lio/grpc/internal/z1$u;->c(Ljava/util/concurrent/Future;)V

    .line 17
    :cond_4
    iget-object v1, p0, Lio/grpc/internal/z1$w$a;->a:Lio/grpc/internal/z1$w;

    iget-object v1, v1, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v1, v0}, Lio/grpc/internal/z1;->t(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
