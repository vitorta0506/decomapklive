.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketHandshakeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final request:Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;-><init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v1

    .line 4
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;->request:Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;->request:Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    :goto_0
    return-void
.end method


# virtual methods
.method public request()Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;->request:Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    return-object v0
.end method
