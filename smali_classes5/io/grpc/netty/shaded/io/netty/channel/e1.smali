.class public final Lio/grpc/netty/shaded/io/netty/channel/e1;
.super Lug/c;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/c<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/channel/y;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/j;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lug/c;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/e1$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/e1$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e1;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    :goto_0
    return-void
.end method

.method static synthetic i(Lio/grpc/netty/shaded/io/netty/channel/e1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->o(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static l()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "void future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->v(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic Q()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/e1;->p()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/e1;->l()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->j(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->j(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lug/q;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->j(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lug/x;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->j(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c0()Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/e1;->k()Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-object v0
.end method

.method public bridge synthetic f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->q(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lug/r;)Lug/q;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->q(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public f0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/f0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :cond_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/e1;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/e1;->l()V

    return-object p0
.end method

.method public k()Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic m()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/e1;->s()Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0(Ljava/lang/Object;)Lug/x;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->t(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/e1;"
        }
    .end annotation

    return-object p0
.end method

.method public r(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->o(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public s()Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 0

    return-object p0
.end method

.method public t(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->r(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/Void;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->t(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e1;->o(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
