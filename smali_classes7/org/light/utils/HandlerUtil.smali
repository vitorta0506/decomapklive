.class public final Lorg/light/utils/HandlerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static waitDone(Landroid/os/Handler;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Lorg/light/utils/HandlerUtil$1;

    invoke-direct {v1, v0}, Lorg/light/utils/HandlerUtil$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static waitDone(Landroid/os/Handler;I)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    new-instance v1, Lorg/light/utils/HandlerUtil$2;

    invoke-direct {v1, v0}, Lorg/light/utils/HandlerUtil$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    int-to-long p0, p1

    .line 13
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method
