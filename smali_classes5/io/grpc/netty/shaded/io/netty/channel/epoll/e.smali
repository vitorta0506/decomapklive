.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/e;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;
    }
.end annotation


# instance fields
.field private final L:Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

.field private volatile M:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

.field private volatile N:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->l0()Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->L:Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    return-void
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic B0()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->w1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->v1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->t1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object v0

    return-object v0
.end method

.method protected R0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->R0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->M:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    .line 3
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->N:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object v0

    return-object v0
.end method

.method protected d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/e$a;)V

    return-object v0
.end method

.method protected l1(Lio/grpc/netty/shaded/io/netty/channel/s;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->L(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->l1(Lio/grpc/netty/shaded/io/netty/channel/s;)I

    move-result p1

    return p1
.end method

.method protected r0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->r0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->L:Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    return-object v0
.end method

.method public t1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->K()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected u1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->M:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic v0()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->u1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public v1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->H()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected w1()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->N:Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method
