.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)V

    return-void
.end method

.method private n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Received non-SETTINGS as first frame."

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->a(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->X0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;)V

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V

    return-void
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I

    move-result p1

    return p1
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V

    return-void
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->g(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    return-void
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->y(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V

    return-void
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->n()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    return-void
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->w(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    return-void
.end method
