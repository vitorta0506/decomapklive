.class public final Lt4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lt4/g;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lt4/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt4/g<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->h()V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lt4/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lt4/j;->f(Lt4/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lt4/l;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Lt4/l;-><init>(Lt4/k;)V

    .line 6
    invoke-static {p0, v0}, Lt4/j;->g(Lt4/g;Lt4/m;)V

    .line 7
    invoke-virtual {v0}, Lt4/l;->c()V

    .line 8
    invoke-static {p0}, Lt4/j;->f(Lt4/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lt4/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lt4/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt4/g<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->h()V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lt4/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lt4/j;->f(Lt4/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lt4/l;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lt4/l;-><init>(Lt4/k;)V

    .line 7
    invoke-static {p0, v0}, Lt4/j;->g(Lt4/g;Lt4/m;)V

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lt4/l;->d(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p0}, Lt4/j;->f(Lt4/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lt4/g;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Executor must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lt4/g0;

    .line 3
    invoke-direct {v0}, Lt4/g0;-><init>()V

    new-instance v1, Lt4/h0;

    invoke-direct {v1, v0, p1}, Lt4/h0;-><init>(Lt4/g0;Ljava/util/concurrent/Callable;)V

    .line 4
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Lt4/g;
    .locals 1
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lt4/g0;

    invoke-direct {v0}, Lt4/g0;-><init>()V

    invoke-virtual {v0, p0}, Lt4/g0;->q(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lt4/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lt4/g0;

    invoke-direct {v0}, Lt4/g0;-><init>()V

    invoke-virtual {v0, p0}, Lt4/g0;->r(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static f(Lt4/g;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lt4/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt4/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lt4/g;->k()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lt4/g;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lt4/g;->j()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static g(Lt4/g;Lt4/m;)V
    .locals 1

    .line 1
    sget-object v0, Lt4/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lt4/g;->g(Ljava/util/concurrent/Executor;Lt4/e;)Lt4/g;

    .line 2
    invoke-virtual {p0, v0, p1}, Lt4/g;->e(Ljava/util/concurrent/Executor;Lt4/d;)Lt4/g;

    .line 3
    invoke-virtual {p0, v0, p1}, Lt4/g;->a(Ljava/util/concurrent/Executor;Lt4/b;)Lt4/g;

    return-void
.end method
