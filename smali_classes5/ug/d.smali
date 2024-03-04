.class public abstract Lug/d;
.super Lug/a;
.source "SourceFile"


# static fields
.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lug/e0<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final g:Ljava/lang/Runnable;


# instance fields
.field d:Lio/grpc/netty/shaded/io/netty/util/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/v<",
            "Lug/e0<",
            "*>;>;"
        }
    .end annotation
.end field

.field e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lug/d;

    .line 2
    new-instance v0, Lug/d$a;

    invoke-direct {v0}, Lug/d$a;-><init>()V

    sput-object v0, Lug/d;->f:Ljava/util/Comparator;

    .line 3
    new-instance v0, Lug/d$b;

    invoke-direct {v0}, Lug/d$b;-><init>()V

    sput-object v0, Lug/d;->g:Ljava/lang/Runnable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lug/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lug/l;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lug/a;-><init>(Lug/l;)V

    return-void
.end method

.method private H(Lug/e0;)Lug/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lug/e0<",
            "TV;>;)",
            "Lug/d0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lug/d;->I(Lug/e0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lug/e0;->x0()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lug/d;->m(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lug/a;->d(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lug/d;->g(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lug/d;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private L(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lug/d;->K(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected static u(J)J
    .locals 0

    invoke-static {p0, p1}, Lug/e0;->z0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static x(Ljava/util/Queue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lug/e0<",
            "*>;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static y()J
    .locals 2

    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method final B()Lug/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/e0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lug/e0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final F(J)Ljava/lang/Runnable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lug/d;->B()Lug/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lug/e0;->x0()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lug/e0;->D0()V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final G(Lug/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/e0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lug/d;->J()Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/v;->g0(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lug/a;->d(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method final I(Lug/e0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/e0<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lug/d;->J()Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    iget-wide v1, p0, Lug/d;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lug/d;->e:J

    invoke-virtual {p1, v1, v2}, Lug/e0;->E0(J)Lug/e0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method J()Lio/grpc/netty/shaded/io/netty/util/internal/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/util/internal/v<",
            "Lug/e0<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/g;

    sget-object v1, Lug/d;->f:Ljava/util/Comparator;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/g;-><init>(Ljava/util/Comparator;I)V

    iput-object v0, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    .line 3
    :cond_0
    iget-object v0, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    return-object v0
.end method

.method protected K(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected g(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected m(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    .line 2
    invoke-static {v0}, Lug/d;->x(Ljava/util/Queue;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Lug/e0;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lug/e0;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5, v1}, Lug/e0;->v0(Z)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/v;->B0()V

    return-void
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lug/d;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lug/d;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "*>;"
        }
    .end annotation

    const-string v0, "command"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit"

    .line 4
    invoke-static {p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lug/d;->L(JLjava/util/concurrent/TimeUnit;)V

    .line 6
    new-instance v0, Lug/e0;

    .line 7
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Lug/e0;->y0(J)J

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lug/e0;-><init>(Lug/d;Ljava/lang/Runnable;J)V

    .line 8
    invoke-direct {p0, v0}, Lug/d;->H(Lug/e0;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "callable"

    .line 9
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit"

    .line 10
    invoke-static {p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 11
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lug/d;->L(JLjava/util/concurrent/TimeUnit;)V

    .line 12
    new-instance v0, Lug/e0;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Lug/e0;->y0(J)J

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lug/e0;-><init>(Lug/d;Ljava/util/concurrent/Callable;J)V

    invoke-direct {p0, v0}, Lug/d;->H(Lug/e0;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lug/d;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "*>;"
        }
    .end annotation

    move-object v7, p0

    move-wide v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    const-string v5, "command"

    move-object v6, p1

    .line 2
    invoke-static {p1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "unit"

    .line 3
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmp-long v11, v0, v9

    if-ltz v11, :cond_1

    cmp-long v11, v2, v9

    if-lez v11, :cond_0

    .line 4
    invoke-direct {p0, v0, v1, v4}, Lug/d;->L(JLjava/util/concurrent/TimeUnit;)V

    .line 5
    invoke-direct {p0, v2, v3, v4}, Lug/d;->L(JLjava/util/concurrent/TimeUnit;)V

    .line 6
    new-instance v8, Lug/e0;

    .line 7
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lug/e0;->y0(J)J

    move-result-wide v9

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lug/e0;-><init>(Lug/d;Ljava/lang/Runnable;JJ)V

    .line 8
    invoke-direct {p0, v8}, Lug/d;->H(Lug/e0;)Lug/d0;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v8, [Ljava/lang/Object;

    .line 10
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "period: %d (expected: > 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v8, [Ljava/lang/Object;

    .line 12
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "initialDelay: %d (expected: >= 0)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lug/d;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/d0<",
            "*>;"
        }
    .end annotation

    move-object v7, p0

    move-wide v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    const-string v5, "command"

    move-object v6, p1

    .line 2
    invoke-static {p1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "unit"

    .line 3
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmp-long v11, v0, v9

    if-ltz v11, :cond_1

    cmp-long v11, v2, v9

    if-lez v11, :cond_0

    .line 4
    invoke-direct {p0, v0, v1, v4}, Lug/d;->L(JLjava/util/concurrent/TimeUnit;)V

    .line 5
    invoke-direct {p0, v2, v3, v4}, Lug/d;->L(JLjava/util/concurrent/TimeUnit;)V

    .line 6
    new-instance v8, Lug/e0;

    .line 7
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lug/e0;->y0(J)J

    move-result-wide v9

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    neg-long v11, v0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lug/e0;-><init>(Lug/d;Ljava/lang/Runnable;JJ)V

    .line 8
    invoke-direct {p0, v8}, Lug/d;->H(Lug/e0;)Lug/d0;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v8, [Ljava/lang/Object;

    .line 10
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "delay: %d (expected: > 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v8, [Ljava/lang/Object;

    .line 12
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "initialDelay: %d (expected: >= 0)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final z()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lug/d;->B()Lug/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lug/e0;->x0()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
