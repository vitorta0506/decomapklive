.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$a;)V

    const-string v0, "applicationNegotiator"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    move-result-object v0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    move-result-object v0

    const-string v1, "protocolListener"

    .line 4
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b$a;

    invoke-direct {v1, p0, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;)V

    invoke-static {p1, v1}, Lorg/eclipse/jetty/alpn/ALPN;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/alpn/ALPN$Provider;)V

    return-void
.end method


# virtual methods
.method public closeInbound()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/alpn/ALPN;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->closeInbound()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->closeInbound()V

    .line 3
    throw v0
.end method

.method public closeOutbound()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/alpn/ALPN;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->closeOutbound()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->closeOutbound()V

    .line 3
    throw v0
.end method
