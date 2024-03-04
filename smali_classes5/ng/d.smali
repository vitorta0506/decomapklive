.class public Lng/d;
.super Lio/grpc/netty/shaded/io/netty/channel/c0;
.source "SourceFile"

# interfaces
.implements Lng/h;


# instance fields
.field protected final o:Ljava/net/ServerSocket;

.field private volatile p:I


# direct methods
.method public constructor <init>(Lng/g;Ljava/net/ServerSocket;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a1;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/a1;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/v0;)V

    .line 2
    sget p1, Lio/grpc/netty/shaded/io/netty/util/n;->e:I

    iput p1, p0, Lng/d;->p:I

    const-string p1, "javaSocket"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/ServerSocket;

    iput-object p1, p0, Lng/d;->o:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->R(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->T(I)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->U(I)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->V(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->W(I)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lng/d;->p:I

    return v0
.end method

.method public I()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/d;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReceiveBufferSize()I

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

.method public J()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/d;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReuseAddress()Z

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

.method public K(Lkg/k;)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public L(Z)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public M(I)Lng/h;
    .locals 1

    const-string v0, "backlog"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lng/d;->p:I

    return-object p0
.end method

.method public N(I)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->v(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public O(I)Lng/h;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->w(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public P(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public Q(I)Lng/h;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/d;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
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

.method public R(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public S(Z)Lng/h;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lng/d;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
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

.method public T(I)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->C(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public U(I)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->D(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public V(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public W(I)Lng/h;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->F(I)Lio/grpc/netty/shaded/io/netty/channel/f;

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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->v:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lng/d;->I()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->w:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lng/d;->J()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->y:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lng/d;->H()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->v:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/d;->Q(I)Lng/h;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->w:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lng/d;->S(Z)Lng/h;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->y:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/d;->M(I)Lng/h;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->K(Lkg/k;)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->L(Z)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->N(I)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lng/d;->O(I)Lng/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lng/d;->P(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lng/h;

    move-result-object p1

    return-object p1
.end method
