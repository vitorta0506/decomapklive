.class final Lig/k;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;
.source "SourceFile"


# direct methods
.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic g()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 1

    invoke-virtual {p0}, Lig/k;->i()Lig/l;

    move-result-object v0

    return-object v0
.end method

.method protected i()Lig/l;
    .locals 2

    new-instance v0, Lig/m;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->h()I

    move-result v1

    invoke-direct {v0, v1}, Lig/m;-><init>(I)V

    return-object v0
.end method
