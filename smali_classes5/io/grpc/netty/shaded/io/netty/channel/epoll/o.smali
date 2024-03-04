.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/o;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/c;
.source "SourceFile"

# interfaces
.implements Lng/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;
    }
.end annotation


# instance fields
.field private final L:Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

.field private volatile M:Ljava/util/Collection;
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

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->M:Ljava/util/Collection;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->L:Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->M:Ljava/util/Collection;

    .line 6
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;)V

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->L:Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    .line 7
    instance-of p2, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    if-eqz p2, :cond_0

    .line 8
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/m;->m1()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->M:Ljava/util/Collection;

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->u1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->t1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object v0

    return-object v0
.end method

.method S0(Ljava/net/SocketAddress;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->L:Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->a()V

    .line 4
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkg/j;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lkg/j;

    .line 6
    move-object v2, p1

    check-cast v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->V0(Lkg/j;Ljava/net/InetSocketAddress;Z)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    return v3

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->S0(Ljava/net/SocketAddress;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object v0

    return-object v0
.end method

.method protected d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;Lio/grpc/netty/shaded/io/netty/channel/epoll/o$a;)V

    return-object v0
.end method

.method public s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/p;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->L:Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    return-object v0
.end method

.method public t1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->K()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public u1()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->H()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method v1(Ljava/util/Map;)V
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

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->M:Ljava/util/Collection;

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/q;->a(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->M:Ljava/util/Collection;

    return-void
.end method
