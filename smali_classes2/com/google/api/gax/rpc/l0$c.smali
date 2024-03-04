.class Lcom/google/api/gax/rpc/l0$c;
.super Lcom/google/api/gax/rpc/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/d0<",
        "TResponseT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lorg/threeten/bp/Duration;

.field private final e:Lorg/threeten/bp/Duration;

.field private f:Z

.field private g:Z

.field private final h:Lcom/google/api/gax/rpc/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private volatile i:Lcom/google/api/gax/rpc/e0;

.field private j:Lcom/google/api/gax/rpc/l0$b;

.field private k:I

.field private l:J

.field private volatile m:Ljava/lang/Throwable;

.field final synthetic n:Lcom/google/api/gax/rpc/l0;


# direct methods
.method static synthetic f(Lcom/google/api/gax/rpc/l0$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/gax/rpc/l0$c;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "User cancelled stream"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->m:Ljava/lang/Throwable;

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->i:Lcom/google/api/gax/rpc/e0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/e0;->cancel()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->n:Lcom/google/api/gax/rpc/l0;

    invoke-static {v0}, Lcom/google/api/gax/rpc/l0;->c(Lcom/google/api/gax/rpc/l0;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->h:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/b0;->onComplete()V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/api/gax/rpc/l0$c;->m:Ljava/lang/Throwable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->n:Lcom/google/api/gax/rpc/l0;

    invoke-static {v0}, Lcom/google/api/gax/rpc/l0;->c(Lcom/google/api/gax/rpc/l0;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->h:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/api/gax/rpc/l0$b;->c:Lcom/google/api/gax/rpc/l0$b;

    iput-object v1, p0, Lcom/google/api/gax/rpc/l0$c;->j:Lcom/google/api/gax/rpc/l0$b;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->h:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onResponse(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/google/api/gax/rpc/l0$c;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1
    iget v0, p0, Lcom/google/api/gax/rpc/l0$c;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/api/gax/rpc/l0$c;->k:I

    .line 7
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->n:Lcom/google/api/gax/rpc/l0;

    invoke-static {v0}, Lcom/google/api/gax/rpc/l0;->b(Lcom/google/api/gax/rpc/l0;)Lk5/a;

    move-result-object v0

    invoke-interface {v0}, Lk5/a;->millisTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/gax/rpc/l0$c;->l:J

    .line 8
    iget-boolean v0, p0, Lcom/google/api/gax/rpc/l0$c;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/api/gax/rpc/l0$c;->k:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/google/api/gax/rpc/l0$b;->a:Lcom/google/api/gax/rpc/l0$b;

    iput-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->j:Lcom/google/api/gax/rpc/l0$b;

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/api/gax/rpc/l0$b;->b:Lcom/google/api/gax/rpc/l0$b;

    iput-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->j:Lcom/google/api/gax/rpc/l0$b;

    .line 11
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public e(Lcom/google/api/gax/rpc/e0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/api/gax/rpc/l0$c;->i:Lcom/google/api/gax/rpc/e0;

    .line 2
    iget-object p1, p0, Lcom/google/api/gax/rpc/l0$c;->h:Lcom/google/api/gax/rpc/b0;

    new-instance v0, Lcom/google/api/gax/rpc/l0$c$a;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/l0$c$a;-><init>(Lcom/google/api/gax/rpc/l0$c;)V

    invoke-interface {p1, v0}, Lcom/google/api/gax/rpc/b0;->a(Lcom/google/api/gax/rpc/e0;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/api/gax/rpc/l0$c;->f:Z

    return-void
.end method

.method g()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->i:Lcom/google/api/gax/rpc/e0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/google/api/gax/rpc/l0$c;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/google/api/gax/rpc/l0$c;->n:Lcom/google/api/gax/rpc/l0;

    invoke-static {v3}, Lcom/google/api/gax/rpc/l0;->b(Lcom/google/api/gax/rpc/l0;)Lk5/a;

    move-result-object v3

    invoke-interface {v3}, Lk5/a;->millisTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/api/gax/rpc/l0$c;->l:J

    sub-long/2addr v3, v5

    .line 4
    sget-object v5, Lcom/google/api/gax/rpc/l0$a;->a:[I

    iget-object v6, p0, Lcom/google/api/gax/rpc/l0$c;->j:Lcom/google/api/gax/rpc/l0$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v5, p0, Lcom/google/api/gax/rpc/l0$c;->d:Lorg/threeten/bp/Duration;

    invoke-virtual {v5}, Lorg/threeten/bp/Duration;->isZero()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/api/gax/rpc/l0$c;->d:Lorg/threeten/bp/Duration;

    invoke-virtual {v5}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-ltz v5, :cond_3

    .line 6
    new-instance v0, Lcom/google/api/gax/rpc/WatchdogTimeoutException;

    const-string v3, "Canceled due to timeout waiting for next response"

    invoke-direct {v0, v3, v6}, Lcom/google/api/gax/rpc/WatchdogTimeoutException;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/google/api/gax/rpc/l0$c;->e:Lorg/threeten/bp/Duration;

    invoke-virtual {v5}, Lorg/threeten/bp/Duration;->isZero()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/api/gax/rpc/l0$c;->e:Lorg/threeten/bp/Duration;

    invoke-virtual {v5}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-ltz v5, :cond_3

    .line 8
    new-instance v0, Lcom/google/api/gax/rpc/WatchdogTimeoutException;

    const-string v3, "Canceled due to idle connection"

    invoke-direct {v0, v3, v1}, Lcom/google/api/gax/rpc/WatchdogTimeoutException;-><init>(Ljava/lang/String;Z)V

    .line 9
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 10
    iput-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->m:Ljava/lang/Throwable;

    .line 11
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0$c;->i:Lcom/google/api/gax/rpc/e0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/e0;->cancel()V

    return v6

    :cond_4
    return v1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
