.class public abstract Lug/u;
.super Lug/b;
.source "SourceFile"


# instance fields
.field private final a:[Lug/j;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lug/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Lug/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/x<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lug/k$a;


# direct methods
.method protected varargs constructor <init>(ILjava/util/concurrent/Executor;Lug/k;[Ljava/lang/Object;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lug/b;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lug/u;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Lug/h;

    sget-object v1, Lug/s;->q:Lug/s;

    invoke-direct {v0, v1}, Lug/h;-><init>(Lug/j;)V

    iput-object v0, p0, Lug/u;->d:Lug/x;

    const-string v0, "nThreads"

    .line 6
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lug/g0;

    invoke-virtual {p0}, Lug/u;->n()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p2, v0}, Lug/g0;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    :cond_0
    new-array v0, p1, [Lug/j;

    iput-object v0, p0, Lug/u;->a:[Lug/j;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 9
    :try_start_0
    iget-object v2, p0, Lug/u;->a:[Lug/j;

    invoke-virtual {p0, p2, p4}, Lug/u;->m(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lug/j;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "failed to create a child event loop"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, v1, :cond_1

    .line 11
    iget-object p3, p0, Lug/u;->a:[Lug/j;

    aget-object p3, p3, p2

    invoke-interface {p3}, Lug/l;->l0()Lug/q;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    if-ge v0, v1, :cond_3

    .line 12
    iget-object p2, p0, Lug/u;->a:[Lug/j;

    aget-object p2, p2, v0

    .line 13
    :goto_4
    :try_start_2
    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result p3

    if-nez p3, :cond_2

    const-wide/32 p3, 0x7fffffff

    .line 14
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 16
    :cond_3
    throw p1

    .line 17
    :cond_4
    iget-object p1, p0, Lug/u;->a:[Lug/j;

    invoke-interface {p3, p1}, Lug/k;->a([Lug/j;)Lug/k$a;

    move-result-object p1

    iput-object p1, p0, Lug/u;->e:Lug/k$a;

    .line 18
    new-instance p1, Lug/u$a;

    invoke-direct {p1, p0}, Lug/u$a;-><init>(Lug/u;)V

    .line 19
    iget-object p2, p0, Lug/u;->a:[Lug/j;

    array-length p3, p2

    :goto_5
    if-ge v0, p3, :cond_5

    aget-object p4, p2, v0

    .line 20
    invoke-interface {p4}, Lug/l;->T()Lug/q;

    move-result-object p4

    invoke-interface {p4, p1}, Lug/q;->c(Lug/r;)Lug/q;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 21
    :cond_5
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p2, p0, Lug/u;->a:[Lug/j;

    array-length p2, p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 22
    iget-object p2, p0, Lug/u;->a:[Lug/j;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lug/u;->b:Ljava/util/Set;

    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, Lug/f;->a:Lug/f;

    invoke-direct {p0, p1, p2, v0, p3}, Lug/u;-><init>(ILjava/util/concurrent/Executor;Lug/k;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lug/g0;

    invoke-direct {v0, p2}, Lug/g0;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lug/u;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lug/u;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lug/u;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic f(Lug/u;)[Lug/j;
    .locals 0

    iget-object p0, p0, Lug/u;->a:[Lug/j;

    return-object p0
.end method

.method static synthetic g(Lug/u;)Lug/x;
    .locals 0

    iget-object p0, p0, Lug/u;->d:Lug/x;

    return-object p0
.end method


# virtual methods
.method public T()Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lug/u;->d:Lug/x;

    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 2
    iget-object p1, p0, Lug/u;->a:[Lug/j;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v2, p1, p3

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lug/u;->isTerminated()Z

    move-result p1

    return p1
.end method

.method public isShutdown()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lug/u;->a:[Lug/j;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isTerminated()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lug/u;->a:[Lug/j;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lug/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lug/u;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract m(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lug/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract n()Ljava/util/concurrent/ThreadFactory;
.end method

.method public next()Lug/j;
    .locals 1

    iget-object v0, p0, Lug/u;->e:Lug/k$a;

    invoke-interface {v0}, Lug/k$a;->next()Lug/j;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lug/u;->a:[Lug/j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lug/l;->shutdown()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/u;->a:[Lug/j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .line 2
    invoke-interface/range {v3 .. v8}, Lug/l;->z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lug/u;->T()Lug/q;

    move-result-object p1

    return-object p1
.end method
