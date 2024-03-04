.class abstract Lio/grpc/internal/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/u;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lio/grpc/internal/u;
.end method

.method public b(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/k1;->b(Lio/grpc/Status;)V

    return-void
.end method

.method public c()Lio/grpc/g0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object v0

    return-object v0
.end method

.method public d(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/r;->d(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "[",
            "Lio/grpc/k;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1

    return-object p1
.end method

.method public f()Lio/grpc/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/u;->f()Lio/grpc/a;

    move-result-object v0

    return-object v0
.end method

.method public g(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/k1;->g(Lio/grpc/Status;)V

    return-void
.end method

.method public h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/k1;->h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/l0;->a()Lio/grpc/internal/u;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
