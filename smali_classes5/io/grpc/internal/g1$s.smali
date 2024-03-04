.class final Lio/grpc/internal/g1$s;
.super Lio/grpc/t0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "s"
.end annotation


# instance fields
.field final a:Lio/grpc/internal/g1$r;

.field final b:Lio/grpc/t0;

.field final synthetic c:Lio/grpc/internal/g1;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1;Lio/grpc/internal/g1$r;Lio/grpc/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-direct {p0}, Lio/grpc/t0$e;-><init>()V

    const-string p1, "helperImpl"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/g1$r;

    iput-object p1, p0, Lio/grpc/internal/g1$s;->a:Lio/grpc/internal/g1$r;

    const-string p1, "resolver"

    .line 3
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/t0;

    iput-object p1, p0, Lio/grpc/internal/g1$s;->b:Lio/grpc/t0;

    return-void
.end method

.method static synthetic d(Lio/grpc/internal/g1$s;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/g1$s;->e(Lio/grpc/Status;)V

    return-void
.end method

.method private e(Lio/grpc/Status;)V
    .locals 6

    .line 1
    sget-object v0, Lio/grpc/internal/g1;->o0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    .line 2
    invoke-virtual {v3}, Lio/grpc/internal/g1;->c()Lio/grpc/g0;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "[{0}] Failed to resolve name. status={1}"

    .line 3
    invoke-virtual {v0, v1, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->y0(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/g1$t;->n()V

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->r0(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$u;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/g1$u;->c:Lio/grpc/internal/g1$u;

    if-eq v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->G(Lio/grpc/internal/g1;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->WARNING:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v4, "Failed to resolve name: {0}"

    invoke-virtual {v0, v2, v4, v3}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->s0(Lio/grpc/internal/g1;Lio/grpc/internal/g1$u;)Lio/grpc/internal/g1$u;

    .line 8
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$s;->a:Lio/grpc/internal/g1$r;

    iget-object v1, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v1}, Lio/grpc/internal/g1;->G0(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$r;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/g1$s;->a:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->a:Lio/grpc/internal/j$b;

    invoke-virtual {v0, p1}, Lio/grpc/internal/j$b;->b(Lio/grpc/Status;)V

    .line 10
    invoke-direct {p0}, Lio/grpc/internal/g1$s;->f()V

    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->p(Lio/grpc/internal/g1;)Lio/grpc/d1$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->p(Lio/grpc/internal/g1;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->t0(Lio/grpc/internal/g1;)Lio/grpc/internal/k;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->m0(Lio/grpc/internal/g1;)Lio/grpc/internal/k$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->u0(Lio/grpc/internal/g1;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->t0(Lio/grpc/internal/g1;)Lio/grpc/internal/k;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k;->a()J

    move-result-wide v3

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->G(Lio/grpc/internal/g1;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "Scheduling DNS resolution backoff for {0} ns"

    .line 7
    invoke-virtual {v0, v1, v5, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    iget-object v1, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v2, Lio/grpc/internal/g1$m;

    invoke-direct {v2, v0}, Lio/grpc/internal/g1$m;-><init>(Lio/grpc/internal/g1;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    .line 9
    invoke-static {v6}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v6

    invoke-interface {v6}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 10
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lio/grpc/internal/g1;->q(Lio/grpc/internal/g1;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$s$a;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/g1$s$a;-><init>(Lio/grpc/internal/g1$s;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lio/grpc/t0$g;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$s;->c:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$s$b;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/g1$s$b;-><init>(Lio/grpc/internal/g1$s;Lio/grpc/t0$g;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
