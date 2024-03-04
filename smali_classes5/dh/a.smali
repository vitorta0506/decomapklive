.class public abstract Ldh/a;
.super Lio/grpc/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Ldh/a;->f()Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0;->a()Z

    move-result v0

    return v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Ldh/a;->f()Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    return-void
.end method

.method public c(Ljava/util/List;Lio/grpc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Lio/grpc/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ldh/a;->f()Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0;->c(Ljava/util/List;Lio/grpc/a;)V

    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 1

    invoke-virtual {p0}, Ldh/a;->f()Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/n0;->d(Lio/grpc/n0$g;)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Ldh/a;->f()Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    return-void
.end method

.method protected abstract f()Lio/grpc/n0;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Ldh/a;->f()Lio/grpc/n0;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
