.class public final Lio/grpc/netty/shaded/io/netty/channel/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/y;
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# static fields
.field private static final c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/k0;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/k0;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/k0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/y;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 4
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->j(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->I()Z

    move-result v0

    return v0
.end method

.method public L()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->N()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic Q()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/k0;->h()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/y;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method public bridge synthetic c(Lug/r;)Lug/q;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lug/x;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lug/q;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->i(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method public f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/y;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method public bridge synthetic f(Lug/r;)Lug/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public f0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/k0;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/k0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/k0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lug/x;->g()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/k0;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/k0;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lug/q;->Q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/k0;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->c(Lug/x;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->a(Lug/x;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->b(Lug/x;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    :goto_1
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/Void;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lug/x;->B(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method public bridge synthetic m0(Ljava/lang/Object;)Lug/x;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k0;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public p0()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lug/q;->p0()Z

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method public x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/k0;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
