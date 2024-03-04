.class Lcom/google/firebase/messaging/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/messaging/e0;

.field private final c:Lcom/google/firebase/messaging/z;

.field private final d:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final e:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "pendingOperations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Lt4/h<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private g:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Lcom/google/firebase/messaging/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/v0;->i:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/t0;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p6    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/v0;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/messaging/v0;->g:Z

    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/v0;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/messaging/v0;->b:Lcom/google/firebase/messaging/e0;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/messaging/v0;->h:Lcom/google/firebase/messaging/t0;

    .line 7
    iput-object p4, p0, Lcom/google/firebase/messaging/v0;->c:Lcom/google/firebase/messaging/z;

    .line 8
    iput-object p5, p0, Lcom/google/firebase/messaging/v0;->a:Landroid/content/Context;

    .line 9
    iput-object p6, p0, Lcom/google/firebase/messaging/v0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;)Lcom/google/firebase/messaging/v0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/messaging/v0;->i(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;)Lcom/google/firebase/messaging/v0;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lt4/g;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt4/g<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1e

    .line 1
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lt4/j;->b(Lt4/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 5
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/v0;->c:Lcom/google/firebase/messaging/z;

    iget-object v1, p0, Lcom/google/firebase/messaging/v0;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/z;->k(Ljava/lang/String;Ljava/lang/String;)Lt4/g;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/messaging/v0;->b(Lt4/g;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/v0;->c:Lcom/google/firebase/messaging/z;

    iget-object v1, p0, Lcom/google/firebase/messaging/v0;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/z;->l(Ljava/lang/String;Ljava/lang/String;)Lt4/g;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/messaging/v0;->b(Lt4/g;)V

    return-void
.end method

.method static e(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lt4/g;
    .locals 7
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/FirebaseMessaging;",
            "Lcom/google/firebase/messaging/e0;",
            "Lcom/google/firebase/messaging/z;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lt4/g<",
            "Lcom/google/firebase/messaging/v0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/firebase/messaging/u0;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/u0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;)V

    invoke-static {p4, v6}, Lt4/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lt4/g;

    move-result-object p0

    return-object p0
.end method

.method static g()Z
    .locals 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static synthetic i(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;)Lcom/google/firebase/messaging/v0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/t0;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/t0;

    move-result-object v3

    .line 2
    new-instance v7, Lcom/google/firebase/messaging/v0;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/v0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/t0;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7
.end method

.method private j(Lcom/google/firebase/messaging/s0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/v0;->e:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/s0;->e()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/google/firebase/messaging/v0;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/v0;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/h;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lt4/h;->c(Ljava/lang/Object;)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/google/firebase/messaging/v0;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/v0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/v0;->q(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/v0;->h:Lcom/google/firebase/messaging/t0;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/t0;->b()Lcom/google/firebase/messaging/s0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/v0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method k(Lcom/google/firebase/messaging/s0;)Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/s0;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x53

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const/16 v5, 0x55

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "U"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "S"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    const-string v2, " succeeded."

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    .line 2
    :try_start_1
    invoke-static {}, Lcom/google/firebase/messaging/v0;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown topic operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/s0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/messaging/v0;->d(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/v0;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsubscribe from topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/s0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/messaging/s0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/messaging/v0;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/google/firebase/messaging/v0;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscribe to topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/s0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    return v6

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string p1, "Topic operation failed without exception message. Will retry Topic operation."

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 14
    :cond_7
    throw p1

    .line 15
    :cond_8
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Topic operation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Will retry Topic operation."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method l(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/v0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method declared-synchronized m(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/v0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/v0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/messaging/v0;->n()V

    :cond_0
    return-void
.end method

.method p()Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/v0;->h:Lcom/google/firebase/messaging/t0;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/t0;->b()Lcom/google/firebase/messaging/s0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/v0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v1, "topic sync succeeded"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/v0;->k(Lcom/google/firebase/messaging/s0;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/messaging/v0;->h:Lcom/google/firebase/messaging/t0;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/t0;->d(Lcom/google/firebase/messaging/s0;)Z

    .line 9
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/v0;->j(Lcom/google/firebase/messaging/s0;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method q(J)V
    .locals 10

    const-wide/16 v0, 0x2

    mul-long v0, v0, p1

    const-wide/16 v2, 0x1e

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/v0;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2
    new-instance v0, Lcom/google/firebase/messaging/w0;

    iget-object v6, p0, Lcom/google/firebase/messaging/v0;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/firebase/messaging/v0;->b:Lcom/google/firebase/messaging/e0;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/messaging/w0;-><init>(Lcom/google/firebase/messaging/v0;Landroid/content/Context;Lcom/google/firebase/messaging/e0;J)V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/messaging/v0;->l(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/v0;->m(Z)V

    return-void
.end method
