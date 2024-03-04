.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
.source "SourceFile"

# interfaces
.implements Lng/j;


# instance fields
.field private volatile p:Z

.field private volatile q:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->J0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->W()V

    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->Y()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->Y()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->O(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->y0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public A0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->T(I)V

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->W()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public B0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->r0(I)V
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

.method public bridge synthetic C(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->O0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public C0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->U(I)V
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

.method public bridge synthetic D(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->P0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public D0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->s0(Z)V
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

.method public bridge synthetic E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->Q0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public E0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->q:Z

    return-object p0
.end method

.method public bridge synthetic F(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->R0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public F0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->u0(I)V
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

.method public G0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->v0(I)V
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

.method public H0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->w0(I)V
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

.method public I0(Ljava/util/Map;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "[B>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/epoll/p;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->v1(Ljava/util/Map;)V
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

.method public J0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->V(Z)V
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

.method public K0(J)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->y0(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->q0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public L0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->z0(Z)V
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

.method public M0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->A0(I)V
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

.method public bridge synthetic N(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->s0(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public N0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->W(I)V
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

.method public O0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->S(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public P0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->T(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public Q0(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->U(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public R0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->V(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public X()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->u()I

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

.method public Y()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->v()I

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

.method public Z()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->a0()I

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

.method public a0()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->c0()I

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

.method public b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;
    .locals 2
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
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->X()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->u:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->Y()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->F:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->l0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->t:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->h0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->w:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->i0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->x:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->A:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->f0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->p:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    sget-object v0, Llg/b;->M:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->j0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    sget-object v0, Llg/b;->N:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_9

    .line 20
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->d0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 21
    :cond_9
    sget-object v0, Llg/b;->O:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_a

    .line 22
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->b0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :cond_a
    sget-object v0, Llg/b;->P:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_b

    .line 24
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->c0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :cond_b
    sget-object v0, Llg/b;->Q:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_c

    .line 26
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->a0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
    sget-object v0, Llg/b;->R:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_d

    .line 28
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->e0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :cond_d
    sget-object v0, Llg/b;->C4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_e

    .line 30
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->m0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :cond_e
    sget-object v0, Llg/b;->V1:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_f

    .line 32
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->g0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :cond_f
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->G:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_10

    .line 34
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->k0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :cond_10
    sget-object v0, Llg/b;->D4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_11

    .line 36
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->Z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :cond_11
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b0()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->d0()I

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

.method public c0()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->e0()I

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

.method public d0()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->f0()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->p:Z

    return v0
.end method

.method public e0()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->g0()I

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

.method public f0()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->x()I

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

.method public g0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

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

.method public h()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->w()I

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

.method public h0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->B()Z

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

.method public i0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->D()Z

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

.method public j0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->j0()Z

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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->x0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->u:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->A0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->F:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->J0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->t:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->u0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->w:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->z0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->x:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_5

    .line 13
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->A:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_6

    .line 15
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->N0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 16
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->p:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_7

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->o0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 18
    :cond_7
    sget-object v0, Llg/b;->M:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_8

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->D0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 20
    :cond_8
    sget-object v0, Llg/b;->N:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_9

    .line 21
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->K0(J)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 22
    :cond_9
    sget-object v0, Llg/b;->O:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->G0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto/16 :goto_0

    .line 24
    :cond_a
    sget-object v0, Llg/b;->Q:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_b

    .line 25
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->F0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 26
    :cond_b
    sget-object v0, Llg/b;->P:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_c

    .line 27
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->H0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 28
    :cond_c
    sget-object v0, Llg/b;->R:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_d

    .line 29
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->M0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 30
    :cond_d
    sget-object v0, Llg/b;->V1:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_e

    .line 31
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->t0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 32
    :cond_e
    sget-object v0, Llg/b;->F4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_f

    .line 33
    check-cast p2, Ljava/util/Map;

    .line 34
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->I0(Ljava/util/Map;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 35
    :cond_f
    sget-object v0, Llg/b;->C4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_10

    .line 36
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->L0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 37
    :cond_10
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->G:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_11

    .line 38
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->E0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    goto :goto_0

    .line 39
    :cond_11
    sget-object v0, Llg/b;->D4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_12

    .line 40
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->B0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 41
    :cond_12
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->q:Z

    return v0
.end method

.method public l0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->F()Z

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

.method public m0()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->k0()Z

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

.method public n0(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->K(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public o0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->p:Z

    return-object p0
.end method

.method public p0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public q0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public r0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->M(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public bridge synthetic s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->n0(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->N(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public bridge synthetic t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->p0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public t0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

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

.method public bridge synthetic u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->q0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public u0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->P(Z)V
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

.method public bridge synthetic v(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->r0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public v0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->P(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public bridge synthetic w(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->v0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public w0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->Q(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public x0(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Q(I)V
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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->w0(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object p1

    return-object p1
.end method

.method public y0(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->R(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    return-object p0
.end method

.method public z0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->R(Z)V
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
