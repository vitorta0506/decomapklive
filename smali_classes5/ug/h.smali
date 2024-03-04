.class public Lug/h;
.super Lug/c;
.source "SourceFile"

# interfaces
.implements Lug/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug/h$e;,
        Lug/h$c;,
        Lug/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lug/c<",
        "TV;>;",
        "Lug/x<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final g:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final h:I

.field private static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lug/h;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/lang/Object;

.field private static final l:Lug/h$c;

.field private static final m:[Ljava/lang/StackTraceElement;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private final b:Lug/j;

.field private c:Ljava/lang/Object;

.field private d:S

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lug/h;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lug/h;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lug/h;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rejectedExecution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->c(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lug/h;->g:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "io.grpc.netty.shaded.io.netty.defaultPromise.maxListenerStackDepth"

    const/16 v1, 0x8

    .line 4
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lug/h;->h:I

    .line 6
    const-class v0, Lug/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lug/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lug/h;->j:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lug/h;->k:Ljava/lang/Object;

    .line 10
    new-instance v0, Lug/h$c;

    const-class v1, Lug/h;

    const-string v2, "cancel(...)"

    .line 11
    invoke-static {v1, v2}, Lug/h$e;->a(Ljava/lang/Class;Ljava/lang/String;)Lug/h$e;

    move-result-object v1

    invoke-direct {v0, v1}, Lug/h$c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lug/h;->l:Lug/h$c;

    .line 12
    iget-object v0, v0, Lug/h$c;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lug/h;->m:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lug/c;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lug/h;->b:Lug/j;

    return-void
.end method

.method public constructor <init>(Lug/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lug/c;-><init>()V

    const-string v0, "executor"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lug/j;

    iput-object p1, p0, Lug/h;->b:Lug/j;

    return-void
.end method

.method private static A(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lug/h;->k:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static C(Lug/j;Lug/q;Lug/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/j;",
            "Lug/q<",
            "*>;",
            "Lug/r<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "eventExecutor"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lug/j;

    const-string v0, "future"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lug/q;

    const-string v0, "listener"

    .line 3
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lug/r;

    .line 4
    invoke-static {p0, p1, p2}, Lug/h;->T(Lug/j;Lug/q;Lug/r;)V

    return-void
.end method

.method private static M(Lug/q;Lug/r;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lug/r;->e(Lug/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lug/h;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lug/h;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception was thrown by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".operationComplete()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static T(Lug/j;Lug/q;Lug/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/j;",
            "Lug/q<",
            "*>;",
            "Lug/r<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lug/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->d()I

    move-result v1

    .line 4
    sget v2, Lug/h;->h:I

    if-ge v1, v2, :cond_0

    add-int/lit8 p0, v1, 0x1

    .line 5
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n(I)V

    .line 6
    :try_start_0
    invoke-static {p1, p2}, Lug/h;->M(Lug/q;Lug/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n(I)V

    .line 8
    throw p0

    .line 9
    :cond_0
    new-instance v0, Lug/h$b;

    invoke-direct {v0, p1, p2}, Lug/h$b;-><init>(Lug/q;Lug/r;)V

    invoke-static {p0, v0}, Lug/h;->Z(Lug/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method private U()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lug/h;->v()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->d()I

    move-result v2

    .line 5
    sget v3, Lug/h;->h:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    .line 6
    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n(I)V

    .line 7
    :try_start_0
    invoke-direct {p0}, Lug/h;->W()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n(I)V

    .line 9
    throw v0

    .line 10
    :cond_0
    new-instance v1, Lug/h$a;

    invoke-direct {v1, p0}, Lug/h$a;-><init>(Lug/h;)V

    invoke-static {v0, v1}, Lug/h;->Z(Lug/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method private V(Lug/g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lug/g;->b()[Lug/r;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lug/g;->d()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    aget-object v2, v0, v1

    invoke-static {p0, v2}, Lug/h;->M(Lug/q;Lug/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private W()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lug/h;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lug/h;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lug/h;->e:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lug/h;->c:Ljava/lang/Object;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :goto_0
    instance-of v2, v0, Lug/g;

    if-eqz v2, :cond_1

    .line 7
    check-cast v0, Lug/g;

    invoke-direct {p0, v0}, Lug/h;->V(Lug/g;)V

    goto :goto_1

    .line 8
    :cond_1
    check-cast v0, Lug/r;

    invoke-static {p0, v0}, Lug/h;->M(Lug/q;Lug/r;)V

    .line 9
    :goto_1
    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lug/h;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lug/h;->e:Z

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_2
    iput-object v1, p0, Lug/h;->c:Ljava/lang/Object;

    .line 14
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 15
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private Y(Lug/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-TV;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/h;->c:Ljava/lang/Object;

    instance-of v1, v0, Lug/g;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lug/g;

    invoke-virtual {v0, p1}, Lug/g;->c(Lug/r;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lug/h;->c:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static Z(Lug/j;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object p1, Lug/h;->g:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "Failed to submit a listener notification task. Event loop shut down?"

    invoke-interface {p1, v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private g0(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lug/h$c;

    const-string v1, "cause"

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lug/h$c;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lug/h;->i0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private h0(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lug/h;->j:Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lug/h;->i0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic i()[Ljava/lang/StackTraceElement;
    .locals 1

    sget-object v0, Lug/h;->m:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method private i0(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lug/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lug/h;->k:Ljava/lang/Object;

    .line 2
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lug/h;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0}, Lug/h;->U()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic j(Lug/h;)V
    .locals 0

    invoke-direct {p0}, Lug/h;->W()V

    return-void
.end method

.method static synthetic k(Lug/q;Lug/r;)V
    .locals 0

    invoke-static {p0, p1}, Lug/h;->M(Lug/q;Lug/r;)V

    return-void
.end method

.method private l(Lug/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-TV;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/h;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lug/h;->c:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lug/g;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lug/g;

    invoke-virtual {v0, p1}, Lug/g;->a(Lug/r;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lug/g;

    check-cast v0, Lug/r;

    invoke-direct {v1, v0, p1}, Lug/g;-><init>(Lug/r;Lug/r;)V

    iput-object v1, p0, Lug/h;->c:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private p(JZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p3, :cond_3

    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lug/h;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lug/h;->r()V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 7
    monitor-enter p0

    const/4 v0, 0x0

    move-wide v6, p1

    .line 8
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result v8

    if-nez v8, :cond_7

    cmp-long v8, v6, v2

    if-lez v8, :cond_7

    .line 9
    invoke-direct {p0}, Lug/h;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v8, 0xf4240

    .line 10
    :try_start_1
    div-long v10, v6, v8

    rem-long/2addr v6, v8

    long-to-int v7, v6

    invoke-virtual {p0, v10, v11, v7}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-direct {p0}, Lug/h;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v6

    if-nez p3, :cond_6

    :try_start_3
    invoke-direct {p0}, Lug/h;->t()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    .line 12
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_5

    if-eqz v0, :cond_4

    .line 13
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return v1

    .line 14
    :cond_5
    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sub-long/2addr v6, v4

    sub-long v6, p1, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 15
    :cond_6
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 16
    :goto_3
    :try_start_8
    invoke-direct {p0}, Lug/h;->t()V

    .line 17
    throw p1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_8

    .line 19
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    move v1, v0

    :goto_4
    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 20
    :cond_9
    throw p1

    :catchall_3
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1
.end method

.method private q(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    .line 1
    instance-of v0, p1, Lug/h$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lug/h;->l:Lug/h$c;

    if-ne p1, v0, :cond_2

    .line 3
    new-instance p1, Lug/h$d;

    invoke-direct {p1, v1}, Lug/h$d;-><init>(Lug/h$a;)V

    .line 4
    sget-object v1, Lug/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lug/h$c;

    invoke-direct {v2, p1}, Lug/h$c;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Lug/h;->a:Ljava/lang/Object;

    .line 6
    :cond_2
    check-cast p1, Lug/h$c;

    iget-object p1, p1, Lug/h$c;->a:Ljava/lang/Throwable;

    return-object p1
.end method

.method private declared-synchronized s()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-short v0, p0, Lug/h;->d:S

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3
    :cond_0
    iget-object v0, p0, Lug/h;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t()V
    .locals 1

    iget-short v0, p0, Lug/h;->d:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lug/h;->d:S

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget-short v0, p0, Lug/h;->d:S

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 2
    iput-short v0, p0, Lug/h;->d:S

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many waiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static y(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lug/h$c;

    if-eqz v0, :cond_0

    check-cast p0, Lug/h$c;

    iget-object p0, p0, Lug/h$c;->a:Ljava/lang/Throwable;

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public B(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lug/h;->h0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public L()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lug/h;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lug/h$c;

    if-nez v1, :cond_1

    sget-object v1, Lug/h;->j:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lug/h;->k:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public X(Lug/r;)Lug/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-TV;>;>;)",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lug/h;->Y(Lug/r;)V

    .line 4
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lug/h;->p(JZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Lug/r;)Lug/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lug/h;->c(Lug/r;)Lug/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Lug/r;)Lug/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-TV;>;>;)",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "listener"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lug/h;->l(Lug/r;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Lug/h;->U()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic c0()Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lug/h;->o()Lug/x;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 2

    .line 1
    sget-object p1, Lug/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v0, Lug/h;->l:Lug/h$c;

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lug/h;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lug/h;->U()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d0(Ljava/lang/Throwable;)Lug/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lug/h;->g0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic f(Lug/r;)Lug/q;
    .locals 0

    invoke-virtual {p0, p1}, Lug/h;->X(Lug/r;)Lug/x;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 3

    .line 1
    sget-object v0, Lug/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lug/h;->k:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lug/h;->A(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lug/h;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lug/h;->A(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lug/h;->o()Lug/x;

    .line 4
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v1, Lug/h;->j:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    sget-object v1, Lug/h;->k:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lug/h;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 7
    :cond_2
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_3

    .line 8
    check-cast v1, Ljava/util/concurrent/CancellationException;

    throw v1

    .line 9
    :cond_3
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Lug/h;->A(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lug/h;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    sget-object p1, Lug/h;->j:Ljava/lang/Object;

    if-eq v0, p1, :cond_5

    sget-object p1, Lug/h;->k:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-direct {p0, v0}, Lug/h;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 17
    :cond_3
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_4

    .line 18
    check-cast p1, Ljava/util/concurrent/CancellationException;

    throw p1

    .line 19
    :cond_4
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Lug/h;->y(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Lug/h;->A(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected j0()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lug/h;->a:Ljava/lang/Object;

    .line 6
    sget-object v2, Lug/h;->j:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const-string v1, "(success)"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lug/h;->k:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const-string v1, "(uncancellable)"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_1
    instance-of v2, v1, Lug/h$c;

    const/16 v3, 0x29

    if-eqz v2, :cond_2

    const-string v2, "(failure: "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lug/h$c;

    iget-object v1, v1, Lug/h$c;->a:Ljava/lang/Throwable;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "(success: "

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "(incomplete)"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0
.end method

.method public m0(Ljava/lang/Object;)Lug/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lug/h;->h0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete already: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Lug/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lug/x<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lug/h;->r()V

    .line 4
    monitor-enter p0

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lug/h;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lug/h;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-direct {p0}, Lug/h;->t()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lug/h;->t()V

    .line 9
    throw v0

    .line 10
    :cond_1
    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lug/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lug/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lug/h;->k:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v0, v0, Lug/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lug/h;->v()Lug/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/concurrent/BlockingOperationException;

    invoke-virtual {p0}, Lug/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/concurrent/BlockingOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lug/h;->j0()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()Lug/j;
    .locals 1

    iget-object v0, p0, Lug/h;->b:Lug/j;

    return-object v0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lug/h;->g0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
