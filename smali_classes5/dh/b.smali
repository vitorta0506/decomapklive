.class public abstract Ldh/b;
.super Lio/grpc/n0$d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/n0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Lio/grpc/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/q0;"
        }
    .end annotation

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->a(Ljava/util/List;Ljava/lang/String;)Lio/grpc/q0;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/n0$b;)Lio/grpc/n0$h;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/ChannelLogger;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->d()Lio/grpc/ChannelLogger;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/grpc/t0$b;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->e()Lio/grpc/t0$b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lio/grpc/v0;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->f()Lio/grpc/v0;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public h()Lio/grpc/d1;
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->i()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->j()V

    return-void
.end method

.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 1

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method public l(Lio/grpc/q0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/q0;",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->l(Lio/grpc/q0;Ljava/util/List;)V

    return-void
.end method

.method protected abstract m()Lio/grpc/n0$d;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Ldh/b;->m()Lio/grpc/n0$d;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
