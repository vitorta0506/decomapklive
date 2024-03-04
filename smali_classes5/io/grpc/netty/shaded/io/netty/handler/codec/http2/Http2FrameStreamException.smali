.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameStreamException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3d2978797a1dc044L


# instance fields
.field private final error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

.field private final stream:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l0;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "stream"

    .line 2
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameStreamException;->stream:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l0;

    const-string p1, "error"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameStreamException;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    return-void
.end method


# virtual methods
.method public error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameStreamException;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method

.method public stream()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameStreamException;->stream:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l0;

    return-object v0
.end method
