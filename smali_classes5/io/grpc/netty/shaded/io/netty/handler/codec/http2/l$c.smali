.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$c;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$c;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c(I)V

    .line 2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->i(I)Z

    return-void
.end method

.method public i(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
