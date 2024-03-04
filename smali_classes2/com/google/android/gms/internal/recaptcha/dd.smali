.class public final Lcom/google/android/gms/internal/recaptcha/dd;
.super Lcom/google/android/gms/internal/recaptcha/fd;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/recaptcha/bd<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/bd;

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/recaptcha/bd;-><init>(ZLcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/zc;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/recaptcha/bd<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/bd;

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/recaptcha/bd;-><init>(ZLcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/zc;)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ab;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ab;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dc;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/recaptcha/ud;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cb;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/gd;-><init>()V

    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/hd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/hd;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/id;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/id;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/id;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static g()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/id;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    return-object v0
.end method

.method public static h(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/cd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/cd;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/kc;->a:Lcom/google/android/gms/internal/recaptcha/kc;

    .line 4
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static i(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/ce;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/recaptcha/ce;-><init>(Lcom/google/android/gms/internal/recaptcha/cc;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-object p1
.end method

.method public static j(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TI;>;",
            "Lcom/google/android/gms/internal/recaptcha/p7<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TO;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/sb;->j:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/rb;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/rb;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;)V

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/recaptcha/ud;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cb;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TI;>;",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TO;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/sb;->j:I

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/qb;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/qb;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;)V

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/recaptcha/ud;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cb;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static l(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :goto_1
    throw p0

    :catch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Future was expected to be done: %s"

    .line 6
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/recaptcha/g8;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/yc;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;",
            "Lcom/google/android/gms/internal/recaptcha/yc<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ad;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/ad;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/recaptcha/yc;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
