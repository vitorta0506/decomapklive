.class Lig/y$i;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;
.source "SourceFile"

# interfaces
.implements Lig/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V

    return-void
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lig/y$i;->b:I

    .line 2
    invoke-super/range {p0 .. p9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    .line 1
    invoke-virtual {p3}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lig/y$i;->b:I

    .line 3
    :cond_0
    invoke-super/range {p0 .. p6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lig/y$i;->b:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lig/y$i;->b:I

    .line 2
    invoke-super/range {p0 .. p6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lig/y$i;->b:I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget v0, p0, Lig/y$i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lig/y$i;->b:I

    .line 2
    :cond_0
    invoke-super/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method
