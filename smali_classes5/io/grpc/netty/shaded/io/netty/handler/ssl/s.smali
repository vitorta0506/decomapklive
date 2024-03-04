.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;
    }
.end annotation


# instance fields
.field private final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V
    .locals 6

    .line 10
    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$a;

    invoke-direct {v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$a;-><init>()V

    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$b;

    invoke-direct {v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;ZLjava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;ZLjava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u;",
            "Z",
            "Ljava/util/function/BiConsumer<",
            "Ljavax/net/ssl/SSLEngine;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;-><init>(Ljavax/net/ssl/SSLEngine;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    .line 3
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    move-result-object p5

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p5, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;)V

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;

    .line 5
    invoke-interface {p4, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    move-result-object p3

    .line 7
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object p4

    invoke-interface {p3, p0, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    .line 8
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;

    .line 9
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->s(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object p1

    throw p1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;->b()V

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->a(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->b(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

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

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->c(Ljavax/net/ssl/SSLEngine;)Ljava/util/function/BiFunction;

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

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->e(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;->d(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method
