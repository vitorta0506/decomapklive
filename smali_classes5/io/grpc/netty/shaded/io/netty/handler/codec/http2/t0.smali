.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "writer"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    const-string p1, "logger"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    return-void
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    .line 2
    iget-object v3, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    return-object v1
.end method

.method public F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->H(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->J(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)V

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->close()V

    return-void
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;

    move-result-object v0

    return-object v0
.end method

.method public i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->L(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;II)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->I(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;->OUTBOUND:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method
