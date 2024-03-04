.class public abstract Lio/grpc/internal/k0;
.super Lio/grpc/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/c1;->a(I)V

    return-void
.end method

.method public b(IJJ)V
    .locals 6

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/c1;->b(IJJ)V

    return-void
.end method

.method public c(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/c1;->c(J)V

    return-void
.end method

.method public d(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/c1;->d(J)V

    return-void
.end method

.method public e(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/c1;->e(I)V

    return-void
.end method

.method public f(IJJ)V
    .locals 6

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/c1;->f(IJJ)V

    return-void
.end method

.method public g(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/c1;->g(J)V

    return-void
.end method

.method public h(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/c1;->h(J)V

    return-void
.end method

.method public i(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/c1;->i(Lio/grpc/Status;)V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/k;->j()V

    return-void
.end method

.method public k(Lio/grpc/s0;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/k;->k(Lio/grpc/s0;)V

    return-void
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/k;->l()V

    return-void
.end method

.method public m(Lio/grpc/a;Lio/grpc/s0;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/k;->m(Lio/grpc/a;Lio/grpc/s0;)V

    return-void
.end method

.method protected abstract n()Lio/grpc/k;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/k0;->n()Lio/grpc/k;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
