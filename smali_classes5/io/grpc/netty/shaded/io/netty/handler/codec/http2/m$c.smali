.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;)V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;

    return-void
.end method

.method private m()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->m(Z)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-void
.end method

.method private n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->i()Z

    move-result v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->n()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->m()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)Z

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->n()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)Z

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->n()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->m()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->m(Z)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "Caught Throwable from listener.writabilityChanged"

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)Z

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->n()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->n()Z

    move-result v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->m()V

    :cond_0
    return-void
.end method

.method d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V

    return-void
.end method

.method f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V

    return-void
.end method

.method g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->g(I)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->m()V

    :cond_0
    return-void
.end method

.method j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Caught unexpected exception from checkAllWritabilityChanged"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Caught unexpected exception from window"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
