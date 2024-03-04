.class abstract Lio/grpc/internal/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/o;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/j2;->a(Lio/grpc/o;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/j2;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->d(I)V

    return-void
.end method

.method public e(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/j2;->flush()V

    return-void
.end method

.method public g(Lio/grpc/v;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->g(Lio/grpc/v;)V

    return-void
.end method

.method public h(Ljava/io/InputStream;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/j2;->h(Ljava/io/InputStream;)V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/j2;->i()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/j2;->isReady()Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->j(Z)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->k(Ljava/lang/String;)V

    return-void
.end method

.method public l(Lio/grpc/internal/x0;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->l(Lio/grpc/internal/x0;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/q;->m()V

    return-void
.end method

.method public n(Lio/grpc/t;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->n(Lio/grpc/t;)V

    return-void
.end method

.method public o(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->o(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method

.method protected abstract p()Lio/grpc/internal/q;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/i0;->p()Lio/grpc/internal/q;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
