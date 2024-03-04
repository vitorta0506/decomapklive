.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/i;
.super Lio/grpc/netty/shaded/io/netty/channel/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/i;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/i;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/i;-><init>(ILjava/util/concurrent/ThreadFactory;I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/j0;->a:Lio/grpc/netty/shaded/io/netty/channel/y0;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/i;-><init>(ILjava/util/concurrent/ThreadFactory;ILio/grpc/netty/shaded/io/netty/channel/y0;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;ILio/grpc/netty/shaded/io/netty/channel/y0;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    invoke-static {}, Lug/c0;->a()Lug/b0;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/s0;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Llg/a;->a()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic m(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lug/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/i;->u(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object p1

    return-object p1
.end method

.method protected varargs u(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 2
    aget-object v1, p2, v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/y0;

    const/4 v2, 0x2

    .line 3
    aget-object v2, p2, v2

    move-object v8, v2

    check-cast v8, Lug/b0;

    .line 4
    array-length v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    .line 5
    aget-object v3, p2, v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/n0;

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object v9, v4

    :goto_0
    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 6
    aget-object p2, p2, v3

    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/n0;

    move-object v10, p2

    goto :goto_1

    :cond_1
    move-object v10, v4

    .line 7
    :goto_1
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 8
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/y0;->a()Lio/grpc/netty/shaded/io/netty/channel/x0;

    move-result-object v7

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m0;Ljava/util/concurrent/Executor;ILio/grpc/netty/shaded/io/netty/channel/x0;Lug/b0;Lio/grpc/netty/shaded/io/netty/channel/n0;Lio/grpc/netty/shaded/io/netty/channel/n0;)V

    return-object p2
.end method
