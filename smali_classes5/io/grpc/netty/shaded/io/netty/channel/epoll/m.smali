.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/m;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/b;
.source "SourceFile"

# interfaces
.implements Lng/g;


# instance fields
.field private final E:Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

.field private volatile F:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->m0()Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->F:Ljava/util/Collection;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/n;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/m;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->E:Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic H()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->k1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->j1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->i1()Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->i1()Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    move-result-object v0

    return-object v0
.end method

.method protected g1(I[BII)Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;-><init>(I)V

    invoke-static {p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->a([BII)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public i1()Lio/grpc/netty/shaded/io/netty/channel/epoll/n;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->E:Lio/grpc/netty/shaded/io/netty/channel/epoll/n;

    return-object v0
.end method

.method public j1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->K()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public k1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->H()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method l1(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->F:Ljava/util/Collection;

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/q;->a(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->F:Ljava/util/Collection;

    return-void
.end method

.method m1()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->F:Ljava/util/Collection;

    return-object v0
.end method

.method protected u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z
    .locals 0

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    return p1
.end method
