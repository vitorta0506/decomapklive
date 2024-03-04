.class public final Ld5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld5/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ld5/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ld5/d<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/b1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ld5/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Ld5/f;->d(Ld5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ld5/t;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ld5/t;-><init>(Ld5/s;)V

    .line 5
    invoke-static {p0, v0}, Ld5/f;->e(Ld5/d;Ld5/u;)V

    .line 6
    invoke-virtual {v0}, Ld5/t;->b()V

    .line 7
    invoke-static {p0}, Ld5/f;->d(Ld5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Exception;)Ld5/d;
    .locals 1

    new-instance v0, Ld5/r;

    invoke-direct {v0}, Ld5/r;-><init>()V

    invoke-virtual {v0, p0}, Ld5/r;->h(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ld5/d;
    .locals 1

    new-instance v0, Ld5/r;

    invoke-direct {v0}, Ld5/r;-><init>()V

    invoke-virtual {v0, p0}, Ld5/r;->i(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static d(Ld5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld5/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ld5/d;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Ld5/d;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static e(Ld5/d;Ld5/u;)V
    .locals 1

    .line 1
    sget-object v0, Ld5/e;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ld5/d;->c(Ljava/util/concurrent/Executor;Ld5/c;)Ld5/d;

    .line 2
    invoke-virtual {p0, v0, p1}, Ld5/d;->b(Ljava/util/concurrent/Executor;Ld5/b;)Ld5/d;

    return-void
.end method
