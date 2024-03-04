.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:Z

.field static final h:Z

.field static final i:Z

.field private static final j:I

.field static final k:Z

.field static final l:Z

.field public static final m:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:I

.field public static final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    .line 3
    const-class v3, Lio/grpc/netty/shaded/io/netty/channel/unix/PeerCredentials;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/nio/channels/FileChannel;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-class v7, Ljava/io/FileDescriptor;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    const-class v7, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    aput-object v7, v2, v3

    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/b;->b(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 4
    :try_start_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->offsetofEpollData()I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 6
    :catch_2
    :try_start_3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    :goto_2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/f;->a(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollin()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b:I

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollout()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    .line 10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollrdhup()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d:I

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollet()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollerr()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->f:I

    .line 13
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingSendmmsg()Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->g:Z

    .line 14
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingRecvmmsg()Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->h:Z

    .line 15
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->isSupportingUdpSegment()Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->i:Z

    .line 16
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->tcpFastopenMode()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->j:I

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_3
    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->k:Z

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 18
    :goto_4
    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->l:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 19
    :cond_4
    sput-boolean v4, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->m:Z

    .line 20
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->tcpMd5SigMaxKeyLen()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->n:I

    .line 21
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->kernelVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->o:Ljava/lang/String;

    return-void

    :goto_5
    if-eqz v1, :cond_5

    .line 22
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 23
    :catch_3
    :cond_5
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->registerUnix()I

    move-result v0

    return v0
.end method

.method public static b(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->g()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollBusyWait0(IJI)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "epoll_wait"

    .line 2
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method public static c(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollCtlAdd0(III)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p1, "epoll_ctl"

    .line 2
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method public static d(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollCtlDel0(II)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p1, "epoll_ctl"

    .line 2
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method public static e(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollCtlMod0(III)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p1, "epoll_ctl"

    .line 2
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method private static native epollBusyWait0(IJI)I
.end method

.method private static native epollCreate()I
.end method

.method private static native epollCtlAdd0(III)I
.end method

.method private static native epollCtlDel0(II)I
.end method

.method private static native epollCtlMod0(III)I
.end method

.method private static native epollWait(IJII)I
.end method

.method private static native epollWait0(IJIIII)I
.end method

.method private static native eventFd()I
.end method

.method public static native eventFdWrite(IJ)V
.end method

.method static f(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->g()I

    move-result p1

    invoke-static {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollWait(IJII)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "epoll_wait"

    .line 2
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method public static g(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->f(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)I

    move-result p0

    return p0

    :cond_0
    const v1, 0x7fffffff

    if-ne p3, v1, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move v7, p3

    move v8, p4

    .line 2
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v2

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->h()J

    move-result-wide v3

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->g()I

    move-result v5

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v6

    invoke-static/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollWait0(IJIIII)I

    move-result p0

    if-ltz p0, :cond_2

    return p0

    :cond_2
    const-string p1, "epoll_wait"

    .line 3
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method static h(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->f(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)I

    move-result p0

    return p0
.end method

.method private static i()V
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "netty_transport_native_epoll"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    const-class v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->f(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    :try_start_1
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/p;->f(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 7
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to load {}"

    invoke-interface {v0, v2, v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 8
    invoke-static {v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    throw v3

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only supported on Linux"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native isSupportingUdpSegment()Z
.end method

.method public static j()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->epollCreate()I

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static k()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->eventFd()I

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static l()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->timerFd()I

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static m(IJIJJ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p7}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->splice0(IJIJJ)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "splice"

    .line 2
    invoke-static {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static native offsetofEpollData()I
.end method

.method private static native registerUnix()I
.end method

.method public static native sizeofEpollEvent()I
.end method

.method private static native splice0(IJIJJ)I
.end method

.method private static native timerFd()I
.end method
