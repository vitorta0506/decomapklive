.class public Lmg/e;
.super Lio/grpc/netty/shaded/io/netty/channel/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmg/e;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/j0;->a:Lio/grpc/netty/shaded/io/netty/channel/y0;

    invoke-direct {p0, p1, p2, p3, v0}, Lmg/e;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/grpc/netty/shaded/io/netty/channel/y0;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/grpc/netty/shaded/io/netty/channel/y0;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    .line 3
    invoke-static {}, Lug/c0;->a()Lug/b0;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/s0;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

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

    invoke-virtual {p0, p1, p2}, Lmg/e;->u(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object p1

    return-object p1
.end method

.method protected varargs u(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object v0, p2, v0

    move-object v4, v0

    check-cast v4, Ljava/nio/channels/spi/SelectorProvider;

    const/4 v0, 0x1

    .line 2
    aget-object v0, p2, v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/y0;

    const/4 v1, 0x2

    .line 3
    aget-object v1, p2, v1

    move-object v6, v1

    check-cast v6, Lug/b0;

    .line 4
    array-length v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 5
    aget-object v2, p2, v2

    check-cast v2, Lio/grpc/netty/shaded/io/netty/channel/n0;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 6
    aget-object p2, p2, v2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/n0;

    move-object v8, p2

    goto :goto_1

    :cond_1
    move-object v8, v3

    .line 7
    :goto_1
    new-instance p2, Lmg/d;

    .line 8
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y0;->a()Lio/grpc/netty/shaded/io/netty/channel/x0;

    move-result-object v5

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lmg/d;-><init>(Lmg/e;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/grpc/netty/shaded/io/netty/channel/x0;Lug/b0;Lio/grpc/netty/shaded/io/netty/channel/n0;Lio/grpc/netty/shaded/io/netty/channel/n0;)V

    return-object p2
.end method
