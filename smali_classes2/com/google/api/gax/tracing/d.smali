.class Lcom/google/api/gax/tracing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/b0<",
        "TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lr5/a;

.field private final b:Lcom/google/api/gax/rpc/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lr5/a;Lcom/google/api/gax/rpc/b0;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr5/a;",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tracer"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr5/a;

    iput-object p1, p0, Lcom/google/api/gax/tracing/d;->a:Lr5/a;

    const-string p1, "innerObserver"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/b0;

    iput-object p1, p0, Lcom/google/api/gax/tracing/d;->b:Lcom/google/api/gax/rpc/b0;

    const-string p1, "wasCancelled"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/api/gax/tracing/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic b(Lcom/google/api/gax/tracing/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/tracing/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/api/gax/rpc/e0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->b:Lcom/google/api/gax/rpc/b0;

    new-instance v1, Lcom/google/api/gax/tracing/d$a;

    invoke-direct {v1, p0, p1}, Lcom/google/api/gax/tracing/d$a;-><init>(Lcom/google/api/gax/tracing/d;Lcom/google/api/gax/rpc/e0;)V

    invoke-interface {v0, v1}, Lcom/google/api/gax/rpc/b0;->a(Lcom/google/api/gax/rpc/e0;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->a:Lr5/a;

    invoke-interface {v0}, Lr5/a;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->b:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/b0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->a:Lr5/a;

    invoke-interface {v0}, Lr5/a;->d()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->a:Lr5/a;

    invoke-interface {v0, p1}, Lr5/a;->a(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->b:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->a:Lr5/a;

    invoke-interface {v0}, Lr5/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/tracing/d;->b:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
