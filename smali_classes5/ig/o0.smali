.class Lig/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/o0$c;,
        Lig/o0$b;,
        Lig/o0$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lig/o0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lig/o0$a;

    invoke-direct {v0, p0}, Lig/o0$a;-><init>(Lig/o0;)V

    iput-object v0, p0, Lig/o0;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lig/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "channel"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/e;

    iput-object p1, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lig/o0;->c:Ljava/util/Queue;

    return-void
.end method

.method static synthetic a(Lig/o0;)V
    .locals 0

    invoke-direct {p0}, Lig/o0;->e()V

    return-void
.end method

.method private e()V
    .locals 8

    const-string v0, "WriteQueue.flush0"

    const-string v1, "WriteQueue.flush1"

    const-string v2, "WriteQueue.periodicFlush"

    .line 1
    invoke-static {v2}, Lqh/c;->g(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lig/o0;->c:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lig/o0$c;

    if-eqz v6, :cond_1

    .line 3
    iget-object v7, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v6, v7}, Lig/o0$c;->e(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x80

    if-ne v4, v6, :cond_0

    .line 4
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-object v4, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/channel/e;->flush()Lio/grpc/netty/shaded/io/netty/channel/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez v4, :cond_2

    if-nez v5, :cond_3

    .line 7
    :cond_2
    invoke-static {v1}, Lqh/c;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    :try_start_3
    iget-object v0, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->flush()Lio/grpc/netty/shaded/io/netty/channel/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    invoke-static {v1}, Lqh/c;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10
    :cond_3
    invoke-static {v2}, Lqh/c;->i(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lig/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object v0, p0, Lig/o0;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lig/o0;->f()V

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 14
    :try_start_5
    invoke-static {v1}, Lqh/c;->i(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 15
    invoke-static {v2}, Lqh/c;->i(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lig/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    iget-object v1, p0, Lig/o0;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 18
    invoke-virtual {p0}, Lig/o0;->f()V

    :cond_5
    throw v0
.end method


# virtual methods
.method b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v0

    const-string v1, "must be on the event loop"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lig/o0;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lig/o0;->e()V

    return-void
.end method

.method c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 2

    .line 1
    invoke-interface {p1}, Lig/o0$c;->a()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "promise must not be set on command"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lig/o0$c;->b(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 4
    iget-object v1, p0, Lig/o0;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lig/o0;->f()V

    :cond_1
    return-object v0
.end method

.method d(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/o0;->c:Ljava/util/Queue;

    new-instance v1, Lig/o0$d;

    invoke-direct {v1, p1}, Lig/o0$d;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lig/o0;->f()V

    :cond_0
    return-void
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lig/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lig/o0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    iget-object v1, p0, Lig/o0;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
