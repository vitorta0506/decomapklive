.class public final Lio/grpc/netty/shaded/io/netty/channel/unix/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 4
    invoke-static {p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p1

    :cond_1
    return-object p0
.end method

.method public static b(Lkg/j;)Z
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->a:I

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/h;->c(Lkg/j;I)Z

    move-result p0

    return p0
.end method

.method static c(Lkg/j;I)Z
    .locals 1

    invoke-virtual {p0}, Lkg/j;->b1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkg/j;->h1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkg/j;->s1()I

    move-result p0

    if-le p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
