.class final Lio/grpc/internal/q1;
.super Lio/grpc/q0;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/q0;",
        "Lio/grpc/f0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final q:Ljava/util/logging/Logger;


# instance fields
.field private a:Lio/grpc/internal/y0;

.field private b:Lio/grpc/internal/e;

.field private c:Lio/grpc/n0$i;

.field private final d:Lio/grpc/g0;

.field private final e:Ljava/lang/String;

.field private final f:Lio/grpc/internal/a0;

.field private final g:Lio/grpc/c0;

.field private final h:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;

.field private final k:Ljava/util/concurrent/CountDownLatch;

.field private volatile l:Z

.field private final m:Lio/grpc/internal/m;

.field private final n:Lio/grpc/internal/o;

.field private final o:Lio/grpc/internal/m2;

.field private final p:Lio/grpc/internal/p$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/q1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/q1;->q:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/grpc/internal/p1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/d1;Lio/grpc/internal/m;Lio/grpc/internal/o;Lio/grpc/c0;Lio/grpc/internal/m2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/d1;",
            "Lio/grpc/internal/m;",
            "Lio/grpc/internal/o;",
            "Lio/grpc/c0;",
            "Lio/grpc/internal/m2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/q0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/q1;->k:Ljava/util/concurrent/CountDownLatch;

    .line 3
    new-instance v0, Lio/grpc/internal/q1$a;

    invoke-direct {v0, p0}, Lio/grpc/internal/q1$a;-><init>(Lio/grpc/internal/q1;)V

    iput-object v0, p0, Lio/grpc/internal/q1;->p:Lio/grpc/internal/p$e;

    const-string v0, "authority"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/q1;->e:Ljava/lang/String;

    .line 5
    const-class v0, Lio/grpc/internal/q1;

    invoke-static {v0, p1}, Lio/grpc/g0;->a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/q1;->d:Lio/grpc/g0;

    const-string p1, "executorPool"

    .line 6
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/p1;

    iput-object p1, p0, Lio/grpc/internal/q1;->h:Lio/grpc/internal/p1;

    .line 7
    invoke-interface {p2}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    const-string p2, "executor"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/q1;->i:Ljava/util/concurrent/Executor;

    const-string p2, "deadlineCancellationExecutor"

    .line 8
    invoke-static {p3, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lio/grpc/internal/q1;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    new-instance p2, Lio/grpc/internal/a0;

    invoke-direct {p2, p1, p4}, Lio/grpc/internal/a0;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/d1;)V

    iput-object p2, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    .line 10
    invoke-static {p7}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/c0;

    iput-object p1, p0, Lio/grpc/internal/q1;->g:Lio/grpc/c0;

    .line 11
    new-instance p1, Lio/grpc/internal/q1$d;

    invoke-direct {p1, p0}, Lio/grpc/internal/q1$d;-><init>(Lio/grpc/internal/q1;)V

    invoke-virtual {p2, p1}, Lio/grpc/internal/a0;->h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;

    .line 12
    iput-object p5, p0, Lio/grpc/internal/q1;->m:Lio/grpc/internal/m;

    const-string p1, "channelTracer"

    .line 13
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/o;

    iput-object p1, p0, Lio/grpc/internal/q1;->n:Lio/grpc/internal/o;

    const-string p1, "timeProvider"

    .line 14
    invoke-static {p8, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/m2;

    iput-object p1, p0, Lio/grpc/internal/q1;->o:Lio/grpc/internal/m2;

    return-void
.end method

.method static synthetic o(Lio/grpc/internal/q1;)Lio/grpc/internal/a0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    return-object p0
.end method

.method static synthetic p(Lio/grpc/internal/q1;)Lio/grpc/internal/e;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q1;->b:Lio/grpc/internal/e;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/q1;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lio/grpc/g0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/q1;->d:Lio/grpc/g0;

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/grpc/internal/p;

    .line 2
    invoke-virtual {p2}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/q1;->i:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    move-object v2, v0

    iget-object v4, p0, Lio/grpc/internal/q1;->p:Lio/grpc/internal/p$e;

    iget-object v5, p0, Lio/grpc/internal/q1;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lio/grpc/internal/q1;->m:Lio/grpc/internal/m;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/grpc/internal/p;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/c;Lio/grpc/internal/p$e;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/m;Lio/grpc/d0;)V

    return-object v8
.end method

.method public j(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/q1;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/q1;->l:Z

    return v0
.end method

.method public l()Z
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/q1;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Lio/grpc/q0;
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/internal/q1;->l:Z

    .line 2
    iget-object v0, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "OobChannel.shutdown() called"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/a0;->g(Lio/grpc/Status;)V

    return-object p0
.end method

.method public n()Lio/grpc/q0;
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/internal/q1;->l:Z

    .line 2
    iget-object v0, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "OobChannel.shutdownNow() called"

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/internal/a0;->b(Lio/grpc/Status;)V

    return-object p0
.end method

.method q()Lio/grpc/internal/y0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/q1;->a:Lio/grpc/internal/y0;

    return-object v0
.end method

.method r(Lio/grpc/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/q1;->n:Lio/grpc/internal/o;

    new-instance v1, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    invoke-direct {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->c(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v1

    sget-object v2, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->d(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/q1;->o:Lio/grpc/internal/m2;

    .line 4
    invoke-interface {v2}, Lio/grpc/internal/m2;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->f(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->a()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/grpc/internal/o;->e(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 7
    sget-object v0, Lio/grpc/internal/q1$f;->a:[I

    invoke-virtual {p1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    new-instance v1, Lio/grpc/internal/q1$b;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/q1$b;-><init>(Lio/grpc/internal/q1;Lio/grpc/q;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/a0;->s(Lio/grpc/n0$i;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    iget-object v0, p0, Lio/grpc/internal/q1;->c:Lio/grpc/n0$i;

    invoke-virtual {p1, v0}, Lio/grpc/internal/a0;->s(Lio/grpc/n0$i;)V

    :goto_0
    return-void
.end method

.method s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/q1;->g:Lio/grpc/c0;

    invoke-virtual {v0, p0}, Lio/grpc/c0;->k(Lio/grpc/f0;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/q1;->h:Lio/grpc/internal/p1;

    iget-object v1, p0, Lio/grpc/internal/q1;->i:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/grpc/internal/q1;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method t(Lio/grpc/internal/y0;)V
    .locals 4

    .line 1
    sget-object v0, Lio/grpc/internal/q1;->q:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "[{0}] Created with [{1}]"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lio/grpc/internal/q1;->a:Lio/grpc/internal/y0;

    .line 3
    new-instance v0, Lio/grpc/internal/q1$e;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/q1$e;-><init>(Lio/grpc/internal/q1;Lio/grpc/internal/y0;)V

    iput-object v0, p0, Lio/grpc/internal/q1;->b:Lio/grpc/internal/e;

    .line 4
    new-instance p1, Lio/grpc/internal/q1$c;

    invoke-direct {p1, p0}, Lio/grpc/internal/q1$c;-><init>(Lio/grpc/internal/q1;)V

    iput-object p1, p0, Lio/grpc/internal/q1;->c:Lio/grpc/n0$i;

    .line 5
    iget-object v0, p0, Lio/grpc/internal/q1;->f:Lio/grpc/internal/a0;

    invoke-virtual {v0, p1}, Lio/grpc/internal/a0;->s(Lio/grpc/n0$i;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/q1;->d:Lio/grpc/g0;

    .line 2
    invoke-virtual {v1}, Lio/grpc/g0;->d()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/q1;->e:Ljava/lang/String;

    const-string v2, "authority"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/q1;->a:Lio/grpc/internal/y0;

    invoke-virtual {v0, p1}, Lio/grpc/internal/y0;->X(Ljava/util/List;)V

    return-void
.end method
