.class public abstract Lug/a;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SourceFile"

# interfaces
.implements Lug/j;


# static fields
.field private static final c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:Lug/l;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lug/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lug/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lug/a;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lug/a;-><init>(Lug/l;)V

    return-void
.end method

.method protected constructor <init>(Lug/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 3
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lug/a;->b:Ljava/util/Collection;

    .line 4
    iput-object p1, p0, Lug/a;->a:Lug/l;

    return-void
.end method

.method protected static f(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lug/a;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "A task raised an exception. Task: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Y()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, v0}, Lug/j;->L0(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
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

    iget-object v0, p0, Lug/a;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public l0()Lug/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0xf

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lug/l;->z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;

    move-result-object v0

    return-object v0
.end method

.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lug/a0;

    invoke-direct {v0, p0, p1, p2}, Lug/a0;-><init>(Lug/j;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lug/a0;

    invoke-direct {v0, p0, p1}, Lug/a0;-><init>(Lug/j;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public next()Lug/j;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lug/a;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lug/a;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 0
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

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 0
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

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lug/a;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 0
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

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lug/a;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    .locals 0
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

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lug/a;->shutdown()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lug/a;->submit(Ljava/lang/Runnable;)Lug/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lug/a;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lug/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lug/a;->submit(Ljava/util/concurrent/Callable;)Lug/q;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Lug/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Lug/q;

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lug/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lug/q<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Lug/q;

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lug/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lug/q<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Lug/q;

    return-object p1
.end method
