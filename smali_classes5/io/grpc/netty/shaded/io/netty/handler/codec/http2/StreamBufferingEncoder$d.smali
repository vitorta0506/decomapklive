.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:[B


# direct methods
.method constructor <init>(IJ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->a:I

    .line 3
    iput-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->b:J

    .line 4
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->c:[B

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->a:I

    return p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->b:J

    return-wide v0
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)[B
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->c:[B

    return-object p0
.end method
