.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "reader"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    const-string p1, "logger"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    return-object p0
.end method


# virtual methods
.method public T0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;

    invoke-direct {v1, p0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->close()V

    return-void
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;

    move-result-object v0

    return-object v0
.end method
