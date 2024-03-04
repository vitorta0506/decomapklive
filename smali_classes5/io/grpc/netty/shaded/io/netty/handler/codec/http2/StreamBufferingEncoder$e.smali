.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

.field final c:I

.field final d:S

.field final e:Z

.field final f:I

.field final g:Z

.field final synthetic h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    .line 2
    invoke-direct {p0, p8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    .line 4
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->c:I

    .line 5
    iput-short p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->d:S

    .line 6
    iput-boolean p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->e:Z

    .line 7
    iput p6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->f:I

    .line 8
    iput-boolean p7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->g:Z

    return-void
.end method


# virtual methods
.method b(Lio/grpc/netty/shaded/io/netty/channel/m;I)V
    .locals 10

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->c:I

    iget-short v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->d:S

    iget-boolean v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->e:Z

    iget v7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->f:I

    iget-boolean v8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;->g:Z

    iget-object v9, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method
