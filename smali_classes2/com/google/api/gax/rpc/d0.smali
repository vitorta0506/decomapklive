.class public abstract Lcom/google/api/gax/rpc/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/b0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/gax/rpc/e0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/api/gax/rpc/d0;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lcom/google/api/gax/rpc/d0;->a:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/d0;->e(Lcom/google/api/gax/rpc/e0;)V

    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c(Ljava/lang/Throwable;)V
.end method

.method protected abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method protected abstract e(Lcom/google/api/gax/rpc/e0;)V
.end method

.method public final onComplete()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/api/gax/rpc/d0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tried to double close."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lcom/google/api/gax/rpc/d0;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/d0;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/api/gax/rpc/d0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " received error after being closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lcom/google/api/gax/rpc/d0;->b:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/d0;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/api/gax/rpc/d0;->b:Z

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " received a response after being closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/d0;->d(Ljava/lang/Object;)V

    return-void
.end method
