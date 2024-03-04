.class public Lio/grpc/internal/z;
.super Lio/grpc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/z$j;,
        Lio/grpc/internal/z$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/g<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field private static final j:Ljava/util/logging/Logger;

.field private static final k:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lio/grpc/r;

.field private volatile d:Z

.field private e:Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private f:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private g:Lio/grpc/Status;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/grpc/internal/z$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/z$j<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/internal/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/z;->j:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/internal/z$h;

    invoke-direct {v0}, Lio/grpc/internal/z$h;-><init>()V

    sput-object v0, Lio/grpc/internal/z;->k:Lio/grpc/g;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/z;->h:Ljava/util/List;

    const-string v0, "callExecutor"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/z;->b:Ljava/util/concurrent/Executor;

    const-string p1, "scheduler"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/z;->c:Lio/grpc/r;

    .line 6
    invoke-direct {p0, p2, p3}, Lio/grpc/internal/z;->m(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/z;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic f(Lio/grpc/internal/z;Lio/grpc/Status;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/z;->j(Lio/grpc/Status;Z)V

    return-void
.end method

.method static synthetic g(Lio/grpc/internal/z;)Lio/grpc/g;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    return-object p0
.end method

.method static synthetic h(Lio/grpc/internal/z;)Lio/grpc/r;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z;->c:Lio/grpc/r;

    return-object p0
.end method

.method private j(Lio/grpc/Status;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    if-nez v0, :cond_0

    .line 3
    sget-object p2, Lio/grpc/internal/z;->k:Lio/grpc/g;

    .line 4
    invoke-direct {p0, p2}, Lio/grpc/internal/z;->o(Lio/grpc/g;)V

    const/4 p2, 0x0

    .line 5
    iget-object v0, p0, Lio/grpc/internal/z;->e:Lio/grpc/g$a;

    .line 6
    iput-object p1, p0, Lio/grpc/internal/z;->g:Lio/grpc/Status;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    monitor-exit p0

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Lio/grpc/internal/z$d;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/z$d;-><init>(Lio/grpc/internal/z;Lio/grpc/Status;)V

    invoke-direct {p0, p2}, Lio/grpc/internal/z;->k(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    iget-object p2, p0, Lio/grpc/internal/z;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/z$i;

    invoke-direct {v1, p0, v0, p1}, Lio/grpc/internal/z$i;-><init>(Lio/grpc/internal/z;Lio/grpc/g$a;Lio/grpc/Status;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_3
    invoke-direct {p0}, Lio/grpc/internal/z;->l()V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lio/grpc/internal/z;->i()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private k(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/z;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/internal/z;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private l()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/z;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/grpc/internal/z;->h:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/grpc/internal/z;->d:Z

    .line 6
    iget-object v0, p0, Lio/grpc/internal/z;->i:Lio/grpc/internal/z$j;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lio/grpc/internal/z;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/z$c;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/z$c;-><init>(Lio/grpc/internal/z;Lio/grpc/internal/z$j;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/z;->h:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lio/grpc/internal/z;->h:Ljava/util/List;

    .line 11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 13
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private m(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;)Ljava/util/concurrent/ScheduledFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/t;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z;->c:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->o()Lio/grpc/t;

    move-result-object v0

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    if-eqz p2, :cond_1

    .line 2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3}, Lio/grpc/t;->i(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lio/grpc/t;->i(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_3

    .line 4
    invoke-virtual {v0, v5}, Lio/grpc/t;->i(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 5
    sget-object v0, Lio/grpc/internal/z;->j:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    new-array v7, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "Call timeout set to \'%d\' ns, due to context deadline."

    .line 8
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string p2, " Explicit call timeout was not set."

    .line 9
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2, v5}, Lio/grpc/t;->i(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    new-array p2, v4, [Ljava/lang/Object;

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p2, v3

    const-string v5, " Explicit call timeout was \'%d\' ns."

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    div-long/2addr v5, v9

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    rem-long/2addr v9, v7

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-gez v0, :cond_4

    const-string v0, "ClientCall started after deadline exceeded. Deadline exceeded after -"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v0, "Deadline exceeded after "

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :goto_1
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, ".%09d"

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s. "

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Lio/grpc/internal/z$b;

    invoke-direct {v0, p0, p2}, Lio/grpc/internal/z$b;-><init>(Lio/grpc/internal/z;Ljava/lang/StringBuilder;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method private o(Lio/grpc/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/Status;->g:Lio/grpc/Status;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    .line 3
    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/z;->j(Lio/grpc/Status;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lio/grpc/internal/z$g;

    invoke-direct {v0, p0}, Lio/grpc/internal/z$g;-><init>(Lio/grpc/internal/z;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/z;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    invoke-virtual {v0, p1}, Lio/grpc/g;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/internal/z$f;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z$f;-><init>(Lio/grpc/internal/z;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z;->k(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/z;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    invoke-virtual {v0, p1}, Lio/grpc/g;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/internal/z$e;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z$e;-><init>(Lio/grpc/internal/z;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z;->k(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e(Lio/grpc/g$a;Lio/grpc/s0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/s0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z;->e:Lio/grpc/g$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/g$a;

    iput-object v0, p0, Lio/grpc/internal/z;->e:Lio/grpc/g$a;

    .line 4
    iget-object v0, p0, Lio/grpc/internal/z;->g:Lio/grpc/Status;

    .line 5
    iget-boolean v1, p0, Lio/grpc/internal/z;->d:Z

    if-nez v1, :cond_1

    .line 6
    new-instance v2, Lio/grpc/internal/z$j;

    invoke-direct {v2, p1}, Lio/grpc/internal/z$j;-><init>(Lio/grpc/g$a;)V

    iput-object v2, p0, Lio/grpc/internal/z;->i:Lio/grpc/internal/z$j;

    move-object p1, v2

    .line 7
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    iget-object p2, p0, Lio/grpc/internal/z;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/z$i;

    invoke-direct {v1, p0, p1, v0}, Lio/grpc/internal/z$i;-><init>(Lio/grpc/internal/z;Lio/grpc/g$a;Lio/grpc/Status;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    invoke-virtual {v0, p1, p2}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Lio/grpc/internal/z$a;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/z$a;-><init>(Lio/grpc/internal/z;Lio/grpc/g$a;Lio/grpc/s0;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z;->k(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public final n(Lio/grpc/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "call"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/g;

    invoke-direct {p0, p1}, Lio/grpc/internal/z;->o(Lio/grpc/g;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0}, Lio/grpc/internal/z;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/z;->f:Lio/grpc/g;

    const-string v2, "realCall"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
