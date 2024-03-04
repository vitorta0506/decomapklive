.class public final Lug/s;
.super Lug/d;
.source "SourceFile"

# interfaces
.implements Lug/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug/s$c;
    }
.end annotation


# static fields
.field private static final o:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final p:J

.field public static final q:Lug/s;


# instance fields
.field final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lug/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/e0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/ThreadFactory;

.field private final k:Lug/s$c;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile m:Ljava/lang/Thread;

.field private final n:Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lug/s;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lug/s;->o:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lug/s;->p:J

    .line 3
    new-instance v0, Lug/s;

    invoke-direct {v0}, Lug/s;-><init>()V

    sput-object v0, Lug/s;->q:Lug/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lug/d;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lug/s;->h:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v0, Lug/e0;

    new-instance v1, Lug/s$a;

    invoke-direct {v1, p0}, Lug/s$a;-><init>(Lug/s;)V

    const/4 v8, 0x0

    .line 4
    invoke-static {v1, v8}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v3

    sget-wide v1, Lug/s;->p:J

    .line 5
    invoke-static {v1, v2}, Lug/e0;->y0(J)J

    move-result-wide v4

    neg-long v6, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lug/e0;-><init>(Lug/d;Ljava/util/concurrent/Callable;JJ)V

    iput-object v0, p0, Lug/s;->i:Lug/e0;

    .line 6
    new-instance v1, Lug/s$c;

    invoke-direct {v1, p0}, Lug/s$c;-><init>(Lug/s;)V

    iput-object v1, p0, Lug/s;->k:Lug/s$c;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lug/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v1, Lug/m;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v1, p0, v2}, Lug/m;-><init>(Lug/j;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lug/s;->n:Lug/q;

    .line 9
    invoke-virtual {p0}, Lug/d;->J()Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lug/i;

    .line 11
    const-class v1, Lug/s;

    invoke-static {v1}, Lug/i;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v8}, Lug/i;-><init>(Ljava/lang/String;ZILjava/lang/ThreadGroup;)V

    .line 12
    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->d(Ljava/util/concurrent/ThreadFactory;Lug/j;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lug/s;->j:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method static synthetic M()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lug/s;->o:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method static synthetic N(Lug/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lug/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private O(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lug/s;->h:Ljava/util/concurrent/BlockingQueue;

    const-string v1, "task"

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private P()V
    .locals 4

    .line 1
    invoke-static {}, Lug/d;->y()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lug/d;->F(J)Ljava/lang/Runnable;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    .line 3
    iget-object v3, p0, Lug/s;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0, v1}, Lug/d;->F(J)Ljava/lang/Runnable;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lug/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lug/s;->j:Ljava/util/concurrent/ThreadFactory;

    iget-object v1, p0, Lug/s;->k:Lug/s$c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 3
    new-instance v1, Lug/s$b;

    invoke-direct {v1, p0, v0}, Lug/s$b;-><init>(Lug/s;Ljava/lang/Thread;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lug/s;->m:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public L0(Ljava/lang/Thread;)Z
    .locals 1

    iget-object v0, p0, Lug/s;->m:Ljava/lang/Thread;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method R()Ljava/lang/Runnable;
    .locals 7

    .line 1
    iget-object v0, p0, Lug/s;->h:Ljava/util/concurrent/BlockingQueue;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lug/d;->B()Lug/e0;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :catch_0
    return-object v2

    .line 4
    :cond_1
    invoke-virtual {v1}, Lug/e0;->A0()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 5
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    goto :goto_0

    :catch_1
    return-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 6
    invoke-direct {p0}, Lug/s;->P()V

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    :cond_3
    if-eqz v2, :cond_0

    return-object v2
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

    iget-object v0, p0, Lug/s;->n:Lug/q;

    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lug/s;->O(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lug/s;->Q()V

    :cond_0
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public z0(JJLjava/util/concurrent/TimeUnit;)Lug/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lug/q<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lug/s;->T()Lug/q;

    move-result-object p1

    return-object p1
.end method
