.class Lm5/w$b;
.super Lio/grpc/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/g$a<",
        "TResponseT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lm5/w;


# direct methods
.method private constructor <init>(Lm5/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/w$b;->a:Lm5/w;

    invoke-direct {p0}, Lio/grpc/g$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm5/w;Lm5/w$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lm5/w$b;-><init>(Lm5/w;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {p1}, Lm5/w;->a(Lm5/w;)Lcom/google/api/gax/rpc/b0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/api/gax/rpc/b0;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {v0}, Lm5/w;->d(Lm5/w;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {p1}, Lm5/w;->a(Lm5/w;)Lcom/google/api/gax/rpc/b0;

    move-result-object p1

    iget-object p2, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {p2}, Lm5/w;->d(Lm5/w;)Ljava/util/concurrent/CancellationException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/api/gax/rpc/b0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {v0}, Lm5/w;->a(Lm5/w;)Lcom/google/api/gax/rpc/b0;

    move-result-object v0

    invoke-virtual {p1, p2}, Lio/grpc/Status;->e(Lio/grpc/s0;)Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {v0}, Lm5/w;->a(Lm5/w;)Lcom/google/api/gax/rpc/b0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/b0;->onResponse(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {p1}, Lm5/w;->b(Lm5/w;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {p1}, Lm5/w;->c(Lm5/w;)Lio/grpc/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/grpc/g;->c(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lm5/w$b;->a:Lm5/w;

    invoke-static {v0}, Lm5/w;->e(Lm5/w;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
