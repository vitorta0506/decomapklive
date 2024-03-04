.class public abstract Lio/grpc/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/j2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/o;)V
    .locals 2

    invoke-virtual {p0}, Lio/grpc/internal/d;->r()Lio/grpc/internal/q0;

    move-result-object v0

    const-string v1, "compressor"

    invoke-static {p1, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/o;

    invoke-interface {v0, p1}, Lio/grpc/internal/q0;->a(Lio/grpc/o;)Lio/grpc/internal/q0;

    return-void
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/d;->t()Lio/grpc/internal/d$a;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/d$a;->f(Lio/grpc/internal/d$a;I)V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/d;->r()Lio/grpc/internal/q0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/q0;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/d;->r()Lio/grpc/internal/q0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/q0;->flush()V

    :cond_0
    return-void
.end method

.method public final h(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "message"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/d;->r()Lio/grpc/internal/q0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/q0;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/internal/d;->r()Lio/grpc/internal/q0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q0;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->f(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->f(Ljava/io/Closeable;)V

    throw v0
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/d;->t()Lio/grpc/internal/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/d$a;->u()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/d;->t()Lio/grpc/internal/d$a;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/d$a;->g(Lio/grpc/internal/d$a;)Z

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/d;->r()Lio/grpc/internal/q0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/q0;->close()V

    return-void
.end method

.method protected abstract r()Lio/grpc/internal/q0;
.end method

.method protected final s(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/d;->t()Lio/grpc/internal/d$a;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/d$a;->h(Lio/grpc/internal/d$a;I)V

    return-void
.end method

.method protected abstract t()Lio/grpc/internal/d$a;
.end method
