.class public final Lcom/tencent/liteav/base/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/base/util/j$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field final b:Lcom/tencent/liteav/base/util/CustomHandler;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Lcom/tencent/liteav/base/util/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3c

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/base/util/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "SequenceTaskRunner_"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/base/util/j;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {p2}, Lcom/tencent/liteav/base/util/k;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    new-instance p1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/base/util/j;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/base/util/j;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 2

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/util/j$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/liteav/base/util/j$a;-><init>(Lcom/tencent/liteav/base/util/j;Ljava/lang/Runnable;J)V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/base/util/j;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, v0, Lcom/tencent/liteav/base/util/j$a;->d:Lcom/tencent/liteav/base/util/j;

    .line 8
    iget-object p1, p1, Lcom/tencent/liteav/base/util/j;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 9
    iget-object p2, v0, Lcom/tencent/liteav/base/util/j$a;->b:Ljava/lang/Runnable;

    iget-wide v0, v0, Lcom/tencent/liteav/base/util/j$a;->c:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/base/util/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/base/util/j$a;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/tencent/liteav/base/util/j$a;->d:Lcom/tencent/liteav/base/util/j;

    .line 6
    iget-object v0, v0, Lcom/tencent/liteav/base/util/j;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 7
    iget-object v1, p1, Lcom/tencent/liteav/base/util/j$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p1, Lcom/tencent/liteav/base/util/j$a;->d:Lcom/tencent/liteav/base/util/j;

    .line 9
    iget-object v0, v0, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    iget-object p1, p1, Lcom/tencent/liteav/base/util/j$a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
