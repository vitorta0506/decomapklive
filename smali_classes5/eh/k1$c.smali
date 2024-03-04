.class final Leh/k1$c;
.super Lio/grpc/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/internal/z<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final l:Ljava/lang/Object;

.field m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field n:Z

.field final synthetic o:Leh/k1;


# direct methods
.method constructor <init>(Leh/k1;JLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;Lcom/google/common/base/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/t;",
            "Lcom/google/common/base/w<",
            "+",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Leh/k1$c;->o:Leh/k1;

    .line 2
    invoke-direct {p0, p4, p5, p6}, Lio/grpc/internal/z;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;)V

    .line 3
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Leh/k1$c;->l:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Leh/k1;->e(Leh/k1;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p6

    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 5
    new-instance p6, Leh/k1$c$a;

    invoke-direct {p6, p0, p1, p7}, Leh/k1$c$a;-><init>(Leh/k1$c;Leh/k1;Lcom/google/common/base/w;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p5, p6, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 6
    monitor-enter p4

    .line 7
    :try_start_0
    iget-boolean p2, p0, Leh/k1$c;->n:Z

    if-nez p2, :cond_0

    .line 8
    iput-object p1, p0, Leh/k1$c;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    monitor-exit p4

    return-void

    .line 10
    :cond_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/k1$c;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Leh/k1$c;->n:Z

    .line 3
    iget-object v1, p0, Leh/k1$c;->o:Leh/k1;

    invoke-static {v1}, Leh/k1;->e(Leh/k1;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 4
    iget-object v1, p0, Leh/k1$c;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
