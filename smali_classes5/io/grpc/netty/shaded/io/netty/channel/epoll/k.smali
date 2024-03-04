.class final Lio/grpc/netty/shaded/io/netty/channel/epoll/k;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/v0$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;-><init>(Lio/grpc/netty/shaded/io/netty/channel/v0$b;)V

    return-void
.end method


# virtual methods
.method o()Z
    .locals 2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->j()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
