.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->A(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;ILio/grpc/netty/shaded/io/netty/channel/m;II)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->c:I

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->e:I

    iput p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->f:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->c:I

    return v0
.end method

.method public d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a(Lkg/j;ILkg/k;Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->c:I

    iget v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->e:I

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object v6

    iget v7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;->f:I

    move-object v2, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V

    :cond_0
    return-void
.end method
