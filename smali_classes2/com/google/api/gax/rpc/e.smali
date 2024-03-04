.class Lcom/google/api/gax/rpc/e;
.super Lcom/google/api/gax/rpc/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/d0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Lcom/google/api/gax/rpc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/e;->c:Lcom/google/api/gax/rpc/d;

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/e;->c:Lcom/google/api/gax/rpc/d;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/d;->onCompleted()V

    return-void
.end method

.method protected c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/e;->c:Lcom/google/api/gax/rpc/d;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/e;->c:Lcom/google/api/gax/rpc/d;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected e(Lcom/google/api/gax/rpc/e0;)V
    .locals 0

    return-void
.end method
