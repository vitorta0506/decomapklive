.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->a(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->I(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->G(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V

    return-void
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)V

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I

    move-result p1

    return p1
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->F(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->H(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V

    return-void
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->J(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->g(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    return-void
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->j(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V

    return-void
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->L(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;II)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    .line 2
    iget-object v4, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    return-void
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->INBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->m(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    return-void
.end method
