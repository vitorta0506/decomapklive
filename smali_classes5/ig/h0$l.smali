.class final Lig/h0$l;
.super Lig/h0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation


# instance fields
.field private final f:Ljava/net/SocketAddress;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p5}, Lig/h0$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    const-string p4, "address"

    .line 2
    invoke-static {p1, p4}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lig/h0$l;->f:Ljava/net/SocketAddress;

    .line 3
    iput-object p2, p0, Lig/h0$l;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lig/h0$l;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected w(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lig/h0$l;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lig/h0$l;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;

    iget-object v1, p0, Lig/h0$l;->f:Ljava/net/SocketAddress;

    iget-object v2, p0, Lig/h0$l;->g:Ljava/lang/String;

    iget-object v3, p0, Lig/h0$l;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;

    iget-object v1, p0, Lig/h0$l;->f:Ljava/net/SocketAddress;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;)V

    .line 4
    :goto_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method

.method protected y(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lqg/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lig/h0$k;->s(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lig/h0$k;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
