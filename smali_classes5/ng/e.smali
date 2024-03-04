.class public Lng/e;
.super Lio/grpc/netty/shaded/io/netty/channel/c0;
.source "SourceFile"

# interfaces
.implements Lng/j;


# instance fields
.field protected final o:Ljava/net/Socket;

.field private volatile p:Z


# direct methods
.method public constructor <init>(Lng/i;Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    const-string p1, "javaSocket"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Socket;

    iput-object p1, p0, Lng/e;->o:Ljava/net/Socket;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lng/e;->a0(Z)Lng/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->W(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->c0(I)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->d0(I)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->e0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->f0(I)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public H()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public I()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public J()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public K()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public L()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public M()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public N(Lkg/k;)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public O(Z)Lng/j;
    .locals 0

    iput-boolean p1, p0, Lng/e;->p:Z

    return-object p0
.end method

.method public P(Z)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public Q(Z)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public R(I)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->v(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public S(Z)Lng/j;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public T(I)Lng/j;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->w(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public U(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public V(I)Lng/j;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public W(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public X(Z)Lng/j;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public Y(I)Lng/j;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public Z(I)Lng/j;
    .locals 2

    if-gez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lng/e;->o:Ljava/net/Socket;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a0(Z)Lng/j;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->v:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lng/e;->H()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->u:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lng/e;->I()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->F:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lng/e;->M()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->t:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lng/e;->K()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->w:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lng/e;->L()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->x:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lng/e;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->A:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lng/e;->J()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->p:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lng/e;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b0(I)Lng/j;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c0(I)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->C(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public d0(I)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->D(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lng/e;->p:Z

    return v0
.end method

.method public e0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public f0(I)Lng/j;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->F(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public h()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/e;->o:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->v:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->V(I)Lng/j;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->u:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->Y(I)Lng/j;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->F:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->a0(Z)Lng/j;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->t:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->S(Z)Lng/j;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->w:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->X(Z)Lng/j;

    goto :goto_0

    .line 12
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->x:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_5

    .line 13
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->Z(I)Lng/j;

    goto :goto_0

    .line 14
    :cond_5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->A:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_6

    .line 15
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->b0(I)Lng/j;

    goto :goto_0

    .line 16
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->p:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_7

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lng/e;->O(Z)Lng/j;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 18
    :cond_7
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->N(Lkg/k;)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->P(Z)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->Q(Z)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->R(I)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lng/e;->T(I)Lng/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/e;->U(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lng/j;

    move-result-object p1

    return-object p1
.end method
