.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public e(IJLkg/j;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    .line 2
    invoke-virtual {p4}, Lkg/j;->Q1()I

    move-result v2

    invoke-virtual {p4}, Lkg/j;->P1()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p4, v2, v3, v4}, Lkg/n;->t(Lkg/j;IIZ)[B

    move-result-object p4

    invoke-direct {v1, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;-><init>(IJ[B)V

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    move-result-object p2

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;)V

    return-void
.end method
