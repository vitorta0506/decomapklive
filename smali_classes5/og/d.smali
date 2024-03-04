.class public Log/d;
.super Lmg/a;
.source "SourceFile"

# interfaces
.implements Lng/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log/d$b;,
        Log/d$c;
    }
.end annotation


# static fields
.field private static final G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final H:Ljava/nio/channels/spi/SelectorProvider;


# instance fields
.field private final F:Lng/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Log/d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Log/d;->G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Log/d;->H:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Log/d;->H:Ljava/nio/channels/spi/SelectorProvider;

    invoke-direct {p0, v0}, Log/d;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SocketChannel;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Lmg/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;)V

    .line 5
    new-instance p1, Log/d$b;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, p2, v0}, Log/d$b;-><init>(Log/d;Log/d;Ljava/net/Socket;Log/c;)V

    iput-object p1, p0, Log/d;->F:Lng/j;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Log/d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SocketChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0

    .line 2
    invoke-static {p1}, Log/d;->t1(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Log/d;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-void
.end method

.method static synthetic k1(Log/d;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-direct {p0, p1}, Log/d;->y1(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method static synthetic l1(Log/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lmg/b;->i0()V

    return-void
.end method

.method static synthetic m1(Log/d;)V
    .locals 0

    invoke-virtual {p0}, Lmg/b;->L0()V

    return-void
.end method

.method private n1(III)V
    .locals 0

    if-ne p1, p2, :cond_0

    shl-int/lit8 p1, p1, 0x1

    if-le p1, p3, :cond_1

    .line 1
    iget-object p2, p0, Log/d;->F:Lng/j;

    check-cast p2, Log/d$b;

    invoke-virtual {p2, p1}, Log/d$b;->j0(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x1000

    if-le p1, p3, :cond_1

    ushr-int/lit8 p1, p1, 0x1

    if-ge p2, p1, :cond_1

    .line 2
    iget-object p2, p0, Log/d;->F:Lng/j;

    check-cast p2, Log/d$b;

    invoke-virtual {p2, p1}, Log/d$b;->j0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p1(Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->d(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->c(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    :goto_0
    return-void
.end method

.method private static t1(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/SocketChannel;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v1, "Failed to open a socket."

    invoke-direct {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private x1()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownInput()Ljava/nio/channels/SocketChannel;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    :goto_0
    return-void
.end method

.method private y1(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Log/d;->x1()V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Log/d;->u1()Lmg/b$b;

    move-result-object v0

    return-object v0
.end method

.method protected B0()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/d;->v1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/d;->s1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected N0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Log/d;->p1(Ljava/net/SocketAddress;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object p2

    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->e(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p0}, Log/d;->h0()V

    .line 5
    throw p1
.end method

.method protected P0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected bridge synthetic R0()Ljava/nio/channels/SelectableChannel;
    .locals 1

    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected Z0(Lkg/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->b(I)V

    .line 3
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->j()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lkg/j;->v2(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    invoke-virtual {p0}, Log/d;->o1()Lng/j;

    move-result-object v0

    return-object v0
.end method

.method protected b1(Lkg/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lkg/j;->y1(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method protected c1(Lio/grpc/netty/shaded/io/netty/channel/p0;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/p0;->d()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/p0;->g(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected g1()Z
    .locals 1

    invoke-virtual {p0}, Log/d;->q1()Z

    move-result v0

    return v0
.end method

.method protected h0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lmg/b;->h0()V

    .line 2
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    return-void
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Log/d;->h0()V

    return-void
.end method

.method public j1()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Log/d;->w1(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method protected final o0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    :goto_0
    return-void
.end method

.method public o1()Lng/j;
    .locals 1

    iget-object v0, p0, Log/d;->F:Lng/j;

    return-object v0
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Log/d;->o1()Lng/j;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/f;->i()I

    move-result v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lmg/a;->Y0()V

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Log/d;->F:Lng/j;

    check-cast v2, Log/d$b;

    invoke-virtual {v2}, Log/d$b;->h0()I

    move-result v2

    const/16 v3, 0x400

    int-to-long v4, v2

    .line 6
    invoke-virtual {p1, v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/channel/s;->v(IJ)[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->s()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_3

    .line 8
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->t()J

    move-result-wide v7

    .line 9
    invoke-virtual {v0, v3, v5, v4}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-gtz v11, :cond_2

    .line 10
    invoke-virtual {p0, v6}, Lmg/a;->e1(Z)V

    return-void

    :cond_2
    long-to-int v8, v7

    long-to-int v7, v3

    .line 11
    invoke-direct {p0, v8, v7, v2}, Log/d;->n1(III)V

    .line 12
    invoke-virtual {p1, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    goto :goto_0

    .line 13
    :cond_3
    aget-object v3, v3, v5

    .line 14
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 15
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gtz v3, :cond_4

    .line 16
    invoke-virtual {p0, v6}, Lmg/a;->e1(Z)V

    return-void

    .line 17
    :cond_4
    invoke-direct {p0, v4, v3, v2}, Log/d;->n1(III)V

    int-to-long v2, v3

    .line 18
    invoke-virtual {p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {p0, p1}, Lmg/a;->a1(Lio/grpc/netty/shaded/io/netty/channel/s;)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    if-gtz v1, :cond_0

    if-gez v1, :cond_6

    const/4 v5, 0x1

    .line 20
    :cond_6
    invoke-virtual {p0, v5}, Lmg/a;->e1(Z)V

    return-void
.end method

.method public q1()Z
    .locals 1

    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Log/d;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected r1()Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0}, Lmg/b;->R0()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public s1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->K()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method protected u1()Lmg/b$b;
    .locals 2

    new-instance v0, Log/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Log/d$c;-><init>(Log/d;Log/c;)V

    return-object v0
.end method

.method protected v0()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public v1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->H()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public w1(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Log/d;->y1(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Log/d$a;

    invoke-direct {v1, p0, p1}, Log/d$a;-><init>(Log/d;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p1
.end method
