.class public final Lio/reactivex/internal/operators/observable/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/reactivex/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/util/d;

    invoke-direct {v0}, Lio/reactivex/internal/util/d;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)V

    .line 4
    invoke-interface {p0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 5
    invoke-static {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/util/concurrent/CountDownLatch;Lth/b;)V

    .line 6
    iget-object p0, v0, Lio/reactivex/internal/util/d;->a:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lio/reactivex/p;Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/observers/BlockingObserver;

    invoke-direct {v1, v0}, Lio/reactivex/internal/observers/BlockingObserver;-><init>(Ljava/util/Queue;)V

    .line 3
    invoke-interface {p1, v1}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 4
    invoke-interface {p0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lio/reactivex/internal/observers/BlockingObserver;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {v1}, Lio/reactivex/internal/observers/BlockingObserver;->dispose()V

    .line 9
    invoke-interface {p1, p0}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/observers/BlockingObserver;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lio/reactivex/internal/observers/BlockingObserver;->TERMINATED:Ljava/lang/Object;

    if-eq p0, v2, :cond_3

    .line 11
    invoke-static {p0, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/r;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lio/reactivex/p;Lvh/g;Lvh/g;Lvh/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/k;->b(Lio/reactivex/p;Lio/reactivex/r;)V

    return-void
.end method
