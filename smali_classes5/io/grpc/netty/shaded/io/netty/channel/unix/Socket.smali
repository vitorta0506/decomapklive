.class public Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;
.super Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
.source "SourceFile"


# static fields
.field private static volatile e:Z


# instance fields
.field protected final d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;-><init>(I)V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->isIPv6(I)Z

    move-result p1

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->d:Z

    return-void
.end method

.method protected static H()I
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->newSocketDomainFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v2, "newSocketDomain"

    invoke-static {v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static I(Z)I
    .locals 2

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->newSocketStreamFd(Z)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v1, "newSocketStream"

    invoke-static {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static Y(Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->d:Z

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/Inet6Address;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Z(Ljava/net/InetAddress;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Y(Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method

.method private static native accept(I[B)I
.end method

.method private static native bind(IZ[BII)I
.end method

.method private static native bindDomainSocket(I[B)I
.end method

.method private static native connect(IZ[BII)I
.end method

.method private static native connectDomainSocket(I[B)I
.end method

.method private static native finishConnect(I)I
.end method

.method private static native getReceiveBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSendBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoLinger(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTrafficClass(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIPv6(I)Z
.end method

.method private static native isIPv6Preferred0(Z)Z
.end method

.method private static native isKeepAlive(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReuseAddress(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReusePort(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpNoDelay(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native localAddress(I)[B
.end method

.method private static native msgFastopen()I
.end method

.method private static native newSocketDomainFd()I
.end method

.method private static native newSocketStreamFd(Z)I
.end method

.method private static native recvFd(I)I
.end method

.method private static native remoteAddress(I)[B
.end method

.method private static native sendFd(II)I
.end method

.method private static native sendTo(IZLjava/nio/ByteBuffer;II[BIII)I
.end method

.method private static native sendToAddress(IZJII[BIII)I
.end method

.method private static native sendToAddresses(IZJI[BIII)I
.end method

.method private static native setKeepAlive(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReceiveBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReuseAddress(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReusePort(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSendBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoLinger(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNoDelay(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTrafficClass(IZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native shutdown(IZZ)I
.end method

.method public static y()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/n;->e()Z

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->isIPv6Preferred0(Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->e:Z

    return-void
.end method

.method public static z()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->e:Z

    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->f(I)Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->isKeepAlive(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->h(I)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->isReuseAddress(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final E()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->isReusePort(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->isTcpNoDelay(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->localAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->a([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final J()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->recvFd(I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_1
    sget v1, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->f:I

    if-eq v0, v1, :cond_3

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->g:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "recvFd"

    .line 3
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->remoteAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->a([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final L(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->sendFd(II)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 2
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->f:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->g:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sendFd"

    .line 3
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final M(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    .line 1
    instance-of v2, v1, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 3
    move-object v4, v1

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    move-object v9, v2

    move v10, v4

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->e([B)[B

    move-result-object v2

    move-object v9, v2

    const/4 v10, 0x0

    :goto_0
    if-eqz p6, :cond_1

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->msgFastopen()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 6
    :goto_1
    iget v4, v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Z(Ljava/net/InetAddress;)Z

    move-result v5

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v11, p5

    invoke-static/range {v4 .. v12}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->sendTo(IZLjava/nio/ByteBuffer;II[BIII)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    .line 7
    :cond_2
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->h:I

    if-ne v1, v2, :cond_3

    if-eqz p6, :cond_3

    return v3

    .line 8
    :cond_3
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->i:I

    if-eq v1, v2, :cond_4

    const-string v2, "sendTo"

    .line 9
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 10
    :cond_4
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendTo failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final N(JIILjava/net/InetAddress;IZ)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    .line 1
    instance-of v2, v1, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 3
    move-object v4, v1

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    move-object v10, v2

    move v11, v4

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->e([B)[B

    move-result-object v2

    move-object v10, v2

    const/4 v11, 0x0

    :goto_0
    if-eqz p7, :cond_1

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->msgFastopen()I

    move-result v2

    move v13, v2

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 6
    :goto_1
    iget v4, v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Z(Ljava/net/InetAddress;)Z

    move-result v5

    move-wide v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v12, p6

    invoke-static/range {v4 .. v13}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->sendToAddress(IZJII[BIII)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    .line 7
    :cond_2
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->h:I

    if-ne v1, v2, :cond_3

    if-eqz p7, :cond_3

    return v3

    .line 8
    :cond_3
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->i:I

    if-eq v1, v2, :cond_4

    const-string v2, "sendToAddress"

    .line 9
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 10
    :cond_4
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendToAddress failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final O(JILjava/net/InetAddress;IZ)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    .line 1
    instance-of v2, v1, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 3
    move-object v4, v1

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    move-object v9, v2

    move v10, v4

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->e([B)[B

    move-result-object v2

    move-object v9, v2

    const/4 v10, 0x0

    :goto_0
    if-eqz p6, :cond_1

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->msgFastopen()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 6
    :goto_1
    iget v4, v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Z(Ljava/net/InetAddress;)Z

    move-result v5

    move-wide v6, p1

    move/from16 v8, p3

    move/from16 v11, p5

    invoke-static/range {v4 .. v12}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->sendToAddresses(IZJI[BIII)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    .line 7
    :cond_2
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->h:I

    if-ne v1, v2, :cond_3

    if-eqz p6, :cond_3

    return v3

    .line 8
    :cond_3
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->i:I

    if-eq v1, v2, :cond_4

    const-string v2, "sendToAddresses"

    .line 9
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 10
    :cond_4
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendToAddresses failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final P(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setKeepAlive(II)V

    return-void
.end method

.method public final Q(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setReceiveBufferSize(II)V

    return-void
.end method

.method public final R(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setReuseAddress(II)V

    return-void
.end method

.method public final S(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setReusePort(II)V

    return-void
.end method

.method public final T(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setSendBufferSize(II)V

    return-void
.end method

.method public final U(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setSoLinger(II)V

    return-void
.end method

.method public final V(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setTcpNoDelay(II)V

    return-void
.end method

.method public final W(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->d:Z

    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->setTrafficClass(IZI)V

    return-void
.end method

.method public final X(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a:I

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->e(I)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_1

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->c(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 5
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->h(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->j(I)I

    move-result v1

    :cond_2
    if-ne v1, v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->shutdown(IZZ)I

    move-result p1

    if-gez p1, :cond_4

    const-string p2, "shutdown"

    .line 9
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    :cond_4
    return-void

    .line 10
    :cond_5
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public final q([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->accept(I[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 2
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->f:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->g:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "accept"

    .line 3
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final r(Ljava/net/SocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const-string v1, "bind"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->f(Ljava/net/InetAddress;)Lio/grpc/netty/shaded/io/netty/channel/unix/c;

    move-result-object v2

    .line 5
    iget v3, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Z(Ljava/net/InetAddress;)Z

    move-result v0

    iget-object v4, v2, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->a:[B

    iget v2, v2, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->b:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v3, v0, v4, v2, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->bind(IZ[BII)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    .line 9
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->bindDomainSocket(I[B)I

    move-result p1

    if-ltz p1, :cond_2

    :goto_0
    return-void

    .line 10
    :cond_2
    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Ljava/net/SocketAddress;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->f(Ljava/net/InetAddress;)Lio/grpc/netty/shaded/io/netty/channel/unix/c;

    move-result-object v1

    .line 5
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->Z(Ljava/net/InetAddress;)Z

    move-result v0

    iget-object v3, v1, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->a:[B

    iget v1, v1, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->b:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v2, v0, v3, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->connect(IZ[BII)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;

    .line 8
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->connectDomainSocket(I[B)I

    move-result p1

    :goto_0
    if-gez p1, :cond_1

    const-string v0, "connect"

    .line 9
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->b(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->finishConnect(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "finishConnect"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->b(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->getReceiveBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->getSendBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->getSoLinger(I)I

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->d:Z

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->getTrafficClass(IZ)I

    move-result v0

    return v0
.end method
