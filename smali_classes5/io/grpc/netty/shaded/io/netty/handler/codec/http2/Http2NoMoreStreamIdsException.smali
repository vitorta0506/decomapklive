.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2NoMoreStreamIdsException;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
.source "SourceFile"


# static fields
.field private static final ERROR_MESSAGE:Ljava/lang/String; = "No more streams can be created on this connection"

.field private static final serialVersionUID:J = -0x6ba3afb1c2d3af26L


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->GRACEFUL_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v2, "No more streams can be created on this connection"

    invoke-direct {p0, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->GRACEFUL_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v2, "No more streams can be created on this connection"

    invoke-direct {p0, v0, v2, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method