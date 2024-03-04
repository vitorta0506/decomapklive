.class public final Lio/grpc/netty/shaded/io/netty/channel/unix/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/unix/f;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/OutOfMemoryError;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/RuntimeException;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/nio/channels/ClosedChannelException;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/io/IOException;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/net/PortUnreachableException;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lio/grpc/netty/shaded/io/netty/channel/unix/DatagramSocketAddress;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lio/grpc/netty/shaded/io/netty/channel/unix/DomainDatagramSocketAddress;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/net/InetSocketAddress;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b;->b(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/unix/f;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
