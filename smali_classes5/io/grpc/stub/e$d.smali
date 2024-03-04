.class final Lio/grpc/stub/e$d;
.super Lio/grpc/stub/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/e$c<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/stub/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/h<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/stub/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/e$b<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Lio/grpc/stub/h;Lio/grpc/stub/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/h<",
            "TRespT;>;",
            "Lio/grpc/stub/e$b<",
            "TReqT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/stub/e$c;-><init>(Lio/grpc/stub/e$a;)V

    .line 2
    iput-object p1, p0, Lio/grpc/stub/e$d;->a:Lio/grpc/stub/h;

    .line 3
    iput-object p2, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    .line 4
    instance-of v0, p1, Lio/grpc/stub/f;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lio/grpc/stub/f;

    .line 6
    invoke-interface {p1, p2}, Lio/grpc/stub/f;->a(Lio/grpc/stub/d;)V

    .line 7
    :cond_0
    invoke-static {p2}, Lio/grpc/stub/e$b;->b(Lio/grpc/stub/e$b;)V

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
    iget-object p1, p0, Lio/grpc/stub/e$d;->a:Lio/grpc/stub/h;

    invoke-interface {p1}, Lio/grpc/stub/h;->onCompleted()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/e$d;->a:Lio/grpc/stub/h;

    invoke-virtual {p1, p2}, Lio/grpc/Status;->e(Lio/grpc/s0;)Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/stub/h;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lio/grpc/s0;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/stub/e$d;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {v0}, Lio/grpc/stub/e$b;->c(Lio/grpc/stub/e$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v0, "More than one responses received for unary or client-streaming call"

    .line 3
    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/grpc/stub/e$d;->c:Z

    .line 6
    iget-object v1, p0, Lio/grpc/stub/e$d;->a:Lio/grpc/stub/h;

    invoke-interface {v1, p1}, Lio/grpc/stub/h;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {p1}, Lio/grpc/stub/e$b;->c(Lio/grpc/stub/e$b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {p1}, Lio/grpc/stub/e$b;->d(Lio/grpc/stub/e$b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-virtual {p1, v0}, Lio/grpc/stub/e$b;->h(I)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {v0}, Lio/grpc/stub/e$b;->e(Lio/grpc/stub/e$b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {v0}, Lio/grpc/stub/e$b;->e(Lio/grpc/stub/e$b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {v0}, Lio/grpc/stub/e$b;->f(Lio/grpc/stub/e$b;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/stub/e$d;->b:Lio/grpc/stub/e$b;

    invoke-static {v0}, Lio/grpc/stub/e$b;->f(Lio/grpc/stub/e$b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/stub/e$b;->h(I)V

    :cond_0
    return-void
.end method
