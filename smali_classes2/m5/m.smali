.class Lm5/m;
.super Lcom/google/api/gax/rpc/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/d0<",
        "TResponseT;>;"
    }
.end annotation


# instance fields
.field private c:Lcom/google/api/gax/rpc/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/util/concurrent/CancellationException;

.field private final e:Lm5/o;


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/b0;Lm5/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Lm5/o;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/m;->c:Lcom/google/api/gax/rpc/b0;

    .line 3
    iput-object p2, p0, Lm5/m;->e:Lm5/o;

    return-void
.end method

.method static synthetic f(Lm5/m;Ljava/util/concurrent/CancellationException;)Ljava/util/concurrent/CancellationException;
    .locals 0

    iput-object p1, p0, Lm5/m;->d:Ljava/util/concurrent/CancellationException;

    return-object p1
.end method


# virtual methods
.method protected b()V
    .locals 1

    iget-object v0, p0, Lm5/m;->c:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/b0;->onComplete()V

    return-void
.end method

.method protected c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/m;->d:Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lm5/m;->d:Ljava/util/concurrent/CancellationException;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lm5/m;->e:Lm5/o;

    invoke-virtual {v0, p1}, Lm5/o;->a(Ljava/lang/Throwable;)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lm5/m;->c:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseT;)V"
        }
    .end annotation

    iget-object v0, p0, Lm5/m;->c:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected e(Lcom/google/api/gax/rpc/e0;)V
    .locals 2

    iget-object v0, p0, Lm5/m;->c:Lcom/google/api/gax/rpc/b0;

    new-instance v1, Lm5/m$a;

    invoke-direct {v1, p0, p1}, Lm5/m$a;-><init>(Lm5/m;Lcom/google/api/gax/rpc/e0;)V

    invoke-interface {v0, v1}, Lcom/google/api/gax/rpc/b0;->a(Lcom/google/api/gax/rpc/e0;)V

    return-void
.end method
