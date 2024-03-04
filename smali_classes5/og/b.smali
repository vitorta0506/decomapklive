.class public Log/b;
.super Lmg/c;
.source "SourceFile"

# interfaces
.implements Lng/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log/b$b;
    }
.end annotation


# static fields
.field private static final D:Lio/grpc/netty/shaded/io/netty/channel/q;

.field private static final E:Ljava/nio/channels/spi/SelectorProvider;

.field private static final F:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final C:Lng/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/q;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(ZI)V

    sput-object v0, Log/b;->D:Lio/grpc/netty/shaded/io/netty/channel/q;

    .line 2
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Log/b;->E:Ljava/nio/channels/spi/SelectorProvider;

    .line 3
    const-class v0, Log/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Log/b;->F:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Log/b;->E:Ljava/nio/channels/spi/SelectorProvider;

    invoke-static {v0}, Log/b;->g1(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Log/b;-><init>(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lmg/c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;I)V

    .line 3
    new-instance p1, Log/b$b;

    invoke-virtual {p0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-direct {p1, p0, p0, v1, v0}, Log/b$b;-><init>(Log/b;Log/b;Ljava/net/ServerSocket;Log/b$a;)V

    iput-object p1, p0, Log/b;->C:Lng/h;

    return-void
.end method

.method static synthetic c1(Log/b;)V
    .locals 0

    invoke-virtual {p0}, Lmg/b;->L0()V

    return-void
.end method

.method private static g1(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/ServerSocketChannel;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v1, "Failed to open a server socket."

    invoke-direct {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected B0()Ljava/net/SocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic H()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/b;->h1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/b;->f1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected N0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected P0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public R()Lio/grpc/netty/shaded/io/netty/channel/q;
    .locals 1

    sget-object v0, Log/b;->D:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-object v0
.end method

.method protected bridge synthetic R0()Ljava/nio/channels/SelectableChannel;
    .locals 1

    invoke-virtual {p0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected V0(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lmg/c;->V0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method protected Z0(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->a(Ljava/nio/channels/ServerSocketChannel;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Log/d;

    invoke-direct {v1, p0, v0}, Log/d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SocketChannel;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 3
    sget-object v1, Log/b;->F:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to create a new channel from an accepted socket."

    invoke-interface {v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 5
    sget-object v0, Log/b;->F:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Failed to close a socket."

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected a1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/s;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    invoke-virtual {p0}, Log/b;->d1()Lng/h;

    move-result-object v0

    return-object v0
.end method

.method public d1()Lng/h;
    .locals 1

    iget-object v0, p0, Log/b;->C:Lng/h;

    return-object v0
.end method

.method protected e1()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    invoke-super {p0}, Lmg/b;->R0()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public f1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->K()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method protected h0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    return-void
.end method

.method public h1()Ljava/net/InetSocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lmg/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final r0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected v0()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->h(Ljava/net/ServerSocket;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method
