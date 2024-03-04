.class final Lzh/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/Object;Lvh/o;Lio/reactivex/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;",
            "Lio/reactivex/b;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null CompletableSource"

    invoke-static {p0, p1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/reactivex/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/b;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p2}, Lio/reactivex/c;->a(Lio/reactivex/b;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/b;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/Object;Lvh/o;Lio/reactivex/r;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;",
            "Lio/reactivex/r<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null MaybeSource"

    invoke-static {p0, p1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/reactivex/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/r;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lio/reactivex/internal/operators/maybe/b;->c(Lio/reactivex/r;)Lio/reactivex/h;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/reactivex/i;->a(Lio/reactivex/h;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/lang/Object;Lvh/o;Lio/reactivex/r;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;",
            "Lio/reactivex/r<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null SingleSource"

    invoke-static {p0, p1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/reactivex/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/r;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lai/b;->c(Lio/reactivex/r;)Lio/reactivex/u;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/reactivex/v;->a(Lio/reactivex/u;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
