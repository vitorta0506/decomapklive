.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/l;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->D0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->C0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public A0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->g0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public B0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->h0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic C(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->H0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public C0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->i0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic D(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->I0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public D0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->j0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->J0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public E0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->S(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic F(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->K0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public F0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->t0(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public G0(Ljava/util/Map;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "[B>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/epoll/n;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->l1(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public H0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->l0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public I0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->m0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public J0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->n0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public K0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->o0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->u0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;->K:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->s0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Llg/b;->a1:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->q0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Llg/b;->V1:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->r0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Llg/b;->V3:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->p0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->v0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->B0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->D0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;->K:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->E0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Llg/b;->a1:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->x0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Llg/b;->V1:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->y0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Llg/b;->F4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Ljava/util/Map;

    .line 10
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->G0(Ljava/util/Map;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v0, Llg/b;->V3:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 12
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->F0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 13
    :cond_4
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p0()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->b0()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public q0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->h0()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public r0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->i0()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->t0(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public s0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->E()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public t0(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->a0(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->u0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public u0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->b0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic v(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->w0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public v0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->c0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public bridge synthetic w(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->z0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public w0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->d0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method

.method public x0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->p0(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;->A0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object p1

    return-object p1
.end method

.method public y0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->q0(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public z0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/l;->f0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/l;

    return-object p0
.end method
