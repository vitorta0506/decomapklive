.class final Lio/grpc/internal/z1$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a0"
.end annotation


# instance fields
.field final a:Lio/grpc/internal/z1$b0;

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    return-void
.end method

.method private e(Lio/grpc/s0;)Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/internal/z1;->z:Lio/grpc/s0$i;

    invoke-virtual {p1, v0}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private f(Lio/grpc/Status;Lio/grpc/s0;)Lio/grpc/internal/z1$v;
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/internal/z1$a0;->e(Lio/grpc/s0;)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->X(Lio/grpc/internal/z1;)Lio/grpc/internal/t0;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/t0;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/z1$c0;->b()Z

    move-result v1

    xor-int/2addr v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance v3, Lio/grpc/internal/z1$v;

    if-nez p1, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v3, v0, p2}, Lio/grpc/internal/z1$v;-><init>(ZLjava/lang/Integer;)V

    return-object v3
.end method

.method private g(Lio/grpc/Status;Lio/grpc/s0;)Lio/grpc/internal/z1$x;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lio/grpc/internal/z1$x;

    invoke-direct {p1, v3, v1, v2}, Lio/grpc/internal/z1$x;-><init>(ZJ)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/a2;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 4
    invoke-direct {p0, p2}, Lio/grpc/internal/z1$a0;->e(Lio/grpc/s0;)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/z1$c0;->b()Z

    move-result v0

    xor-int/2addr v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v5, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v5}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object v5

    iget v5, v5, Lio/grpc/internal/a2;->a:I

    iget-object v6, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    iget v6, v6, Lio/grpc/internal/z1$b0;->d:I

    add-int/2addr v6, v4

    if-le v5, v6, :cond_4

    if-nez v0, :cond_4

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p1}, Lio/grpc/internal/z1;->H(Lio/grpc/internal/z1;)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {}, Lio/grpc/internal/z1;->J()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double p1, p1, v0

    double-to-long v1, p1

    .line 10
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    .line 11
    invoke-static {p1}, Lio/grpc/internal/z1;->H(Lio/grpc/internal/z1;)J

    move-result-wide v5

    long-to-double v5, v5

    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object p2

    iget-wide v7, p2, Lio/grpc/internal/a2;->d:D

    mul-double v5, v5, v7

    double-to-long v5, v5

    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    .line 12
    invoke-static {p2}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object p2

    iget-wide v7, p2, Lio/grpc/internal/a2;->c:J

    .line 13
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lio/grpc/internal/z1;->I(Lio/grpc/internal/z1;J)J

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_4

    .line 15
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 16
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p1}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object p2

    iget-wide v5, p2, Lio/grpc/internal/a2;->b:J

    invoke-static {p1, v5, v6}, Lio/grpc/internal/z1;->I(Lio/grpc/internal/z1;J)J

    :goto_1
    const/4 v3, 0x1

    .line 17
    :cond_4
    new-instance p1, Lio/grpc/internal/z1$x;

    invoke-direct {p1, v3, v1, v2}, Lio/grpc/internal/z1$x;-><init>(ZJ)V

    return-object p1
.end method


# virtual methods
.method public a(Lio/grpc/internal/k2$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$a0$g;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/z1$a0$g;-><init>(Lio/grpc/internal/z1$a0;Lio/grpc/internal/k2$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lio/grpc/s0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    invoke-static {v0, v1}, Lio/grpc/internal/z1;->w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/z1$c0;->c()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$a0$a;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/z1$a0$a;-><init>(Lio/grpc/internal/z1$a0;Lio/grpc/s0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-virtual {v0}, Lio/grpc/internal/z1;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$a0$h;

    invoke-direct {v1, p0}, Lio/grpc/internal/z1$a0$h;-><init>(Lio/grpc/internal/z1$a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    invoke-virtual {v2, v3}, Lio/grpc/internal/z1$z;->g(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/internal/z1;->R(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Lio/grpc/internal/z1$z;

    .line 3
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->y(Lio/grpc/internal/z1;)Lio/grpc/internal/x0;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/x0;->a(Ljava/lang/Object;)Lio/grpc/internal/x0;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    iget-boolean v1, v0, Lio/grpc/internal/z1$b0;->c:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1, v0}, Lio/grpc/internal/z1;->w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    .line 7
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$a0$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/internal/z1$a0$c;-><init>(Lio/grpc/internal/z1$a0;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v0, :cond_3

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    .line 10
    invoke-static {v1}, Lio/grpc/internal/z1;->z(Lio/grpc/internal/z1;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_3

    .line 11
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    invoke-static {v0, v1}, Lio/grpc/internal/z1;->w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    .line 12
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    if-ne v0, v1, :cond_2

    .line 13
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v1, "Too many transparent retries. Might be a bug in gRPC"

    .line 14
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$a0$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/internal/z1$a0$d;-><init>(Lio/grpc/internal/z1$a0;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 17
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_a

    .line 18
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    .line 19
    invoke-static {v0}, Lio/grpc/internal/z1;->A(Lio/grpc/internal/z1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 20
    :cond_4
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v0, :cond_5

    .line 21
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->B(Lio/grpc/internal/z1;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 22
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->E(Lio/grpc/internal/z1;)V

    goto/16 :goto_2

    .line 23
    :cond_5
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->A(Lio/grpc/internal/z1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->B(Lio/grpc/internal/z1;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/z1$a0;->f(Lio/grpc/Status;Lio/grpc/s0;)Lio/grpc/internal/z1$v;

    move-result-object v0

    .line 26
    iget-boolean v1, v0, Lio/grpc/internal/z1$v;->a:Z

    if-eqz v1, :cond_6

    .line 27
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    iget-object v2, v0, Lio/grpc/internal/z1$v;->b:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lio/grpc/internal/z1;->F(Lio/grpc/internal/z1;Ljava/lang/Integer;)V

    .line 28
    :cond_6
    iget-object v1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 29
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v2}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    invoke-virtual {v3, v4}, Lio/grpc/internal/z1$z;->e(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/internal/z1;->R(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Lio/grpc/internal/z1$z;

    .line 30
    iget-boolean v0, v0, Lio/grpc/internal/z1$v;->a:Z

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v2

    invoke-static {v0, v2}, Lio/grpc/internal/z1;->U(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 32
    :cond_7
    monitor-exit v1

    return-void

    .line 33
    :cond_8
    monitor-exit v1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 34
    :cond_9
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/z1$a0;->g(Lio/grpc/Status;Lio/grpc/s0;)Lio/grpc/internal/z1$x;

    move-result-object v0

    .line 35
    iget-boolean v1, v0, Lio/grpc/internal/z1$x;->a:Z

    if-eqz v1, :cond_f

    .line 36
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p1}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 37
    :try_start_2
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    new-instance p2, Lio/grpc/internal/z1$u;

    invoke-static {p1}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p3}, Lio/grpc/internal/z1$u;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lio/grpc/internal/z1;->G(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)Lio/grpc/internal/z1$u;

    .line 38
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    .line 40
    invoke-static {p1}, Lio/grpc/internal/z1;->r(Lio/grpc/internal/z1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance p3, Lio/grpc/internal/z1$a0$b;

    invoke-direct {p3, p0}, Lio/grpc/internal/z1$a0$b;-><init>(Lio/grpc/internal/z1$a0;)V

    iget-wide v0, v0, Lio/grpc/internal/z1$x;->b:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p3, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, Lio/grpc/internal/z1$u;->c(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_1
    move-exception p1

    .line 42
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 43
    :cond_a
    :goto_0
    iget-object p1, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    iget-object p2, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    iget p2, p2, Lio/grpc/internal/z1$b0;->d:I

    invoke-static {p1, p2, v2}, Lio/grpc/internal/z1;->S(Lio/grpc/internal/z1;IZ)Lio/grpc/internal/z1$b0;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->B(Lio/grpc/internal/z1;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 45
    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 46
    :try_start_4
    iget-object p3, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p3}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v3, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    invoke-virtual {v0, v3, p1}, Lio/grpc/internal/z1$z;->f(Lio/grpc/internal/z1$b0;Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v0

    invoke-static {p3, v0}, Lio/grpc/internal/z1;->R(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Lio/grpc/internal/z1$z;

    .line 47
    iget-object p3, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p3}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    invoke-static {p3, v0}, Lio/grpc/internal/z1;->U(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    .line 48
    invoke-static {p3}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object p3

    iget-object p3, p3, Lio/grpc/internal/z1$z;->d:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    if-ne p3, v2, :cond_b

    const/4 v1, 0x1

    .line 49
    :cond_b
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_e

    .line 50
    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2, p1}, Lio/grpc/internal/z1;->w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 51
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 52
    :cond_c
    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;

    move-result-object p2

    iget p2, p2, Lio/grpc/internal/a2;->a:I

    if-ne p2, v2, :cond_e

    .line 53
    :cond_d
    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2, p1}, Lio/grpc/internal/z1;->w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    .line 54
    :cond_e
    :goto_1
    iget-object p2, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->u(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lio/grpc/internal/z1$a0$e;

    invoke-direct {p3, p0, p1}, Lio/grpc/internal/z1$a0$e;-><init>(Lio/grpc/internal/z1$a0;Lio/grpc/internal/z1$b0;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 55
    :cond_f
    :goto_2
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    invoke-static {v0, v1}, Lio/grpc/internal/z1;->w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    .line 56
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v1, p0, Lio/grpc/internal/z1$a0;->a:Lio/grpc/internal/z1$b0;

    if-ne v0, v1, :cond_10

    .line 57
    iget-object v0, p0, Lio/grpc/internal/z1$a0;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$a0$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/internal/z1$a0$f;-><init>(Lio/grpc/internal/z1$a0;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void

    :catchall_3
    move-exception p1

    .line 58
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method
