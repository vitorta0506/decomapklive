.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;
.super Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;
.source "SourceFile"


# static fields
.field static final f:Ljava/net/InetAddress;

.field private static final g:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "::"

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->B0(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->f:Ljava/net/InetAddress;

    const-string v0, "0.0.0.0"

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->B0(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->g:Ljava/net/InetAddress;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;-><init>(I)V

    return-void
.end method

.method private static B0(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native getSoBusyPoll(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpDeferAccept(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepCnt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIdle(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIntvl(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpNotSentLowAt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpUserTimeout(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpFreeBind(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpTransparent(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpCork(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpQuickAck(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static l0()Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->H()I

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static m0()Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->z()Z

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->n0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    return-object v0
.end method

.method public static n0(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->I(Z)I

    move-result p0

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method private static native sendFile(ILio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpFreeBind(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpTransparent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoBusyPoll(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpCork(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpDeferAccept(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepCnt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIdle(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIntvl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpMd5Sig(IZ[BI[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNotSentLowAt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpQuickAck(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpUserTimeout(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method A0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpUserTimeout(II)V

    return-void
.end method

.method a0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getSoBusyPoll(I)I

    move-result v0

    return v0
.end method

.method b0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getTcpDeferAccept(I)I

    move-result v0

    return v0
.end method

.method c0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getTcpKeepCnt(I)I

    move-result v0

    return v0
.end method

.method d0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getTcpKeepIdle(I)I

    move-result v0

    return v0
.end method

.method e0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getTcpKeepIntvl(I)I

    move-result v0

    return v0
.end method

.method f0()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getTcpNotSentLowAt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method g0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->getTcpUserTimeout(I)I

    move-result v0

    return v0
.end method

.method h0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->isIpFreeBind(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->isIpTransparent(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->isTcpCork(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method k0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->isTcpQuickAck(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method o0(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;JJJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->b()V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->sendFile(ILio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-ltz p5, :cond_0

    return-wide p1

    :cond_0
    long-to-int p2, p1

    const-string p1, "sendfile"

    .line 3
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method p0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setIpFreeBind(II)V

    return-void
.end method

.method q0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setIpTransparent(II)V

    return-void
.end method

.method r0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setSoBusyPoll(II)V

    return-void
.end method

.method s0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpCork(II)V

    return-void
.end method

.method t0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpDeferAccept(II)V

    return-void
.end method

.method u0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpKeepCnt(II)V

    return-void
.end method

.method v0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpKeepIdle(II)V

    return-void
.end method

.method w0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpKeepIntvl(II)V

    return-void
.end method

.method x0(Ljava/net/InetAddress;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->f(Ljava/net/InetAddress;)Lio/grpc/netty/shaded/io/netty/channel/unix/c;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->d:Z

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->b()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/c;->g()I

    move-result p1

    invoke-static {v0, v1, v2, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpMd5Sig(IZ[BI[B)V

    return-void
.end method

.method y0(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    long-to-int p2, p1

    invoke-static {v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpNotSentLowAt(II)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tcpNotSentLowAt must be a uint32_t"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method z0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->setTcpQuickAck(II)V

    return-void
.end method
