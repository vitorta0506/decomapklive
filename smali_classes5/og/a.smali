.class public final Log/a;
.super Lio/grpc/netty/shaded/io/netty/channel/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/channel/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final K:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static g(Ljava/nio/channels/Channel;Log/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/Channel;",
            "Log/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/nio/channels/NetworkChannel;

    .line 2
    invoke-interface {p0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Log/a;->K:Ljava/net/SocketOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p1, Log/a;->K:Ljava/net/SocketOption;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne v0, v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    :try_start_0
    iget-object p1, p1, Log/a;->K:Ljava/net/SocketOption;

    invoke-interface {p0, p1}, Ljava/nio/channels/NetworkChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static h(Ljava/nio/channels/Channel;Log/a;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/Channel;",
            "Log/a<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/nio/channels/NetworkChannel;

    .line 2
    invoke-interface {p0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Log/a;->K:Ljava/net/SocketOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p1, Log/a;->K:Ljava/net/SocketOption;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    :try_start_0
    iget-object p1, p1, Log/a;->K:Ljava/net/SocketOption;

    invoke-interface {p0, p1, p2}, Ljava/nio/channels/NetworkChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
