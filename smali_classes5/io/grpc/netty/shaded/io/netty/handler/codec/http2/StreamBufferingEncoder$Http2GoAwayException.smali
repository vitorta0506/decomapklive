.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Http2GoAwayException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1269b07e8abc61beL


# instance fields
.field private final goAwayDetail:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;


# direct methods
.method public constructor <init>(IJ[B)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;-><init>(IJ[B)V

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;)V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    return-void
.end method


# virtual methods
.method public debugData()[B
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public errorCode()J
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastStreamId()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)I

    move-result v0

    return v0
.end method
