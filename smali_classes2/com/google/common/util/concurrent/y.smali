.class public final Lcom/google/common/util/concurrent/y;
.super Lcom/google/common/util/concurrent/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/y$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/util/concurrent/d0;Lcom/google/common/util/concurrent/x;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/x<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/y$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/y$a;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/x;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/d0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
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

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/google/common/util/concurrent/n0;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/b0$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b0$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/common/util/concurrent/b0;->b:Lcom/google/common/util/concurrent/d0;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/b0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Lcom/google/common/util/concurrent/d0;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/d0<",
            "TI;>;",
            "Lcom/google/common/base/h<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/d0<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/c;->V(Lcom/google/common/util/concurrent/d0;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;

    move-result-object p0

    return-object p0
.end method
