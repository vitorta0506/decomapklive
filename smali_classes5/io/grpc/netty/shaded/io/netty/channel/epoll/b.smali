.class public abstract Lio/grpc/netty/shaded/io/netty/channel/epoll/b;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/a;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;
    }
.end annotation


# static fields
.field private static final D:Lio/grpc/netty/shaded/io/netty/channel/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/q;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(ZI)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;->D:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;->d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic B0()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;->h1()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public R()Lio/grpc/netty/shaded/io/netty/channel/q;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;->D:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-object v0
.end method

.method protected R0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
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

.method protected d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/b;)V

    return-object v0
.end method

.method abstract g1(I[BII)Lio/grpc/netty/shaded/io/netty/channel/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected h1()Ljava/net/InetSocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
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

.method protected r0(Ljava/lang/Object;)Ljava/lang/Object;
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

.method protected u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z
    .locals 0

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    return p1
.end method
