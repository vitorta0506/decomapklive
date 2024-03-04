.class abstract Lcom/google/common/util/concurrent/c;
.super Lcom/google/common/util/concurrent/u$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/u$a<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field h:Lcom/google/common/util/concurrent/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/d0<",
            "+TI;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/d0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/u$a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/d0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->h:Lcom/google/common/util/concurrent/d0;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    return-void
.end method

.method static V(Lcom/google/common/util/concurrent/d0;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;
    .locals 1
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

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/c$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/c$a;-><init>(Lcom/google/common/util/concurrent/d0;Lcom/google/common/base/h;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/h0;->c(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/d0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected M()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->h:Lcom/google/common/util/concurrent/d0;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Lcom/google/common/util/concurrent/a;->M()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "inputFuture=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "function=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract W(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract X(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->h:Lcom/google/common/util/concurrent/d0;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/u$a;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    or-int/2addr v2, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/google/common/util/concurrent/c;->h:Lcom/google/common/util/concurrent/d0;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->T(Lcom/google/common/util/concurrent/d0;)Z

    return-void

    .line 7
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/y;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/c;->W(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iput-object v2, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/c;->X(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->S(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    iput-object v2, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    .line 13
    throw v0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->S(Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->S(Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->S(Ljava/lang/Throwable;)Z

    return-void

    .line 17
    :catch_3
    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/u$a;->cancel(Z)Z

    return-void
.end method

.method protected final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->h:Lcom/google/common/util/concurrent/d0;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->K(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/c;->h:Lcom/google/common/util/concurrent/d0;

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/c;->i:Ljava/lang/Object;

    return-void
.end method
