.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;
.source "SourceFile"


# static fields
.field private static c:Z


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;-><init>(Ljavax/net/ssl/SSLEngine;)V

    const-string v0, "applicationNegotiator"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    move-result-object p3

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    move-result-object p3

    const-string v0, "protocolListener"

    .line 4
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0$a;

    invoke-direct {v0, p0, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V

    invoke-static {p1, v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/npn/NextProtoNego$Provider;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    move-result-object p3

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 7
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    move-result-object p2

    const-string p3, "protocolSelector"

    .line 8
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    .line 9
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0$b;

    invoke-direct {p3, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;)V

    invoke-static {p1, p3}, Lorg/eclipse/jetty/npn/NextProtoNego;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/npn/NextProtoNego$Provider;)V

    :goto_0
    return-void
.end method

.method static d()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;->e()V

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;->c:Z

    return v0
.end method

.method private static e()V
    .locals 3

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "sun.security.ssl.NextProtoNegoExtension"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 3
    sput-boolean v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/npn/NextProtoNego$Provider;

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->closeInbound()V

    return-void
.end method

.method public closeOutbound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/npn/NextProtoNego$Provider;

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->closeOutbound()V

    return-void
.end method
