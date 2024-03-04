.class public abstract Lug/f0;
.super Lug/d;
.source "SourceFile"

# interfaces
.implements Lug/v;


# static fields
.field private static final A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lug/f0;",
            ">;"
        }
    .end annotation
.end field

.field private static final B:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lug/f0;",
            "Lug/h0;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:J

.field static final x:I

.field private static final y:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final z:Ljava/lang/Runnable;


# instance fields
.field private final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/lang/Thread;

.field private volatile j:Lug/h0;

.field private final k:Ljava/util/concurrent/Executor;

.field private volatile l:Z

.field private final m:Ljava/util/concurrent/CountDownLatch;

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private final p:I

.field private final q:Lug/b0;

.field private r:J

.field private volatile s:I

.field private volatile t:J

.field private volatile u:J

.field private v:J

.field private final w:Lug/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/x<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lug/f0;

    const/16 v0, 0x10

    const v1, 0x7fffffff

    const-string v2, "io.grpc.netty.shaded.io.netty.eventexecutor.maxPendingTasks"

    .line 2
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lug/f0;->x:I

    .line 4
    const-class v0, Lug/f0;

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lug/f0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 6
    new-instance v0, Lug/f0$a;

    invoke-direct {v0}, Lug/f0$a;-><init>()V

    sput-object v0, Lug/f0;->z:Ljava/lang/Runnable;

    .line 7
    const-class v0, Lug/f0;

    const-string v1, "s"

    .line 8
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    const-class v0, Lug/f0;

    const-class v1, Lug/h0;

    const-string v2, "j"

    .line 10
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lug/f0;->B:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lug/f0;->C:J

    return-void
.end method

.method protected constructor <init>(Lug/l;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Lug/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/l;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lug/b0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lug/d;-><init>(Lug/l;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lug/f0;->m:Ljava/util/concurrent/CountDownLatch;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lug/f0;->n:Ljava/util/Set;

    .line 4
    iput v0, p0, Lug/f0;->s:I

    .line 5
    new-instance p1, Lug/h;

    sget-object v0, Lug/s;->q:Lug/s;

    invoke-direct {p1, v0}, Lug/h;-><init>(Lug/j;)V

    iput-object p1, p0, Lug/f0;->w:Lug/x;

    .line 6
    iput-boolean p3, p0, Lug/f0;->o:Z

    .line 7
    sget p1, Lug/f0;->x:I

    iput p1, p0, Lug/f0;->p:I

    .line 8
    invoke-static {p2, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->c(Ljava/util/concurrent/Executor;Lug/j;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lug/f0;->k:Ljava/util/concurrent/Executor;

    const-string p1, "taskQueue"

    .line 9
    invoke-static {p4, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lug/f0;->h:Ljava/util/Queue;

    const-string p1, "rejectedHandler"

    .line 10
    invoke-static {p5, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lug/b0;

    iput-object p1, p0, Lug/f0;->q:Lug/b0;

    return-void
.end method

.method protected static A0()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "event executor terminated"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic M(Lug/f0;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lug/f0;->i:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic N(Lug/f0;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lug/f0;->i:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic O(Lug/f0;)Z
    .locals 0

    iget-boolean p0, p0, Lug/f0;->l:Z

    return p0
.end method

.method static synthetic P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lug/f0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method static synthetic Q(Lug/f0;)I
    .locals 0

    iget p0, p0, Lug/f0;->s:I

    return p0
.end method

.method private Q0()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lug/f0;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lug/f0;->n:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v2, p0, Lug/f0;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    sget-object v2, Lug/f0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Shutdown hook raised an exception."

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 7
    throw v0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v1

    iput-wide v1, p0, Lug/f0;->r:J

    :cond_2
    return v0
.end method

.method static synthetic R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private R0()V
    .locals 4

    .line 1
    iget v0, p0, Lug/f0;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lug/f0;->m0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    sget-object v3, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 5
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic S(Lug/f0;)J
    .locals 2

    iget-wide v0, p0, Lug/f0;->v:J

    return-wide v0
.end method

.method private S0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from within the EventLoop is not allowed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lug/f0;->m:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic b0(Lug/f0;)Lug/x;
    .locals 0

    iget-object p0, p0, Lug/f0;->w:Lug/x;

    return-object p0
.end method

.method private m0()V
    .locals 2

    iget-object v0, p0, Lug/f0;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lug/f0$b;

    invoke-direct {v1, p0}, Lug/f0$b;-><init>(Lug/f0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o0(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lug/f0;->m0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v1, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 3
    iget-object v1, p0, Lug/f0;->w:Lug/x;

    invoke-interface {v1, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    .line 4
    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private p0(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lug/f0;->c0(Ljava/lang/Runnable;)V

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lug/f0;->R0()V

    .line 4
    invoke-virtual {p0}, Lug/f0;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lug/f0;->E0(Ljava/lang/Runnable;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lug/f0;->A0()V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lug/f0;->o:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lug/f0;->Y0(Z)V

    :cond_1
    return-void
.end method

.method private q0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lug/d;->y()J

    move-result-wide v2

    .line 3
    :cond_1
    invoke-virtual {p0, v2, v3}, Lug/d;->F(J)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v4, p0, Lug/f0;->h:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    iget-object v1, p0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    check-cast v0, Lug/e0;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method protected static y0(Ljava/util/Queue;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2
    sget-object v1, Lug/d;->g:Ljava/lang/Runnable;

    if-eq v0, v1, :cond_0

    return-object v0
.end method


# virtual methods
.method protected final C0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lug/f0;->q:Lug/b0;

    invoke-interface {v0, p1, p0}, Lug/b0;->a(Ljava/lang/Runnable;Lug/f0;)V

    return-void
.end method

.method protected E0(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lug/f0;->h:Ljava/util/Queue;

    const-string v1, "task"

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract F0()V
.end method

.method protected G0()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :cond_0
    invoke-direct {p0}, Lug/f0;->q0()Z

    move-result v1

    .line 2
    iget-object v2, p0, Lug/f0;->h:Ljava/util/Queue;

    invoke-virtual {p0, v2}, Lug/f0;->P0(Ljava/util/Queue;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v1

    iput-wide v1, p0, Lug/f0;->r:J

    .line 4
    :cond_2
    invoke-virtual {p0}, Lug/f0;->e0()V

    return v0
.end method

.method protected H0(J)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lug/f0;->q0()Z

    .line 2
    invoke-virtual {p0}, Lug/f0;->w0()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lug/f0;->e0()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 4
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v3

    add-long/2addr v3, p1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    move-wide p1, v1

    .line 5
    :cond_2
    invoke-static {v0}, Lug/a;->f(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x1

    add-long/2addr p1, v5

    const-wide/16 v5, 0x3f

    and-long/2addr v5, p1

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lug/f0;->w0()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v5

    .line 9
    :goto_1
    invoke-virtual {p0}, Lug/f0;->e0()V

    .line 10
    iput-wide v5, p0, Lug/f0;->r:J

    const/4 p1, 0x1

    return p1
.end method

.method public L0(Ljava/lang/Thread;)Z
    .locals 1

    iget-object v0, p0, Lug/f0;->i:Ljava/lang/Thread;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final P0(Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lug/f0;->y0(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {v0}, Lug/a;->f(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {p1}, Lug/f0;->y0(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public T()Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lug/f0;->w:Lug/x;

    return-object v0
.end method

.method protected T0()V
    .locals 2

    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v0

    iput-wide v0, p0, Lug/f0;->r:J

    return-void
.end method

.method protected X0(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected Y0(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lug/f0;->h:Ljava/util/Queue;

    sget-object v0, Lug/d;->g:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "unit"

    .line 1
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lug/f0;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 4
    invoke-virtual {p0}, Lug/f0;->isTerminated()Z

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot await termination of the current thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c0(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lug/f0;->v0(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lug/f0;->C0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lug/f0;->p0(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected e0()V
    .locals 0

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lug/f0;->X0(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lug/f0;->p0(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "invokeAll"

    .line 1
    invoke-direct {p0, v0}, Lug/f0;->S0(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "invokeAll"

    .line 3
    invoke-direct {p0, v0}, Lug/f0;->S0(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/concurrent/AbstractExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-string v0, "invokeAny"

    .line 1
    invoke-direct {p0, v0}, Lug/f0;->S0(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "invokeAny"

    .line 3
    invoke-direct {p0, v0}, Lug/f0;->S0(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/concurrent/AbstractExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .locals 2

    iget v0, p0, Lug/f0;->s:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    iget v0, p0, Lug/f0;->s:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected k0()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p0}, Lug/d;->n()V

    .line 4
    iget-wide v2, p0, Lug/f0;->v:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v2

    iput-wide v2, p0, Lug/f0;->v:J

    .line 6
    :cond_1
    invoke-virtual {p0}, Lug/f0;->G0()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-direct {p0}, Lug/f0;->Q0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v3

    .line 8
    invoke-virtual {p0}, Lug/f0;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v5, p0, Lug/f0;->v:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lug/f0;->u:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-wide v5, p0, Lug/f0;->r:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lug/f0;->t:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    .line 10
    iget-object v0, p0, Lug/f0;->h:Ljava/util/Queue;

    sget-object v2, Lug/d;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x64

    .line 11
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    :cond_4
    :goto_0
    return v2

    .line 12
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lug/f0;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 13
    :cond_6
    iget-wide v6, p0, Lug/f0;->t:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_7

    return v2

    .line 14
    :cond_7
    iget-object v0, p0, Lug/f0;->h:Ljava/util/Queue;

    sget-object v2, Lug/d;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return v1

    .line 15
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must be invoked from an event loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final n0()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, p0, Lug/f0;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    sget-object v2, Lug/d;->g:Ljava/lang/Runnable;

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected s0()Z
    .locals 1

    iget-object v0, p0, Lug/f0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shutdown()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lug/f0;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget v1, p0, Lug/f0;->s:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v3, 0x0

    move v2, v1

    .line 5
    :cond_4
    :goto_0
    sget-object v4, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lug/f0;->o0(I)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    if-eqz v3, :cond_6

    .line 7
    iget-object v1, p0, Lug/f0;->h:Ljava/util/Queue;

    sget-object v2, Lug/d;->g:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v1, p0, Lug/f0;->o:Z

    if-nez v1, :cond_6

    .line 9
    invoke-virtual {p0, v0}, Lug/f0;->Y0(Z)V

    :cond_6
    return-void
.end method

.method public u0()Z
    .locals 2

    iget v0, p0, Lug/f0;->s:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final v0(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lug/f0;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lug/f0;->A0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lug/f0;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected w0()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lug/f0;->h:Ljava/util/Queue;

    invoke-static {v0}, Lug/f0;->y0(Ljava/util/Queue;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    const-string v0, "quietPeriod"

    .line 1
    invoke-static {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->o(JLjava/lang/String;)J

    cmp-long v0, p3, p1

    if-ltz v0, :cond_7

    const-string v0, "unit"

    .line 2
    invoke-static {p5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lug/f0;->T()Lug/q;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lug/f0;->T()Lug/q;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iget v1, p0, Lug/f0;->s:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v3, 0x0

    move v2, v1

    .line 9
    :cond_4
    :goto_0
    sget-object v4, Lug/f0;->A:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lug/f0;->t:J

    .line 11
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lug/f0;->u:J

    .line 12
    invoke-direct {p0, v1}, Lug/f0;->o0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lug/f0;->w:Lug/x;

    return-object p1

    :cond_5
    if-eqz v3, :cond_6

    .line 14
    iget-object p1, p0, Lug/f0;->h:Ljava/util/Queue;

    sget-object p2, Lug/d;->g:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 15
    iget-boolean p1, p0, Lug/f0;->o:Z

    if-nez p1, :cond_6

    .line 16
    invoke-virtual {p0, v0}, Lug/f0;->Y0(Z)V

    .line 17
    :cond_6
    invoke-virtual {p0}, Lug/f0;->T()Lug/q;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    new-instance p5, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " (expected >= quietPeriod ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
.end method
