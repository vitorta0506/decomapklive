.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final b:Lkg/j;

.field final c:I

.field final d:Z

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    .line 2
    invoke-direct {p0, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->b:Lkg/j;

    .line 4
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->c:I

    .line 5
    iput-boolean p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->d:Z

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;->a(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->b:Lkg/j;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    return-void
.end method

.method b(Lio/grpc/netty/shaded/io/netty/channel/m;I)V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->b:Lkg/j;

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->c:I

    iget-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;->d:Z

    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method
