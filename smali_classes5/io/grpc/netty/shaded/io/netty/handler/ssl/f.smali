.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/f;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/s;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V
    .locals 6

    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/f$a;

    invoke-direct {v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f$a;-><init>()V

    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/f$b;

    invoke-direct {v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;ZLjava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->b(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->c(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->d(Ljavax/net/ssl/SSLEngine;)Ljava/util/function/BiFunction;

    move-result-object v0

    return-object v0
.end method

.method public setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->f(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V

    return-void
.end method
