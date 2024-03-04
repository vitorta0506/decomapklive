.class Lcom/google/common/util/concurrent/m0;
.super Lcom/google/common/util/concurrent/u$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/u$a<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile h:Lcom/google/common/util/concurrent/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/u$a;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/m0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/m0$a;-><init>(Lcom/google/common/util/concurrent/m0;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/m0;->h:Lcom/google/common/util/concurrent/c0;

    return-void
.end method

.method static V(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/m0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/m0;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/m0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static W(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/m0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/m0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/m0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected M()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/m0;->h:Lcom/google/common/util/concurrent/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/a;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/m0;->h:Lcom/google/common/util/concurrent/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c0;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/m0;->h:Lcom/google/common/util/concurrent/c0;

    return-void
.end method

.method protected t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/a;->t()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/m0;->h:Lcom/google/common/util/concurrent/c0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c0;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/util/concurrent/m0;->h:Lcom/google/common/util/concurrent/c0;

    return-void
.end method
