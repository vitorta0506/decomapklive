.class public final Lig/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 7

    new-instance v6, Lig/h0$b;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lig/h0$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/ChannelLogger;)V

    return-object v6
.end method

.method public static b(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    new-instance v0, Lig/h0$e;

    invoke-direct {v0, p0}, Lig/h0$e;-><init>(Lig/j;)V

    return-object v0
.end method

.method public static c(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    new-instance v0, Lig/h0$n;

    invoke-direct {v0, p0, p1}, Lig/h0$n;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    return-object v0
.end method
