.class final Lcom/google/common/util/concurrent/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/x<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/x<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/y$a;->a:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/y$a;->b:Lcom/google/common/util/concurrent/x;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/y$a;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Ly5/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ly5/a;

    .line 3
    invoke-static {v0}, Ly5/b;->a(Ly5/a;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/common/util/concurrent/y$a;->b:Lcom/google/common/util/concurrent/x;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/x;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/y$a;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/y;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v1, p0, Lcom/google/common/util/concurrent/y$a;->b:Lcom/google/common/util/concurrent/x;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/x;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/y$a;->b:Lcom/google/common/util/concurrent/x;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/x;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/common/util/concurrent/y$a;->b:Lcom/google/common/util/concurrent/x;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/x;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/y$a;->b:Lcom/google/common/util/concurrent/x;

    invoke-virtual {v0, v1}, Lcom/google/common/base/j$b;->k(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
