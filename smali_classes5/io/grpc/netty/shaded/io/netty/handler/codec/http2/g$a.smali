.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->t(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic e:I

.field final synthetic f:S

.field final synthetic g:Z

.field final synthetic h:I

.field final synthetic i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

.field final synthetic j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;ILio/grpc/netty/shaded/io/netty/channel/m;ISZILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->c:I

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->e:I

    iput-short p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->f:S

    iput-boolean p6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->g:Z

    iput p7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->h:I

    iput-object p8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->c:I

    return v0
.end method

.method public d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->a(Lkg/j;ILkg/k;Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->c:I

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    iget v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->e:I

    iget-short v7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->f:S

    iget-boolean v8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->g:Z

    iget v9, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->h:I

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->f()Z

    move-result v10

    move-object v2, p4

    .line 5
    invoke-interface/range {v2 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    :cond_0
    return-void
.end method
