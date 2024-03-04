.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
.source "SourceFile"

# interfaces
.implements Lng/f;


# instance fields
.field private volatile p:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

.field private volatile q:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    .line 2
    sget-object p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;->BYTES:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->p:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->j0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->l0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->m0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->n0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->o0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->c0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->e0(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public W()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->p:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    return-object v0
.end method

.method public X()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->u()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Y()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->v()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Z(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->K(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public a0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->q:Z

    return-object p0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;->L:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->W()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->p:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->u:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->Y()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->v:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->X()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public c0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public d0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->M(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->q:Z

    return v0
.end method

.method public e0(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->N(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public f0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->P(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public g0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->Q(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public h0(Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->p:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    return-object p0
.end method

.method public i0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Q(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->R(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->G(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;->L:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->h0(Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->p:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->a0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->u:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->k0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->v:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->i0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_3
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->T(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->S(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public m0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->T(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public n0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->U(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public o0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->V(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public bridge synthetic s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->Z(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->b0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->c0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->d0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->f0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->g0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object p1

    return-object p1
.end method
